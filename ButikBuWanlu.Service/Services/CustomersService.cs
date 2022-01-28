using ButikBuWanlu.Domain;
using ButikBuWanlu.Domain.Absctraction.IService;
using ButikBuWanlu.Domain.Entities;
using System;
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

        public Customer FindById(int id)
        {
            return unitOfWork.CustomersRepository.FindById(id);
        }

        public ValueTask<Customer> FindByIdAsync(int id)
        {
            return unitOfWork.CustomersRepository.FindByIdAsync(id);
        }

        public IEnumerable<Customer> GetAll()
        {
            return unitOfWork.CustomersRepository.GetAll();
        }

        public Task<List<Customer>> GetAllAsync()
        {
            return unitOfWork.CustomersRepository.GetAllAsync();
        }
    }
}
