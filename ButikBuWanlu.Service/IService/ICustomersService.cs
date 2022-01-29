using ButikBuWanlu.Domain.Entities;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ButikBuWanlu.Service.IService
{
    public interface ICustomersService
    {
        ValueTask<Customer> FindByIdAsync(int id);
        Task<List<Customer>> GetAllAsync();
    }
}
