using ButikBuWanlu.Domain;
using ButikBuWanlu.Domain.Entities;
using ButikBuWanlu.Service.IService;
using System.Collections.Generic;
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

        public ValueTask<Transaction> FindByIdAsync(int id)
        {
            return unitOfWork.TransactionsRepository.FindByIdAsync(id);
        }

        Task<List<Transaction>> ITransactionsService.GetAllAsync()
        {
            throw new System.NotImplementedException();
        }
    }
}
