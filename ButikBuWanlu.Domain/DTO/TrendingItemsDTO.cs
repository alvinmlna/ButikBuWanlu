namespace ButikBuWanlu.Domain.DTO
{
    public class TrendingItemsDTO
    {
        public int ItemId { get; set; }
        public int Year { get; set; }
        public int Month { get; set; }
        public string ItemName { get; set; }
        public int TotalSales { get; set; }
        public int PreviousSales { get; set; }
        public int SummarySales { get; set; }
    }
}
