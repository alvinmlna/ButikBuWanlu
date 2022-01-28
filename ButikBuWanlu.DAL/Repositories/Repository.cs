using ButikBuWanlu.Domain.Absctraction.IRepository;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ButikBuWanlu.DAL.Repositories
{
    internal class Repository<TEntity> : IRepository<TEntity> where TEntity : class
    {


        public TEntity FindById(object id)
        {
            throw new System.NotImplementedException();
        }

        public Task<TEntity> FindByIdAsync(object id)
        {
            throw new System.NotImplementedException();
        }

        public List<TEntity> GetAll()
        {
            throw new System.NotImplementedException();
        }

        public Task<List<TEntity>> GetAllAsync()
        {
            throw new System.NotImplementedException();
        }
    }
}
