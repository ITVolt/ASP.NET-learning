using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AspNetLearning.DAL;

namespace AspNetLearning.BLL.Repositories
{
    public class UserRepository
    {
        private aspnet_learningEntities context;

        public UserRepository(aspnet_learningEntities context)
        {
            this.context = context;
        }

        public users GetUserById(int id)
        {
            return this.context.users.Find(id);
        }
    }
}