using ButikBuWanlu.Domain;
using ButikBuWanlu.Domain.DTO;
using ButikBuWanlu.Domain.DTO.Main;
using ButikBuWanlu.Domain.Entities;
using ButikBuWanlu.Service.IService;
using ButikBuWanlu.Service.Parameters;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Dynamic.Core;
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

        public IEnumerable<Customer> GetFirstAndLastCustomer(string city)
        {
            var allresult = GetAllAsync().Result.AsQueryable();

            List<Customer> customers = new List<Customer>();

            if (city != null)
            {
                var firstCustomer = allresult.Where(x => x.Store.City == city).OrderBy(x => x.DateRegister).FirstOrDefault();
                customers.Add(firstCustomer);

                var lastCustomer = allresult.Where(x => x.Store.City == city).OrderByDescending(x => x.DateRegister).FirstOrDefault();
                customers.Add(lastCustomer);

                return customers;
            }
            else
            {
                var allCity = storesService.GetAllAsync().Result;

                foreach (var item in allCity)
                {
                    var firstCustomer = allresult.Where(x => x.Store.City == item.City).OrderBy(x => x.DateRegister).FirstOrDefault();
                    customers.Add(firstCustomer);

                    var lastCustomer = allresult.Where(x => x.Store.City == item.City).OrderByDescending(x => x.DateRegister).FirstOrDefault();
                    customers.Add(lastCustomer);
                }

                return customers;
            }
        }

        public CustomersDTO GetAllAsync(CustomersPaginationParameter @params)
        {
            IQueryable<Customer> customers = GetAllAsync().Result.AsQueryable();

            CustomersDTO result = new CustomersDTO();
            result.AllRecords = customers.Count();

            if (string.IsNullOrEmpty(@params.Where) == false)
                customers = customers.Where(@params.Where);

            customers = customers.OrderBy(@params.OrderBy)
                        .Skip((@params.Page - 1) * @params.ItemsPerPage)
                        .Take(@params.ItemsPerPage);

            result.ListData = customers
                                .Select(x => new _CustomersDTO { 
                                   Id = x.Id,
                                   DateRegister = x.DateRegister,
                                   Name = x.Name,
                                   StoreId = x.StoreId,
                                   Store = x.Store
                                }).ToList();
            return result;
        }
    }
}
