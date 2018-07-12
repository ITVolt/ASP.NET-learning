using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace AspNetLearning.BLL.Validation
{
    public class ValidationHelper<T>
    {
        public static ValidationResults TryValidate(T t)
        {
            var context = new ValidationContext(t, null, null);
            var results = new ValidationResults();
            results.IsValid = Validator.TryValidateObject(t, context, results, validateAllProperties: true);
            return results;
        }
    }

    public class ValidationResults : List<ValidationResult>
    {
        public bool IsValid {
            get;
            set;
        }
    }
}