﻿using ButikBuWanlu.API.Metadatas;
using ButikBuWanlu.Service.IService;
using Microsoft.AspNetCore.Mvc;
using System.Text.Json;
using System.Linq.Dynamic.Core;
using System.Linq;
using ButikBuWanlu.Domain.Entities;
using ButikBuWanlu.API.Helpers;
using ButikBuWanlu.Service.Parameters;

namespace ButikBuWanlu.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ItemsController : ControllerBase
    {
        private readonly IItemsService itemsService;

        public ItemsController(
            IItemsService itemsService
        )
        {
            this.itemsService = itemsService;
        }


        [HttpGet]
        public IActionResult Get(
            [FromQuery] ItemsPaginationParameter @params
        ){
            //sorting validation
            var checkOrder = AttributeHelper.CheckOrder<Item>(@params.OrderBy);
            if (!checkOrder)
                return BadRequest("invalid sort parameter");

            var items = itemsService.GetAllAsync().Result.AsQueryable();

            var paginationMetadata = new PaginationMetadata(items.Count(), @params.Page, @params.ItemsPerPage);
            Response.Headers.Add("X-Pagination", JsonSerializer.Serialize(paginationMetadata));

            items = items
                    .OrderBy(@params.OrderBy)
                    .Skip((@params.Page - 1) * @params.ItemsPerPage)
                    .Take(@params.ItemsPerPage);

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
            var result = itemsService.PopularItems(city, month, year);
            return Ok(result);
        }


        [HttpGet]
        [Route("trending")]
        public IActionResult TrendingItems(
            [FromQuery] string city,
            [FromQuery] int? month,
            [FromQuery] int? year
        )
        {
            var result = itemsService.TrendingItems(city, month, year);
            return Ok(result);
        }
    }
}
