using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AspNetLearning.BLL.BusinessObjects;
using AspNetLearning.DAL;
using Microsoft.Ajax.Utilities;

namespace AspNetLearning.BLL
{
    public class ContestWriter
    {
        public void UpdateContest(ContestBO contest)
        {
            using (var context = new aspnet_learningEntities())
            {
                var rawCon = context.contests.SingleOrDefault(c => c.id == contest.Id);
                if (rawCon == null) throw new NullReferenceException("The contest you tried to update does not exist");

                rawCon.name = contest.Name;
                rawCon.food_item = contest.FoodItem;
                rawCon.location = contest.Location;
                rawCon.date = contest.Date;

                context.SaveChanges();
            }
        }

        public void DeleteContestById(int contestId)
        {
            using (var context = new aspnet_learningEntities())
            {
                var rawCp = context.contest_participations.Where(cp => cp.contest_id == contestId);
                var rawCon = context.contests.SingleOrDefault(c => c.id == contestId);
                if (rawCon == null) throw new NullReferenceException("The contest you tried to delete does not exist");

                context.contest_participations.RemoveRange(rawCp);
                context.contests.Remove(rawCon);

                context.SaveChanges();
            }
        }

        public void AddContest(ContestBO contest)
        {
            using (var context = new aspnet_learningEntities())
            {
                var rawCon = new contests
                {
                    name = contest.Name,
                    food_item = contest.FoodItem,
                    location = contest.Location,
                    date = contest.Date
                };

                context.contests.Add(rawCon);

                context.SaveChanges();
            }
        }

        public void NewContest(ContestBO contest)
        {
            using (var context = new aspnet_learningEntities())
            {
                var rawContest = new contests() { name = contest.Name, food_item = contest.FoodItem, location = contest.Location, date = contest.Date };
                context.contests.Add(rawContest);
                context.SaveChanges();
            }
        }
    }
}