using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AspNetLearning.BLL;
using AspNetLearning.BLL.BusinessObjects;

namespace AspNetLearning.UI
{
    public partial class ParticipationRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var idParam = Request.QueryString["id"];
            var id = 0;

            try
            {
                id = int.Parse(idParam);
            }
            catch (Exception)
            {
                // ignored
            }

            Session["contestId"] = id;
            ViewState.Add("contestId", id);
        }

        public ICollection<UserBO> GetUserListData()
        {
            var contestId = (int) Session["contestId"];
            return contestId <= 0
                ? new List<UserBO>()
                : new UserReader().GetAllUsers()
                    .Where(u => !u.Participations.Any(p => (p.Contest.Id == contestId)))
                    .ToList();
        }

        public void UserSelected(object sender, EventArgs eventArgs)
        {
            var listView = sender as ListView;
            var user = new UserBO {Id = (int) listView.SelectedValue};
            var contest = new ContestBO {Id = (int) Session["contestId"]};

            ParticipationFormView.DataSource =
                new List<ContestParticipantBO>() {new ContestParticipantBO(null, null, user, contest)};
            ParticipationFormView.DataBind();
        }

        public void OnSaveParticipationClicked(object sender, EventArgs args)
        {
            var scoreTextBox = ParticipationFormView.FindControl("ScoreTextBox") as TextBox;
            var placementTextBox = ParticipationFormView.FindControl("PlacementTextBox") as TextBox;

            // ParticipationFormView.UpdateItem(true);
            var participant = new ContestParticipantBO(
                score: int.Parse(scoreTextBox.Text),
                placement: int.Parse(placementTextBox.Text),
                user: new UserBO {Id = (int) UserListView.SelectedValue},
                contest: new ContestBO {Id = (int) Session["contestId"]}
            );
            var participantList = ParticipationFormView.DataItem as List<ContestParticipantBO>;
            new ContestWriter().AddParticipation(participant);
        }
    }
}