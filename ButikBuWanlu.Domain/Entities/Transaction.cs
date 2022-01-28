using System;

#nullable disable

namespace ButikBuWanlu.Domain.Entities
{
    public partial class Transaction
    {
        public int Id { get; set; }
        public int CustomerId { get; set; }
        public int ItemId { get; set; }
        public int StoreId { get; set; }
        public int Quantity { get; set; }
        public int TotalPrice { get; set; }
        public DateTime DateTransaction { get; set; }

        public virtual Customer Customer { get; set; }
        public virtual Item Item { get; set; }
        public virtual Store Store { get; set; }
    }
}
