using System.Collections.Generic;

namespace ButikBuWanlu.Domain.DTO.Main
{
    public class ItemsDTO
    {
        public ItemsDTO()
        {
            ListData = new List<_ItemsDTO>();
        }

        public int AllRecords { get; set; }
        public List<_ItemsDTO> ListData { get; set; }
    }

    public class _ItemsDTO
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int Price { get; set; }
    }
}
