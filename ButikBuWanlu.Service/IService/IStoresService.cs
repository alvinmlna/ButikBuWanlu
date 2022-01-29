using ButikBuWanlu.Domain.Entities;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ButikBuWanlu.Service.IService
{
    public interface IStoresService
    {
        Store FindById(int id);
        ValueTask<Store> FindByIdAsync(int id);
        IEnumerable<Store> GetAll();
        Task<List<Store>> GetAllAsync();
    }
}
