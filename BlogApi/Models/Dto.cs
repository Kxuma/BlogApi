namespace BlogApi.Models
{
    public class Dto
    {
        public record CreateUserDto(string Title, string Description);
        public record UpdateUserDto(string Title, string Description);
    }
}
