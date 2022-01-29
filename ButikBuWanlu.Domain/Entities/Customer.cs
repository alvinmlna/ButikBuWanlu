using System;
using System.Collections.Generic;
using System.Text.Json.Serialization;

#nullable disable

namespace ButikBuWanlu.Domain.Entities
{
    public partial class Customer
    {
        public Customer()
        {
            Transactions = new HashSet<Transaction>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public DateTime DateRegister { get; set; }
        public int StoreId { get; set; }

        public virtual Store Store { get; set; }

        [JsonIgnore]
        public virtual ICollection<Transaction> Transactions { get; set; }
    }
}
