using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ButikBuWanlu.API.Parameters
{
    public class CustomersPaginationParameter : PaginationParams
    {
        public CustomersPaginationParameter()
        {
            OrderBy = "Id";
            Where = "";
        }
    }
}
