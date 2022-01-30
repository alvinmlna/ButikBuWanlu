using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ButikBuWanlu.Service.DTO
{
    public class TrendingItemsDTO
    {
        public int ItemId { get; set; }
        public int Year { get; set; }
        public int Month { get; set; }
        public int TotalSales { get; set; }
        public int PreviousSales { get; set; }
    }
}
