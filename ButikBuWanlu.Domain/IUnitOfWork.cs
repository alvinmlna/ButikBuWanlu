using ButikBuWanlu.Domain.Absctraction.IRepository;
using System;
using System.Threading.Tasks;

namespace ButikBuWanlu.Domain
{
    public interface IUnitOfWork : IDisposable
    {
        #region properties

        ICustomersRepository CustomersRepository { get; }
        IItemsRepository ItemsRepository { get; }
        IStoresRepository StoresRepository { get; }
        ITransactionsRepository TransactionsRepository { get; }

        #endregion

        #region methods
        int SaveChanges();
        Task<int> SaveChangesAsync();
        #endregion
    }
}
