using ButikBuWanlu.Domain.Entities;
using ButikBuWanlu.Service.DTO;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ButikBuWanlu.Service.IService
{
    public interface ITransactionsService
    {
        ValueTask<Transaction> FindByIdAsync(int id);
        Task<List<Transaction>> GetAllAsync();

        IEnumerable<SummaryTransactionDTO> SummaryTransactions(string city, int? year);
    }
}
