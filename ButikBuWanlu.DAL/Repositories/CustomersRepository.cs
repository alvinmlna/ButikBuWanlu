using ButikBuWanlu.Domain.Absctraction.IRepository;
using ButikBuWanlu.Domain.Entities;

namespace ButikBuWanlu.DAL.Repositories
{
    internal class CustomersRepository : Repository<Customer>, ICustomersRepository
    {
        internal CustomersRepository(AppDbContext context) : base(context)
        {
        }
    }
}
