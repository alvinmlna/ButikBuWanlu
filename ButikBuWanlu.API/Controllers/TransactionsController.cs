using ButikBuWanlu.Domain.Entities;
using ButikBuWanlu.Service.IService;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;

namespace ButikBuWanlu.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TransactionsController : ControllerBase
    {
        private readonly ITransactionsService transactionsService;
        private readonly IStoresService storesService;

        public TransactionsController(ITransactionsService transactionsService, IStoresService storesService)
        {
            this.transactionsService = transactionsService;
            this.storesService = storesService;
        }

        [HttpGet]
        [Route("summarytransaction")]
        public IActionResult SummaryTransaction(
            [FromQuery] string city,
            [FromQuery] int? year
        )
        {
            IEnumerable<Transaction> allTransaction = transactionsService.GetAllAsync().Result;

            if (year == null)
                year = DateTime.Now.Year;

            allTransaction = allTransaction.Where(x => x.DateTransaction.Year == year);

            if (city != null)
            {
                allTransaction = allTransaction.Where(x => x.Store.City == city); 

                var result = allTransaction
                    .GroupBy(x => x.StoreId)
                    .Select(n => new
                    {
                        StoreId = n.Key,
                        City = n.First().Store.City,
                        TotalPurchased = n.Sum(x => x.TotalPrice)
                    })
                    .OrderByDescending(x => x.TotalPurchased);

                return Ok(result);
            } else
            {
                var stores = storesService.GetAllAsync().Result;

                List<dynamic> result = new List<dynamic>();

                foreach (var item in stores)
                {
                    var temp = allTransaction
                            .Where(x => x.Store.City == item.City)
                            .GroupBy(x => x.StoreId)
                            .Select(n => new
                            {
                                StoreId = n.Key,
                                City = n.First().Store.City,
                                TotalPurchased = n.Sum(x => x.TotalPrice)
                            })
                            .OrderByDescending(x => x.TotalPurchased);

                    result.Add(temp);
                }

                return Ok(result);
            }


        }
    }
}
