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
            if (year == null)
                year = DateTime.Now.Year;

            var result = transactionsService.SummaryTransactions(city, year);
            return Ok(result);
        }
    }
}
