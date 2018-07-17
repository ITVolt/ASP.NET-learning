using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetLearning.UI
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void OnLoggingIn(object sender, LoginCancelEventArgs e)
        {
            if (!string.IsNullOrEmpty(LoginForm.UserName))
            {
                Session.Add("User", LoginForm.UserName);
                Session.Add("Authenticated", true);
            }
        }
    }
}