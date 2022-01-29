using ButikBuWanlu.Domain;
using ButikBuWanlu.Domain.Entities;
using ButikBuWanlu.Service.DTO;
using ButikBuWanlu.Service.IService;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ButikBuWanlu.Service.Services
{
    public class TransactionsService : ITransactionsService
    {
        private readonly IUnitOfWork unitOfWork;
        private readonly IStoresService storesService;

        public TransactionsService(IUnitOfWork unitOfWork, IStoresService storesService)
        {
            this.unitOfWork = unitOfWork;
            this.storesService = storesService;
        }

        public ValueTask<Transaction> FindByIdAsync(int id)
        {
            return unitOfWork.TransactionsRepository.FindByIdAsync(id);
        }

        public Task<List<Transaction>> GetAllAsync()
        {
            var children = new string[] { "Store", "Item", "Customer" };
            return unitOfWork.TransactionsRepository.GetAllWithEagerLoad(children);
        }

        public IEnumerable<SummaryTransactionDTO> SummaryTransactions(string city, int? year)
        {
            IEnumerable<Transaction> allTransaction = GetAllAsync().Result;

            allTransaction = allTransaction.Where(x => x.DateTransaction.Year == year);

            if (city != null)
            {
                allTransaction = allTransaction.Where(x => x.Store.City == city);

                var result = allTransaction
                    .GroupBy(x => x.StoreId)
                    .Select(n => new SummaryTransactionDTO
                    {
                        StoreId = n.Key,
                        City = n.First().Store.City,
                        TotalPurchased = n.Sum(x => x.TotalPrice)
                    })
                    .OrderByDescending(x => x.TotalPurchased);

                return result;
            }
            else
            {
                var stores = storesService.GetAllAsync().Result;

                List<SummaryTransactionDTO> result = new List<SummaryTransactionDTO>();

                foreach (var item in stores)
                {
                    var temp = allTransaction
                            .Where(x => x.Store.City == item.City)
                            .GroupBy(x => x.StoreId)
                            .Select(n => new SummaryTransactionDTO
                            {
                                StoreId = n.Key,
                                City = n.First().Store.City,
                                TotalPurchased = n.Sum(x => x.TotalPrice)
                            })
                            .OrderByDescending(x => x.TotalPurchased);

                    result.AddRange(temp);
                }

                return result;
            }
        }
    }
}
