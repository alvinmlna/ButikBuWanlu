using ButikBuWanlu.Domain.Absctraction.IRepository;
using ButikBuWanlu.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ButikBuWanlu.DAL.Repositories
{
    internal class ItemsRepository : Repository<Item>, IItemsRepository
    {
        internal ItemsRepository(AppDbContext context) : base(context)
        {
        }
    }
}
