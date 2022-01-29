using ButikBuWanlu.Domain.Entities;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ButikBuWanlu.Service.IService
{
    public interface ICustomersService
    {
        Customer FindById(int id);
        ValueTask<Customer> FindByIdAsync(int id);
        IEnumerable<Customer> GetAll();
        Task<List<Customer>> GetAllAsync();
    }
}
