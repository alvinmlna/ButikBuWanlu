using ButikBuWanlu.Domain.Entities;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ButikBuWanlu.Service.IService
{
    public interface IItemsService
    {
        ValueTask<Item> FindByIdAsync(int id);
        Task<List<Item>> GetAllAsync();
    }
}
