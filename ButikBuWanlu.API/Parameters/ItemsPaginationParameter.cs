using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ButikBuWanlu.API.Parameters
{
    public class ItemsPaginationParameter : PaginationParams
    {
        public ItemsPaginationParameter()
        {
            OrderBy = "Id";
        }
    }
}
