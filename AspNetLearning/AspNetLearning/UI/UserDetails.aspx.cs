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


        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public UserBO GetUserDetails(int? userId)
        {
          return new UserBO { FirstName = "First", LastName = "Lastson", Alias = "Mr X", RegistrationDate = new DateTime(1, 1, 1) };
        }
    }
}