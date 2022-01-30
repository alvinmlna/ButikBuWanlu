using ButikBuWanlu.Domain.DTO;
using ButikBuWanlu.Domain.DTO.Main;
using ButikBuWanlu.Domain.Entities;
using ButikBuWanlu.Service.Parameters;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ButikBuWanlu.Service.IService
{
    public interface ICustomersService
    {
        ValueTask<Customer> FindByIdAsync(int id);
        Task<List<Customer>> GetAllAsync();

        CustomersDTO GetAllAsync(CustomersPaginationParameter parameter);

        IEnumerable<BiggestSpenderDTO> BiggestSpender(string city, int? month, int? year);

        IEnumerable<Customer> GetFirstAndLastCustomer(string city);
    }
}
