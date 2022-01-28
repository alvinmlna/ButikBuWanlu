using System.Collections.Generic;

#nullable disable

namespace ButikBuWanlu.Domain.Entities
{
    public partial class Item
    {
        public Item()
        {
            Transactions = new HashSet<Transaction>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public int Price { get; set; }

        public virtual ICollection<Transaction> Transactions { get; set; }
    }
}
