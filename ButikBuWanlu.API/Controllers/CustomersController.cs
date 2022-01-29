using ButikBuWanlu.API.Helpers;
using ButikBuWanlu.API.Metadatas;
using ButikBuWanlu.API.Parameters;
using ButikBuWanlu.Domain.Entities;
using ButikBuWanlu.Service.IService;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Dynamic.Core;
using System.Text.Json;

namespace ButikBuWanlu.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CustomersController : ControllerBase
    {
        private readonly ICustomersService customersService;
        private readonly IStoresService storesService;

        public CustomersController(
            ICustomersService customersService, 
            IStoresService storesService)
        {
            this.customersService = customersService;
            this.storesService = storesService;
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

            var items = customersService.GetAllAsync().Result.AsQueryable();

            ////where validation
            if (string.IsNullOrEmpty(@params.Where) == false)
            {
                DynamicExpressionParser.ParseLambda<Customer, bool>(new ParsingConfig(), true, @params.Where);
                items = items.Where(@params.Where);
            };

            items = items.OrderBy(@params.OrderBy)
                        .Skip((@params.Page - 1) * @params.ItemsPerPage)
                        .Take(@params.ItemsPerPage);

            var paginationMetadata = new PaginationMetadata(items.Count(), @params.Page, @params.ItemsPerPage);
            Response.Headers.Add("X-Pagination", JsonSerializer.Serialize(paginationMetadata));

            return Ok(items);
        }


        [HttpGet]
        [Route("specialcustomer")]
        public IActionResult GetFirstAndLastCustomer(
            [FromQuery] string city 
        )
        {
            List<Customer> customers = new List<Customer>();

            var allresult = customersService.GetAllAsync().Result.AsQueryable();

            if (city != null)
            {
                var firstCustomer = allresult.Where(x => x.Store.City == city).OrderBy(x => x.DateRegister).FirstOrDefault();
                customers.Add(firstCustomer);

                var lastCustomer = allresult.Where(x => x.Store.City == city).OrderByDescending(x => x.DateRegister).FirstOrDefault();
                customers.Add(lastCustomer);

                return Ok(customers);
            } else
            {
                var allCity = storesService.GetAllAsync().Result;

                foreach (var item in allCity)
                {
                    var firstCustomer = allresult.Where(x => x.Store.City == item.City).OrderBy(x => x.DateRegister).FirstOrDefault();
                    customers.Add(firstCustomer);

                    var lastCustomer = allresult.Where(x => x.Store.City == item.City).OrderByDescending(x => x.DateRegister).FirstOrDefault();
                    customers.Add(lastCustomer);
                }

                return Ok(customers);
            }

        }
    }
}
