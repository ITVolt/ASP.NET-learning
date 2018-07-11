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

        public void DeleteContestById(int contest)
        {
            new ContestWriter().DeleteContestById(contest);
        }
    }
}