using System.Collections.Generic;
using System.Threading.Tasks;

namespace ButikBuWanlu.Domain.Absctraction.IRepository
{
    public interface IRepository<TEntity> where TEntity : class
    {
        List<TEntity> GetAll();
        Task<List<TEntity>> GetAllAsync();

        TEntity FindById(object id);
        Task<TEntity> FindByIdAsync(object id);
    }
}
