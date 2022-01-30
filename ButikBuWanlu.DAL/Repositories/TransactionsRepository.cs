using ButikBuWanlu.Domain.Absctraction.IRepository;
using ButikBuWanlu.Domain.Entities;
using LinqToDB;
using LinqToDB.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace ButikBuWanlu.DAL.Repositories
{
    internal class TransactionsRepository : Repository<Transaction>, ITransactionsRepository
    {
        internal TransactionsRepository(AppDbContext context) : base(context)
        {
        }

        public List<dynamic> TrendingItems()
        {
            //readmore about lag
            //https://www.sqlshack.com/sql-lag-function-overview-and-examples/
            //using linqtodb plugin

            IQueryable<dynamic> result = Set
                        .GroupBy(x => new { x.DateTransaction.Year, x.DateTransaction.Month, x.ItemId })
                        .Select(n => new 
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
                                .ToValue()
                        })
                        .AsQueryable();

            return result.ToLinqToDB().ToList();
        }
    }
}
