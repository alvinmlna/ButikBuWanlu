using ButikBuWanlu.API.Metadatas;
using ButikBuWanlu.API.Parameters;
using ButikBuWanlu.Domain.Entities;
using ButikBuWanlu.Service.IService;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Linq;
using System.Text.Json;
using System.Threading.Tasks;

namespace ButikBuWanlu.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ItemsController : ControllerBase
    {
        private readonly IItemsService itemsService;

        public ItemsController(IItemsService itemsService)
        {
            this.itemsService = itemsService;
        }


        [HttpGet]
        public async Task<IActionResult> Get(
            [FromQuery] PaginationParams @params
        )
        {
            var items = itemsService.GetAllAsync().Result
                        .OrderBy(x => x.Id)
                        .Skip((@params.Page - 1) * @params.ItemsPerPage)
                        .Take(@params.ItemsPerPage);

            var paginationMetadata = new PaginationMetadata(items.Count(), @params.Page, @params.ItemsPerPage);
            Response.Headers.Add("X-Pagination", JsonSerializer.Serialize(paginationMetadata));

            return Ok(items);
        }
    }
}
