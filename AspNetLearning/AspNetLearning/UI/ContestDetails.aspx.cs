using AspNetLearning.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using AspNetLearning.BLL.BusinessObjects;

namespace AspNetLearning.UI
{
    public partial class ContestDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Request.Url.Query.Equals("?New"))
            {
                FormView2.ChangeMode(FormViewMode.Insert);
            }
        }

        protected void GoToContests(object sender, EventArgs e)
        {
            Response.Redirect("~/UI/Contests");
        }
    }

    public class ContestDataProvider
    {
        public ContestBO GetContestById(int contestId)
        {
            return new ContestReader().GetContestById(contestId);
        }

        public void UpdateContest(ContestBO contest)
        {
            new ContestWriter().UpdateContest(contest);
        }

        public void InsertContest(ContestBO contest)
        {
            new ContestWriter().NewContest(contest);
        }

        public void DeleteContestById(ContestBO contest)
        {
            new ContestWriter().DeleteContestById(contest.Id);
        }

        public ICollection<ContestParticipantBO> GetContestParticipantsById(int contestId)
        {
            return new List<ContestParticipantBO>(new ContestReader().GetParticipantsFromContestById(contestId));
        }
    }
}