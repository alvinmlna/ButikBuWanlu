using ButikBuWanlu.Domain.Entities;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ButikBuWanlu.Service.IService
{
    public interface IItemsService
    {
        Item FindById(int id);
        ValueTask<Item> FindByIdAsync(int id);
        IEnumerable<Item> GetAll();
        Task<List<Item>> GetAllAsync();
    }
}
