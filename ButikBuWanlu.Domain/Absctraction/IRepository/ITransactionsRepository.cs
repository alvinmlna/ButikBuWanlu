using ButikBuWanlu.Domain.DTO;
using ButikBuWanlu.Domain.Entities;
using System.Collections.Generic;

namespace ButikBuWanlu.Domain.Absctraction.IRepository
{
    public interface ITransactionsRepository : IRepository<Transaction>
    {
        List<TrendingItemsDTO> TrendingItems(string city);
    }
}
