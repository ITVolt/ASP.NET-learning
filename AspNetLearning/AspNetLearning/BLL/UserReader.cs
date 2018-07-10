using AspNetLearning.BLL.Repositories;
using AspNetLearning.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AspNetLearning.BLL
{
    public class UserReader
    {
        
        public string GetAliasByUser( int userId)
        {
            using (var context = new aspnet_learningEntities())
            {
                var repository = new UserRepository(context);
                return repository.GetUserById(userId)?.alias;
            }

        }

    }
}