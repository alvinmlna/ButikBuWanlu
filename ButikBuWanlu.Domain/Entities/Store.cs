using System;
using System.Collections.Generic;

#nullable disable

namespace ButikBuWanlu.Domain.Entities
{
    public partial class Store
    {
        public Store()
        {
            Transactions = new HashSet<Transaction>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public string City { get; set; }

        public virtual ICollection<Transaction> Transactions { get; set; }
    }
}
