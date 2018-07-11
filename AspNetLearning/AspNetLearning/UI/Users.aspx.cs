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


        private static void PopulateTable(DataTable userTable)
        {
            var users = GetUsers();
   

            foreach (var user in users)
            {
                // Removes tags from username 
                var saferAlias = Regex.Replace(user.Alias, @"<[^>]*>", String.Empty);
                var aTag = string.Format("<a href=\"UserDetails?id={1}\">{0}</a>", saferAlias, user.Id);
                userTable.Rows.Add(aTag, user.FirstName, user.LastName, user.RegistrationDate);


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