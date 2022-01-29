using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ButikBuWanlu.API.DTO
{
    public class PopularItemsDTO
    {
        public int ItemId { get; set; }
        public string ItemName { get; set; }
        public string City { get; set; }
        public int CountOfTransactions { get; set; }
    }
}
