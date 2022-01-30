using ButikBuWanlu.Domain.DTO;
using ButikBuWanlu.Domain.DTO.Main;
using ButikBuWanlu.Domain.Entities;
using ButikBuWanlu.Service.Parameters;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ButikBuWanlu.Service.IService
{
    public interface IItemsService
    {
        ValueTask<Item> FindByIdAsync(int id);
        Task<List<Item>> GetAllAsync();
        ItemsDTO GetAllAsync(ItemsPaginationParameter parameter);

        IEnumerable<PopularItemsDTO> PopularItems(string city, int? month, int? year);
        IEnumerable<TrendingItemsDTO> TrendingItems(string city, int? month, int? year);
    }
}
