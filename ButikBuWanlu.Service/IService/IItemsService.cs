using ButikBuWanlu.Domain.DTO;
using ButikBuWanlu.Domain.Entities;
using ButikBuWanlu.Service.DTO;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ButikBuWanlu.Service.IService
{
    public interface IItemsService
    {
        ValueTask<Item> FindByIdAsync(int id);
        Task<List<Item>> GetAllAsync();

        IEnumerable<PopularItemsDTO> PopularItems(string city, int? month, int? year);
        IEnumerable<TrendingItemsDTO> TrendingItems(string city, int? month, int? year);
    }
}
