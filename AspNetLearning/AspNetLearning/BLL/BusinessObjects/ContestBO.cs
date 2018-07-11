using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AspNetLearning.BLL.BusinessObjects
{
    public class ContestBO
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string FoodItem { get; set; }
        public string Location { get; set; }
        public DateTime Date { get; set; }

        public ContestBO(){}

        public ContestBO(int id, string name, string foodItem, string location, DateTime date)
        {
            this.Id = id;
            this.Name = name;
            this.FoodItem = foodItem;
            this.Location = location;
            this.Date = date;
        }
    }
}