using ButikBuWanlu.API.Metadatas;
using ButikBuWanlu.API.Parameters;
using ButikBuWanlu.Service.IService;
using Microsoft.AspNetCore.Mvc;
using System.Text.Json;
using System.Linq.Dynamic.Core;
using System.Linq;
using ButikBuWanlu.Domain.Entities;
using ButikBuWanlu.API.Helpers;
using System.Collections.Generic;

namespace ButikBuWanlu.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ItemsController : ControllerBase
    {
        private readonly IItemsService itemsService;
        private readonly ITransactionsService transactionsService;
        private readonly IStoresService storesService;

        public ItemsController(
            IItemsService itemsService,
            ITransactionsService transactionsService,
            IStoresService storesService
        )
        {
            this.itemsService = itemsService;
            this.transactionsService = transactionsService;
            this.storesService = storesService;
        }


        [HttpGet]
        public IActionResult Get(
            [FromQuery] ItemsPaginationParameter @params
        )
        {
            //sorting validation
            var checkOrder = AttributeHelper.CheckOrder<Item>(@params.OrderBy);
            if (!checkOrder)
                return BadRequest("invalid sort parameter");

            var items = itemsService.GetAllAsync().Result.AsQueryable()
                        .OrderBy(@params.OrderBy)
                        .Skip((@params.Page - 1) * @params.ItemsPerPage)
                        .Take(@params.ItemsPerPage);

            var paginationMetadata = new PaginationMetadata(items.Count(), @params.Page, @params.ItemsPerPage);
            Response.Headers.Add("X-Pagination", JsonSerializer.Serialize(paginationMetadata));

            return Ok(items);
        }

        [HttpGet]
        [Route("popular")]
        public IActionResult PopularItems(
            [FromQuery] string city,
            [FromQuery] int? month,
            [FromQuery] int? year
        )
        {
            if (city != null)
            {
                var allTransaction = transactionsService.GetAllAsync().Result
                                        .Where(x => x.Store.City == city);

                if (month != null && year != null)
                    allTransaction = allTransaction.Where(x => x.DateTransaction.Month == month && x.DateTransaction.Year == year);

                var result = allTransaction
                            .GroupBy(x => x.ItemId)
                            .Select(n => new
                            {
                                ItemId = n.Key,
                                Name = n.First().Item.Name,
                                City = n.First().Store.City,
                                CountOfTransaction = n.Count()
                            })
                            .OrderByDescending(x => x.CountOfTransaction)
                            .Take(10);

                return Ok(result);
            } else
            {
                //popular item in all city
                IEnumerable<Transaction> allTransaction = transactionsService.GetAllAsync().Result;

                if (month != null && year != null)
                    allTransaction = allTransaction.Where(x => x.DateTransaction.Month == month && x.DateTransaction.Year == year);

                List<dynamic> result = new List<dynamic>();
                var stores = storesService.GetAllAsync().Result;
                foreach (var item in stores)
                {
                    var temp = allTransaction
                                .Where(x => x.Store.City == item.City)
                                .GroupBy(x => x.ItemId)
                                .Select(n => new
                                {
                                    ItemId = n.Key,
                                    Name = n.First().Item.Name,
                                    City = n.First().Store.City,
                                    CountOfTransaction = n.Count()
                                })
                                .OrderByDescending(x => x.CountOfTransaction)
                                .Take(10);

                    result.Add(temp);
                }

                return Ok(result);
            }
        }
    }
}
