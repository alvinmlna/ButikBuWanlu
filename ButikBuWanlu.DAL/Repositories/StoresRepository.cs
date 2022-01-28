using ButikBuWanlu.Domain.Absctraction.IRepository;
using ButikBuWanlu.Domain.Entities;

namespace ButikBuWanlu.DAL.Repositories
{
    internal class StoresRepository : Repository<Store>, IStoresRepository
    {
        internal StoresRepository(AppDbContext context) : base(context)
        {
        }
    }
}
