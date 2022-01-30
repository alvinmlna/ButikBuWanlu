using ButikBuWanlu.Domain;
using ButikBuWanlu.Domain.DTO;
using ButikBuWanlu.Domain.Entities;
using ButikBuWanlu.Service.DTO;
using ButikBuWanlu.Service.IService;
using LinqToDB;
using LinqToDB.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ButikBuWanlu.Service.Services
{
    public class ItemsService : IItemsService
    {
        private readonly IUnitOfWork unitofwork;
        private readonly ITransactionsService transactionsService;
        private readonly IStoresService storesService;

        public ItemsService(IUnitOfWork unitofwork, 
            ITransactionsService transactionsService,
            IStoresService storesService
        )
        {
            this.unitofwork = unitofwork;
            this.transactionsService = transactionsService;
            this.storesService = storesService;
        }

        public ValueTask<Item> FindByIdAsync(int id)
        {
            return unitofwork.ItemsRepository.FindByIdAsync(id);
        }

        public async Task<List<Item>> GetAllAsync()
        {
            return await unitofwork.ItemsRepository.GetAllWithEagerLoad();
        }

        public IEnumerable<PopularItemsDTO> PopularItems(string city, int? month, int? year)
        {
            if (city != null)
            {
                var allTransaction = transactionsService.GetAllAsync().Result
                                        .Where(x => x.Store.City == city);

                if (month != null && year != null)
                    allTransaction = allTransaction.Where(x => x.DateTransaction.Month == month && x.DateTransaction.Year == year);

                var result = allTransaction
                            .GroupBy(x => x.ItemId)
                            .Select(n => new PopularItemsDTO
                            {
                                ItemId = n.Key,
                                ItemName = n.First().Item.Name,
                                City = n.First().Store.City,
                                CountOfTransactions = n.Count()
                            })
                            .OrderByDescending(x => x.CountOfTransactions)
                            .Take(10);

                return result;
            }
            else
            {
                //popular item in all city
                IEnumerable<Transaction> allTransaction = transactionsService.GetAllAsync().Result;

                if (month != null && year != null)
                    allTransaction = allTransaction.Where(x => x.DateTransaction.Month == month && x.DateTransaction.Year == year);

                List<PopularItemsDTO> result = new List<PopularItemsDTO>();
                var stores = storesService.GetAllAsync().Result;


                foreach (var item in stores)
                {
                    var temp = allTransaction
                                .Where(x => x.Store.City == item.City)
                                .GroupBy(x => x.ItemId)
                                .Select(n => new PopularItemsDTO
                                {
                                    ItemId = n.Key,
                                    ItemName = n.First().Item.Name,
                                    City = n.First().Store.City,
                                    CountOfTransactions = n.Count()
                                })
                                .OrderByDescending(x => x.CountOfTransactions)
                                .Take(10);

                    result.AddRange(temp);
                }

                return result;
            }
        }

        public IEnumerable<TrendingItemsDTO> TrendingItems(string city, int? month, int? year)
        {
            IEnumerable<TrendingItemsDTO> allitems = unitofwork.TransactionsRepository.TrendingItems();

            if (string.IsNullOrEmpty(city) == false)
                allitems = allitems.Where(x => x.City == city);

            if (month == null)
                month = DateTime.Now.Month;

            if (year == null)
                year = DateTime.Now.Year;

            DateTime now = new DateTime(year.Value, month.Value, 1);
            DateTime temp = now.AddMonths(-1);
            DateTime prevMonth = new DateTime(temp.Year, temp.Month, DateTime.DaysInMonth(temp.Year, temp.Month));

            allitems = allitems
                .Where(x => (x.Month == month && x.Year == year) || (x.Month == prevMonth.Month && x.Year == prevMonth.Year));

            return allitems.OrderByDescending(x => x.SummarySales).Take(5).ToList();
        }
    }
}
