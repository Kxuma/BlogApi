namespace BlogApi.Models
{
    public class Dto
    {
        public record CreateUserDto(string Title, string Description, DateTime CreatedTime, DateTime LastUpdated);
        public record UpdateUserDto(string Title, string Description, DateTime CreatedTime, DateTime LastUpdated);
    }
}
