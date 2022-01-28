using ButikBuWanlu.Domain.Absctraction.IRepository;
using ButikBuWanlu.Domain.Entities;

namespace ButikBuWanlu.DAL.Repositories
{
    internal class TransactionsRepository : Repository<Transaction>, ITransactionsRepository
    {
        internal TransactionsRepository(AppDbContext context) : base(context)
        {
        }
    }
}
