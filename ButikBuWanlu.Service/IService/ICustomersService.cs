using ButikBuWanlu.Domain.DTO;
using ButikBuWanlu.Domain.Entities;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ButikBuWanlu.Service.IService
{
    public interface ICustomersService
    {
        ValueTask<Customer> FindByIdAsync(int id);
        Task<List<Customer>> GetAllAsync();

        IEnumerable<BiggestSpenderDTO> BiggestSpender(string city, int? month, int? year);
    }
}
