using System.Collections.Generic;
using System.Text.Json.Serialization;

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

        [JsonIgnore]
        public virtual ICollection<Customer> Customers { get; set; }
        [JsonIgnore]
        public virtual ICollection<Transaction> Transactions { get; set; }
    }
}
