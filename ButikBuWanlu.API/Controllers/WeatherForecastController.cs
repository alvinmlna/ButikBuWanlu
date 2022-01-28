using ButikBuWanlu.Domain.Absctraction.IService;
using ButikBuWanlu.Domain.Entities;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ButikBuWanlu.API.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class WeatherForecastController : ControllerBase
    {
        private static readonly string[] Summaries = new[]
        {
            "Freezing", "Bracing", "Chilly", "Cool", "Mild", "Warm", "Balmy", "Hot", "Sweltering", "Scorching"
        };

        private readonly ILogger<WeatherForecastController> _logger;
        private readonly ICustomersService customersService;
        private readonly IItemsService itemsService;

        public WeatherForecastController(
            ILogger<WeatherForecastController> logger,
            ICustomersService customersService,
            IItemsService itemsService
            )
        {
            _logger = logger;
            this.customersService = customersService;
            this.itemsService = itemsService;
        }

        [HttpGet]
        public Task<List<Item>> Get()
        {
            return itemsService.GetAllAsync();

            //var rng = new Random();
            //return Enumerable.Range(1, 5).Select(index => new WeatherForecast
            //{
            //    Date = DateTime.Now.AddDays(index),
            //    TemperatureC = rng.Next(-20, 55),
            //    Summary = Summaries[rng.Next(Summaries.Length)]
            //})
            //.ToArray();
        }
    }
}
