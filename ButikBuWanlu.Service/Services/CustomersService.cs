using ButikBuWanlu.Domain;
using ButikBuWanlu.Domain.Entities;
using ButikBuWanlu.Service.IService;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ButikBuWanlu.Service.Services
{
    public class CustomersService : ICustomersService
    {
        private readonly IUnitOfWork unitOfWork;

        public CustomersService(IUnitOfWork unitOfWork)
        {
            this.unitOfWork = unitOfWork;
        }

        public ValueTask<Customer> FindByIdAsync(int id)
        {
            return unitOfWork.CustomersRepository.FindByIdAsync(id);
        }

        public async Task<List<Customer>> GetAllAsync()
        {
            var children = new string[] { "Store"};
            return await unitOfWork.CustomersRepository.GetAllWithEagerLoad(children);
        }
    }
}
