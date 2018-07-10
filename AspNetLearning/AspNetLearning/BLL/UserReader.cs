using AspNetLearning.BLL.Repositories;
using AspNetLearning.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebGrease.Css.Extensions;

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

        public UserBO GetUserById(int userId)
        {
            using (var context = new aspnet_learningEntities())
            {
                var repository = new UserRepository(context);
                var DALUser = repository.GetUserById(userId);
                return new UserBO(DALUser.id, DALUser.alias, DALUser.first_name, DALUser.last_name, DALUser.registration_date);
            }
        }

        public IEnumerable<UserBO> GetAllUsers()
        {
            using (var context = new aspnet_learningEntities())
            {
                var repository = new UserRepository(context);
                var rawUsers = repository.GetAllUsers();
                return rawUsers.Select(u => new UserBO(u.id, u.alias, u.first_name, u.last_name, u.registration_date));
            }
        }
    }
}