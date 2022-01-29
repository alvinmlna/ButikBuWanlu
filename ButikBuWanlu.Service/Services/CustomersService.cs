using ButikBuWanlu.Domain;
using ButikBuWanlu.Domain.Entities;
using ButikBuWanlu.Service.DTO;
using ButikBuWanlu.Service.IService;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ButikBuWanlu.Service.Services
{
    public class CustomersService : ICustomersService
    {
        private readonly IUnitOfWork unitOfWork;
        private readonly ITransactionsService transactionsService;
        private readonly IStoresService storesService;

        public CustomersService(
            IUnitOfWork unitOfWork,
            ITransactionsService transactionsService,
            IStoresService storesService
        )
        {
            this.unitOfWork = unitOfWork;
            this.transactionsService = transactionsService;
            this.storesService = storesService;
        }

        public ValueTask<Customer> FindByIdAsync(int id)
        {
            return unitOfWork.CustomersRepository.FindByIdAsync(id);
        }

        public async Task<List<Customer>> GetAllAsync()
        {
            var children = new string[] { "Store"};
            return await unitOfWork.CustomersRepository.GetAllWithEagerLoad(children);
        }

        public IEnumerable<BiggestSpenderDTO> BiggestSpender(string city, int? month, int? year)
        {
            if (city != null)
            {
                IEnumerable<Transaction> allTransaction = transactionsService.GetAllAsync().Result.Where(x => x.Store.City == city);

                if (month != null && year != null)
                    allTransaction = allTransaction.Where(x => x.DateTransaction.Month == month && x.DateTransaction.Year == year);

                var result = allTransaction
                            .GroupBy(x => x.CustomerId)
                            .Select(n => new BiggestSpenderDTO
                            {
                                CustomerId = n.Key,
                                CustomerName = n.First().Customer.Name,
                                City = n.First().Store.City,
                                TotalPurchased = n.Sum(x => x.TotalPrice)
                            })
                            .OrderByDescending(x => x.TotalPurchased)
                            .Take(10);

                return result;
            }
            else
            {                
                //biggest spender in all city
                IEnumerable<Transaction> allTransaction = transactionsService.GetAllAsync().Result;

                if (month != null && year != null)
                    allTransaction = allTransaction.Where(x => x.DateTransaction.Month == month && x.DateTransaction.Year == year);

                List<BiggestSpenderDTO> result = new List<BiggestSpenderDTO>();
                var stores = storesService.GetAllAsync().Result;

                foreach (var item in stores)
                {
                    var temp = allTransaction
                               .Where(x => x.Store.City == item.City)
                               .GroupBy(x => x.CustomerId)
                               .Select(n => new BiggestSpenderDTO
                               {
                                   CustomerId = n.Key,
                                   CustomerName = n.First().Customer.Name,
                                   City = n.First().Store.City,
                                   TotalPurchased = n.Sum(x => x.TotalPrice)
                               })
                               .OrderByDescending(x => x.TotalPurchased)
                               .Take(10);

                    result.AddRange(temp);
                }

                return result;
            }
        }
    }
}
