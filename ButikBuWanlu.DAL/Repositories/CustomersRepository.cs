using ButikBuWanlu.Domain.Absctraction.IRepository;
using ButikBuWanlu.Domain.Entities;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace ButikBuWanlu.DAL.Repositories
{
    internal class CustomersRepository : Repository<Customer>, ICustomersRepository
    {
        internal CustomersRepository(AppDbContext context) : base(context)
        {
        }
    }
}
