using ButikBuWanlu.Domain.Absctraction.IRepository;
using ButikBuWanlu.Domain.Entities;

namespace ButikBuWanlu.DAL.Repositories
{
    internal class ItemsRepository : Repository<Item>, IItemsRepository
    {
        internal ItemsRepository(AppDbContext context) : base(context)
        {
        }
    }
}
