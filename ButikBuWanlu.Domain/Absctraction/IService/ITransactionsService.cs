using ButikBuWanlu.Domain.Entities;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ButikBuWanlu.Domain.Absctraction.IService
{
    public interface ITransactionsService
    {
        Transaction FindById(int id);
        ValueTask<Transaction> FindByIdAsync(int id);
        IEnumerable<Transaction> GetAll();
        Task<List<Transaction>> GetAllAsync();
    }
}
