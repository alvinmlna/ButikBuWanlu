using ButikBuWanlu.API.Helpers;
using ButikBuWanlu.API.Metadatas;
using ButikBuWanlu.Domain.Entities;
using ButikBuWanlu.Service.IService;
using ButikBuWanlu.Service.Parameters;
using Microsoft.AspNetCore.Mvc;
using System.Linq.Dynamic.Core;
using System.Text.Json;

namespace ButikBuWanlu.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CustomersController : ControllerBase
    {
        private readonly ICustomersService customersService;

        public CustomersController(
            ICustomersService customersService
        )
        {
            this.customersService = customersService;
        }


        [HttpGet]
        public IActionResult Get(
            [FromQuery] CustomersPaginationParameter @params
        )
        {
            //sorting validation
            var checkOrder = AttributeHelper.CheckOrder<Customer>(@params.OrderBy);
            if (!checkOrder)
                return BadRequest("invalid sort parameter");

            ////where validation
            if (string.IsNullOrEmpty(@params.Where) == false)
                DynamicExpressionParser.ParseLambda<Customer, bool>(new ParsingConfig(), true, @params.Where);

            var items = customersService.GetAllAsync(@params);
                
            var paginationMetadata = new PaginationMetadata(items.AllRecords, @params.Page, @params.ItemsPerPage);
            Response.Headers.Add("X-Pagination", JsonSerializer.Serialize(paginationMetadata));

            return Ok(items.ListData);
        }


        [HttpGet]
        [Route("specialcustomer")]
        public IActionResult GetFirstAndLastCustomer(
            [FromQuery] string city 
        )
        {
            var result = customersService.GetFirstAndLastCustomer(city);
            return Ok(result);
        }

        [HttpGet]
        [Route("biggestspender")]
        public IActionResult BiggestSpender(
            [FromQuery] string city,
            [FromQuery] int? month,
            [FromQuery] int? year
        )
        {
            var result = customersService.BiggestSpender(city, month, year);
            return Ok(result);
        }
    }
}
