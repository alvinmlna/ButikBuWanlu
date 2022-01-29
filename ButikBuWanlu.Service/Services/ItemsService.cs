using ButikBuWanlu.Domain;
using ButikBuWanlu.Domain.Entities;
using ButikBuWanlu.Service.IService;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ButikBuWanlu.Service.Services
{
    public class ItemsService : IItemsService
    {
        private readonly IUnitOfWork unitofwork;
        public ItemsService(IUnitOfWork unitofwork)
        {
            this.unitofwork = unitofwork;
        }

        public ValueTask<Item> FindByIdAsync(int id)
        {
            return unitofwork.ItemsRepository.FindByIdAsync(id);
        }

        public async Task<List<Item>> GetAllAsync()
        {
            return await unitofwork.ItemsRepository.GetAllWithEagerLoad();
        }

    }
}
