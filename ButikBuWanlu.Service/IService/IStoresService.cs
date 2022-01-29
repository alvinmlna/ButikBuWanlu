using ButikBuWanlu.Domain.Entities;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ButikBuWanlu.Service.IService
{
    public interface IStoresService
    {
        ValueTask<Store> FindByIdAsync(int id);
        Task<List<Store>> GetAllAsync();
    }
}
