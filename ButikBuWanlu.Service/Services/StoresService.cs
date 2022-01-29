using ButikBuWanlu.Domain;
using ButikBuWanlu.Domain.Entities;
using ButikBuWanlu.Service.IService;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ButikBuWanlu.Service.Services
{
    public class StoresService : IStoresService
    {
        private readonly IUnitOfWork unitOfWork;

        public StoresService(IUnitOfWork unitOfWork)
        {
            this.unitOfWork = unitOfWork;
        }

        public ValueTask<Store> FindByIdAsync(int id)
        {
            return unitOfWork.StoresRepository.FindByIdAsync(id);
        }

        Task<List<Store>> IStoresService.GetAllAsync()
        {
            throw new System.NotImplementedException();
        }
    }
}
