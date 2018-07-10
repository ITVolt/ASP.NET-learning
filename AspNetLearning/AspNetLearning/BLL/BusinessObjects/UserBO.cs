using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.AccessControl;
using System.Web;

namespace AspNetLearning.BLL
{
    public class UserBO
    {
        public int Id { get; set; }
        public string Alias { get; set;}
        public string FirstName { get; set; }
        public string LastName { get; set;}
        public DateTime RegistrationDate { get; set; }

        public UserBO()
        {
            
        }

        public UserBO(int id, string alias, string firstName, string lastName, DateTime registrationDate)
        {
            this.Id = id;
            this.Alias = alias;
            this.FirstName = firstName;
            this.LastName = lastName;
            this.RegistrationDate = registrationDate;
        }
    }
}