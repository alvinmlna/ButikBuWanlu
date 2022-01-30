using ButikBuWanlu.Domain.Entities;
using System;
using System.Collections.Generic;

namespace ButikBuWanlu.Domain.DTO.Main
{
    public class CustomersDTO
    {
        public List<_CustomersDTO> ListData { get; set; }
        public int AllRecords { get; set; }
    }

    public class _CustomersDTO
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public DateTime DateRegister { get; set; }
        public int StoreId { get; set; }
        public Store Store { get; set; }
    }
}
