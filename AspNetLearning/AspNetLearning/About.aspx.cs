using AspNetLearning.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetLearning
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UserLabel.Text = GetAlias();

        }

        private string GetAlias()
        {

            var reader = new UserReader();
            return reader.GetAliasByUser(1);
        }

    }
}