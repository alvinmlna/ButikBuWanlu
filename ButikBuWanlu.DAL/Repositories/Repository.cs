using ButikBuWanlu.Domain.Absctraction.IRepository;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ButikBuWanlu.DAL.Repositories
{
    internal class Repository<TEntity> : IRepository<TEntity> where TEntity : class
    {
        private readonly AppDbContext context;
        private DbSet<TEntity> set;

        public Repository(AppDbContext _context)
        {
            context = _context;
        }

        protected DbSet<TEntity> Set
        {
            get { return set ?? ( set = context.Set<TEntity>()); }
        }

        public TEntity FindById(object id)
        {
            return Set.Find(id);
        }

        public ValueTask<TEntity> FindByIdAsync(object id)
        {
            return Set.FindAsync(id);
        }

        public List<TEntity> GetAll()
        {
            return Set.ToList();
        }

        public Task<List<TEntity>> GetAllAsync()
        {
            return Set.ToListAsync();
        }
    }
}
