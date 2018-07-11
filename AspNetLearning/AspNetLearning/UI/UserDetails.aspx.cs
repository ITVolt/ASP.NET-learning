using AspNetLearning.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetLearning.UI
{
    public partial class UserDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void UserDataSource_Selecting(object sender, ObjectDataSourceSelectingEventArgs e)
        {

        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }
    }
    public class UserDataProvider{
        public UserBO GetUserById(int userId)
        {
            return new UserReader().GetUserById(userId);
        }

        public void UpdateUser(UserBO user)
        {
            new UserWriter().UpdateUser(user);
        }

        public void DeleteUser(UserBO user)
        {
            new UserWriter().DeleteUser(user.Id);
        }
    }
}