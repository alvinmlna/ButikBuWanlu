using ButikBuWanlu.Domain;
using ButikBuWanlu.Domain.DTO;
using ButikBuWanlu.Domain.DTO.Main;
using ButikBuWanlu.Domain.Entities;
using ButikBuWanlu.Service.IService;
using ButikBuWanlu.Service.Parameters;
using LinqToDB;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Dynamic.Core;
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
            IEnumerable<TrendingItemsDTO> allitems = unitofwork.TransactionsRepository.TrendingItems(city);

            if (month == null)
                month = DateTime.Now.Month;

            if (year == null)
                year = DateTime.Now.Year;

            DateTime now = new DateTime(year.Value, month.Value, 1);
            DateTime temp = now.AddMonths(-1);
            DateTime prevMonth = new DateTime(temp.Year, temp.Month, 1);

            allitems = allitems
                .Where(x => (x.Month == month && x.Year == year) || (x.Month == prevMonth.Month && x.Year == prevMonth.Year));

            var result = allitems.OrderByDescending(x => x.SummarySales).Take(5).ToList();

            //not good practice
            foreach (var item in result)
            {
                item.ItemName = unitofwork.ItemsRepository.FindByIdAsync(item.ItemId).Result?.Name;
            }

            return result;
        }

        public ItemsDTO GetAllAsync(ItemsPaginationParameter @params)
        {
            IQueryable<Item> items = GetAllAsync().Result.AsQueryable();

            ItemsDTO result = new ItemsDTO();
            result.AllRecords = items.Count();

            if (string.IsNullOrEmpty(@params.Where) == false)
                items = items.Where(@params.Where);

            items = items.OrderBy(@params.OrderBy)
                        .Skip((@params.Page - 1) * @params.ItemsPerPage)
                        .Take(@params.ItemsPerPage);

            result.ListData = items
                                .Select(x => new _ItemsDTO
                                {
                                    Id = x.Id,
                                    Name = x.Name,
                                    Price = x.Price
                                }).ToList();
            return result;
        }

        public ItemsDTO HiAndLowPrice()
        {
            IEnumerable<Item> items = GetAllAsync().Result;

            ItemsDTO result = new ItemsDTO();

            var LowestPrice = items.OrderBy(x => x.Price).FirstOrDefault();
            result.ListData.Add(new _ItemsDTO { Id = LowestPrice.Id, Name = LowestPrice.Name, Price = LowestPrice.Price});

            var HighestPrice = items.OrderByDescending(x => x.Price).FirstOrDefault();
            result.ListData.Add(new _ItemsDTO { Id = HighestPrice.Id, Name = HighestPrice.Name, Price = HighestPrice.Price });

            result.AllRecords = result.ListData.Count();

            return result;
        }
    }
}
