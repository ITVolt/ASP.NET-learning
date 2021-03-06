﻿using AspNetLearning.BLL;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using AspNetLearning.BLL.BusinessObjects;

namespace AspNetLearning.UI
{
    public partial class UserDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Request.Url.Query.Equals("?New"))
            {
                FormView1.ChangeMode(FormViewMode.Insert);
            }
        }

        protected void UserDataSource_Selecting(object sender, ObjectDataSourceSelectingEventArgs e)
        {

        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        protected void GoToUsers(object sender, EventArgs e)
        {
           Response.Redirect("~/UI/Users");
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

        public void InsertUser(UserBO user)
        {
            new UserWriter().NewUser(user);
        }

        public ICollection<ContestParticipantBO> GetContestsParticipationsById(int userId)
        {
            return new List<ContestParticipantBO>(new UserReader().GetContestsByUserId(userId));
        }
    }
}