using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AspNetLearning.DAL;
using AspNetLearning.UI;

namespace AspNetLearning.BLL.Repositories
{
    public class ContestRepository
    {
        private readonly aspnet_learningEntities _context;

        public ContestRepository(aspnet_learningEntities context)
        {
            this._context = context;
        }

        public List<contests> GetAllContests()
        {
            return this._context.contests.Include("contest_participations").ToList();
        }

        public contests GetContestById(int id)
        {
            return this._context.contests.Find(id);
        }
    }
}