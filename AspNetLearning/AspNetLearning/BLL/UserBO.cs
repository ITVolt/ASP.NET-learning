﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.AccessControl;
using System.Web;

namespace AspNetLearning.BLL
{
    public class UserBO
    {
        public string Alias { get; set;}
        public string FirstName { get; set; }
        public string LastName { get; set;}
        public DateTime RegistrationDate { get; set; }

    }
}