﻿using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using AspNetLearning.DAL;
using Microsoft.Ajax.Utilities;

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
            return this._context.users
                .Include(u=>u.contest_participations)
                .ToList();
        }

        public void UpdateUser(users user)
        {

        }

        public IEnumerable<contest_participations> GetContestsByUserId(int userId)
        {
            return this._context.contest_participations
                .Include(cp => cp.contests)
                .Where(t => t.user_id == userId)
                .ToList();
            
        }

        public IEnumerable<UserBO> GetNonParticipatingUsersById(int contestId)
        {
            return new List<UserBO>();
        }
    }
}