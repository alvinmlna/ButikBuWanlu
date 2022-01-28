using ButikBuWanlu.Domain;
using ButikBuWanlu.Domain.Absctraction.IService;
using ButikBuWanlu.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ButikBuWanlu.Service.Services
{
    public class TransactionsService : ITransactionsService
    {
        private readonly IUnitOfWork unitOfWork;

        public TransactionsService(IUnitOfWork unitOfWork)
        {
            this.unitOfWork = unitOfWork;
        }
        public Transaction FindById(int id)
        {
            return unitOfWork.TransactionsRepository.FindById(id);
        }

        public ValueTask<Transaction> FindByIdAsync(int id)
        {
            return unitOfWork.TransactionsRepository.FindByIdAsync(id);
        }

        public IEnumerable<Transaction> GetAll()
        {
            return unitOfWork.TransactionsRepository.GetAll();
        }

        public Task<List<Transaction>> GetAllAsync()
        {
            return unitOfWork.TransactionsRepository.GetAllAsync();
        }
    }
}
