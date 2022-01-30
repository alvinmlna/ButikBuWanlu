using ButikBuWanlu.Domain.Absctraction.IRepository;
using ButikBuWanlu.Domain.DTO;
using ButikBuWanlu.Domain.Entities;
using LinqToDB;
using LinqToDB.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace ButikBuWanlu.DAL.Repositories
{
    internal class TransactionsRepository : Repository<Transaction>, ITransactionsRepository
    {
        internal TransactionsRepository(AppDbContext context) : base(context)
        {
        }

        public List<TrendingItemsDTO> TrendingItems(string city)
        {
            //readmore about lag
            //https://www.sqlshack.com/sql-lag-function-overview-and-examples/
            //using linqtodb plugin

            IQueryable<Transaction> query = Set.Include(x => x.Store);

            if (string.IsNullOrEmpty(city) == false)
                query = query.Where(x => x.Store.City == city);

            IQueryable<TrendingItemsDTO> result = query
                        .GroupBy(x => new { x.DateTransaction.Year, x.DateTransaction.Month, x.ItemId })
                        .Select(n => new TrendingItemsDTO
                        {
                            ItemId = n.Key.ItemId,
                            Year = n.Key.Year,
                            Month = n.Key.Month,
                            TotalSales = n.Sum(x => x.TotalPrice),
                            PreviousSales = Sql.Ext
                                .Lag(n.Sum(x => x.TotalPrice), Sql.Nulls.None, 1, 0)
                                .Over()
                                .PartitionBy(n.Key.ItemId)
                                .OrderBy(n.Key.ItemId)
                                .ThenBy(n.Key.Year)
                                .ThenBy(n.Key.Month)
                                .ToValue(),
                            SummarySales = n.Sum(x => x.TotalPrice) - Sql.Ext
                                .Lag(n.Sum(x => x.TotalPrice), Sql.Nulls.None, 1, 0)
                                .Over()
                                .PartitionBy(n.Key.ItemId)
                                .OrderBy(n.Key.ItemId)
                                .ThenBy(n.Key.Year)
                                .ThenBy(n.Key.Month)
                                .ToValue()
                        });

            return result.ToLinqToDB().ToList();

        }
    }
}
