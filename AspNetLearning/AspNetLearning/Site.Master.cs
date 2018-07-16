using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetLearning
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ClockTimer_Tick(object sender, EventArgs e)
        {
            ClockLabel.Text = System.DateTime.Now.ToString("T");
        }
    }
}