using ButikBuWanlu.Service.IService;
using Microsoft.AspNetCore.Mvc;
using System;

namespace ButikBuWanlu.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TransactionsController : ControllerBase
    {
        private readonly ITransactionsService transactionsService;

        public TransactionsController(ITransactionsService transactionsService)
        {
            this.transactionsService = transactionsService;
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
