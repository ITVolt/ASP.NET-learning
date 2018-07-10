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

        public List<UserBO> getUsers()
        {
            List<UserBO> users = new List<UserBO>
            {
                new UserBO {Alias = "Slim Jim", FirstName = "Jimmy", LastName = "Tim", RegistrationDate = DateTime.Now},
                new UserBO {Alias = "Slim Jim2", FirstName = "Jimmy2", LastName = "Tim2", RegistrationDate = DateTime.Now}
            };
            return users;
        }
    }
}