using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations.Model;
using System.Linq;
using System.Web;
using AspNetLearning.BLL.Repositories;
using AspNetLearning.DAL;

namespace AspNetLearning.BLL
{
    public class UserWriter
    {
        public void UpdateUser(UserBO user)
        {
            using (var context = new aspnet_learningEntities())
            {
                var rawUser = context.users.SingleOrDefault(u => u.id == user.Id);
                if (rawUser != null)
                {
                    rawUser.alias = user.Alias;
                    rawUser.first_name = user.FirstName;
                    rawUser.last_name = user.LastName;
                    context.SaveChanges();
                }
            }
        }
        internal void DeleteUser(int id)
        {
            using (var context = new aspnet_learningEntities())
            {
                var rawUser = context.users.SingleOrDefault(u => u.id == id);
                if (rawUser != null)
                {
                    context.users.Remove(rawUser);
                    context.SaveChanges();
                }
            }
        }
    }
}