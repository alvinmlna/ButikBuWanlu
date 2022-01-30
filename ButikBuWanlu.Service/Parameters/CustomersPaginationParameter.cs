namespace ButikBuWanlu.Service.Parameters
{
    public class CustomersPaginationParameter : PaginationParams
    {
        public CustomersPaginationParameter()
        {
            OrderBy = "Id";
            Where = "";
        }
    }
}
