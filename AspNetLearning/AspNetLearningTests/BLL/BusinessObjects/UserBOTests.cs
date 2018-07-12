using NUnit.Framework;
using AspNetLearning.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AspNetLearning.BLL.Validation;
using Castle.Components.DictionaryAdapter.Xml;

namespace AspNetLearning.BLL.Tests
{
    [TestFixture()]
    public class UserBOTests
    {
        [Test()]
        public void TestUserBODataAnnotation()
        {
            UserBO user = new UserBO {Alias = "Hi", FirstName = "Aligheri", LastName = "By", Id = 0};
            var res = ValidationHelper<UserBO>.TryValidate(user);
            Assert.IsFalse(res.IsValid);
        }
    }
}