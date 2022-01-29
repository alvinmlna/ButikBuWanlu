using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Threading.Tasks;

namespace ButikBuWanlu.Domain.Absctraction.IRepository
{
    public interface IRepository<TEntity> where TEntity : class
    {
        Task<List<TEntity>> GetAllWithEagerLoad(string[] children);
        ValueTask<TEntity> FindByIdAsync(object id);
    }
}
