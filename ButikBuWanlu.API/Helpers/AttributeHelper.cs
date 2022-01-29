using System;
using System.Linq;
using System.Reflection;

namespace ButikBuWanlu.API.Helpers
{
    public class AttributeHelper
    {
        public static bool CheckOrder<T>(string param)
        {
            param = param.Replace("desc", "");
            param = param.Replace("asc", "");

            var propertyInfos = typeof(T).GetProperties(BindingFlags.Public | BindingFlags.Instance);
            var objectProperty = propertyInfos.FirstOrDefault(pi => pi.Name.Equals(param.Trim(), StringComparison.InvariantCultureIgnoreCase));

            if (objectProperty == null)
                return false;

            return true;
        }

        public static bool CheckWhereCondition<T>(string param)
        {
            param = GenericHelpers.GetUntilOrEmpty(param);

            var propertyInfos = typeof(T).GetProperties(BindingFlags.Public | BindingFlags.Instance);
            var objectProperty = propertyInfos.FirstOrDefault(pi => pi.Name.Equals(param.Trim(), StringComparison.InvariantCultureIgnoreCase));

            if (objectProperty == null)
                return false;

            return true;
        }
    }
}
