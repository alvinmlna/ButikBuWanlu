using ButikBuWanlu.DAL.Repositories;
using ButikBuWanlu.Domain;
using ButikBuWanlu.Domain.Absctraction.IRepository;
using System;
using System.Threading.Tasks;

namespace ButikBuWanlu.DAL
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly AppDbContext context;
        private ICustomersRepository customersRepository;
        private IItemsRepository itemsRepository;
        private IStoresRepository storesRepository;
        private ITransactionsRepository transactionsRepository;

        public UnitOfWork()
        {
            context = new AppDbContext();
        }

        public ICustomersRepository CustomersRepository => customersRepository ?? (customersRepository = new CustomersRepository(context));
        public IItemsRepository ItemsRepository => itemsRepository ?? (itemsRepository = new ItemsRepository(context));
        public IStoresRepository StoresRepository => storesRepository ?? (storesRepository = new StoresRepository(context));
        public ITransactionsRepository TransactionsRepository => transactionsRepository ?? (transactionsRepository = new TransactionsRepository(context));

        private bool _displosed = false;
        protected virtual void Dispose(bool disposing)
        {
            if (!_displosed && disposing)
            {
                context.Dispose();
            }

            _displosed = true;
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        public int SaveChanges()
        {
            try
            {
                return context.SaveChanges();
            }
            catch (Exception)
            {
                throw;
            }
        }

        public Task<int> SaveChangesAsync()
        {
            return context.SaveChangesAsync();
        }
    }
}
