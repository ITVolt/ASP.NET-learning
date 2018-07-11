using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AspNetLearning.BLL.BusinessObjects;
using AspNetLearning.BLL.Repositories;
using AspNetLearning.DAL;
using Microsoft.Ajax.Utilities;

namespace AspNetLearning.BLL
{
    public class ContestReader
    {
        public IEnumerable<ContestBO> GetAllContests()
        {
            using (var context = new aspnet_learningEntities())
            {

                var repository = new ContestRepository(context);
                var contests = repository.GetAllContests();

                return contests.Select(c => new ContestBO(c.id, c.name, c.food_item, c.location, c.date ?? new DateTime()));
            }
        }

        public ContestBO GetContestById(int contestId)
        {
            using (var context = new aspnet_learningEntities())
            {
                var repository = new ContestRepository(context);
                var DALContest = repository.GetContestById(contestId);
                var contest = DALContest != null ?
                    new ContestBO(DALContest.id, DALContest.name, DALContest.food_item, DALContest.location, DALContest.date ?? new DateTime()) :
                    null;
                return contest;
            }
        }
    }
}