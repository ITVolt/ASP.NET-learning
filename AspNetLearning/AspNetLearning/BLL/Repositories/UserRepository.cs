using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AspNetLearning.DAL;

namespace AspNetLearning.BLL.Repositories
{
    public class UserRepository
    {
        private readonly aspnet_learningEntities _context;

        public UserRepository(aspnet_learningEntities context)
        {
            this._context = context;
        }

        public users GetUserById(int id)
        {
            return this._context.users.Find(id);
        }

        public IEnumerable<users> GetAllUsers()
        {
            return this._context.users.ToList();
        }

        public void UpdateUser(users user)
        {

        }
    }
}