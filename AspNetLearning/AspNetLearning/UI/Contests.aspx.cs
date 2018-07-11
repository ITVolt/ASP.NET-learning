using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AspNetLearning.BLL;
using AspNetLearning.BLL.BusinessObjects;

namespace AspNetLearning.UI
{
    public partial class Contests : System.Web.UI.Page
    {
        private DataTable _dt;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                CreateDataTable();
                PopulateDataTable();
            }
            else
            {
                _dt = (DataTable)ViewState["DataTable"];
            }
            ViewState["DataTable"] = _dt;

        }

        private void CreateDataTable()
        {
            _dt = new DataTable();
            _dt.Columns.Add("Name");
            _dt.Columns.Add("FoodType");
            _dt.Columns.Add("Location");
            _dt.Columns.Add("Date");
            _dt.Columns.Add("NumberOfParticipants");
        }

        private void PopulateDataTable()
        {
            var contests = GetAllContests();
            foreach (var contest in contests)
            {
                _dt.Rows.Add(
                    BuildNamedLinkToContest(contest),
                    contest.FoodItem,
                    contest.Location,
                    contest.Date.ToString("yyyy MMMM dd"),
                    contest.NumberOfParticipants);
            }
            ContestGridView.DataSource = _dt;
            ContestGridView.DataBind();
        }

        private IEnumerable<ContestBO> GetAllContests()
        {
            var reader = new ContestReader();
            return reader.GetAllContests();

        }

        private string BuildNamedLinkToContest(ContestBO contest)
        {
            return $"<a href=\"ContestDetails?id={contest.Id}\">{contest.Name}</a>";
        }
    }
}