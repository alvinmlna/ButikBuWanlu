using ButikBuWanlu.API.Helpers;
using ButikBuWanlu.API.Metadatas;
using ButikBuWanlu.API.Parameters;
using ButikBuWanlu.Domain.Entities;
using ButikBuWanlu.Service.IService;
using Microsoft.AspNetCore.Mvc;
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

        public CustomersController(ICustomersService customersService)
        {
            this.customersService = customersService;
        }


        [HttpGet]
        public IActionResult Get(
            [FromQuery] CustomersPaginationParameter @params
        )
        {
            //sorting validation
            var checkOrder = AttributeHelper.CheckAttribute<Customer>(@params.OrderBy);
            if (!checkOrder)
                return BadRequest("invalid sort parameter");

            var items = customersService.GetAll().AsQueryable()
                        .OrderBy(@params.OrderBy)
                        .Skip((@params.Page - 1) * @params.ItemsPerPage)
                        .Take(@params.ItemsPerPage);

            var paginationMetadata = new PaginationMetadata(items.Count(), @params.Page, @params.ItemsPerPage);
            Response.Headers.Add("X-Pagination", JsonSerializer.Serialize(paginationMetadata));

            return Ok(items);
        }
    }
}
