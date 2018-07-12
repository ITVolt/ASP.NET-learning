using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AspNetLearning.BLL;

namespace AspNetLearning.UI
{
    public partial class Users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           InitiateGridview();

        }

        private void InitiateGridview()
        {
            var userTable = SetUpDataTable();
            PopulateTable(userTable);

            GridView1.DataSource = userTable;
            GridView1.DataBind();
            
        }

        public void GridViewRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                HyperLink hlControl = new HyperLink();
                var split = e.Row.Cells[0].Text.Split(new char[]{ ':' }, 2);
                hlControl.NavigateUrl = "UserDetails?id=" + split[0];
                hlControl.Text = split[1];
                e.Row.Cells[0].Controls.Add(hlControl);
            }

        }


        private static void PopulateTable(DataTable userTable)
        {
            var users = GetUsers();
   

            foreach (var user in users)
            {
                // Removes tags from username 
                userTable.Rows.Add(user.Id + ":" + user.Alias, user.FirstName, user.LastName, user.RegistrationDate);


            }
        }

        private static IEnumerable<UserBO> GetUsers()
        {
            var userReader = new UserReader();
            return userReader.GetAllUsers();
        }

        private static DataTable SetUpDataTable()
        {
            DataTable userTable = new DataTable();
            
            var column = new DataColumn("Alias");
            var column2 = new DataColumn("First Name");
            var column3 = new DataColumn("Last Name");
            var column4 = new DataColumn("Registration Date");

            userTable.Columns.AddRange(new DataColumn[] { column, column2, column3, column4});

            return userTable;
        }
    }
}