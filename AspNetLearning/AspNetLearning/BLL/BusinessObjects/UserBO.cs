using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Security.AccessControl;
using System.Web;

namespace AspNetLearning.BLL
{
    public class UserBO
    {
        [Editable(false)] public int Id { get; set; }
        [Required, StringLength(255), UIHint("Insert a cool alias")] public string Alias { get; set; }
        [StringLength(255)] public string FirstName { get; set; }
        [StringLength(255)] public string LastName { get; set; }
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