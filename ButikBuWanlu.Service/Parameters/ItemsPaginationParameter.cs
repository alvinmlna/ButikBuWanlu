namespace ButikBuWanlu.Service.Parameters
{
    public class ItemsPaginationParameter : PaginationParams
    {
        public ItemsPaginationParameter()
        {
            OrderBy = "Id";
            Where = "";
        }
    }
}
