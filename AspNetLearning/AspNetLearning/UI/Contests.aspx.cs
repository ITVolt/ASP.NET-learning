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
            _dt.Columns.Add("Name"/*, typeof(string[])*/);
            _dt.Columns.Add("FoodType");
            _dt.Columns.Add("Location");
            _dt.Columns.Add("Date");
        }

        private void PopulateDataTable()
        {
            var contests = GetAllContests();
            foreach (var contest in contests)
            {
                //var row = _dt.NewRow();
                //row.SetField("name", new string[] { contest.Id.ToString(), contest.Name});
                //row.SetField("FoodType", contest.FoodItem);
                //row.SetField("Location", contest.Location);
                //row.SetField("Date", contest.Date.ToString("yyyy MMMM dd"));
                _dt.Rows.Add(contest.Id + "%" + contest.Name, contest.FoodItem, contest.Location, contest.Date.ToString("yyyy MMMM dd"));

                //_dt.Rows.Add(row);
            }
            ContestGridView.DataSource = _dt;
            ContestGridView.DataBind();
        }

        private IEnumerable<ContestBO> GetAllContests()
        {
            var reader = new ContestReader();
            return reader.GetAllContests();

        }

    }
}