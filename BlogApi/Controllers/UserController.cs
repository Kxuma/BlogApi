using BlogApi.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using static BlogApi.Models.Dto;


namespace BlogApi.Controllers
{
    [Route("data")]
    [ApiController]
    public class UserController : ControllerBase
    {
        // Get

        [HttpGet]
        public ActionResult<User> Get()
        {
            using (var context = new UserDbContext())
            {
                return Ok(context.data.ToList());
            }

        }

        // GetById

        [HttpGet("{id}")]
        public ActionResult<User> GetById(Guid id)
        {
            using (var context = new UserDbContext())
            {
                var user = context.data.SingleOrDefault(x => x.Id == id);

                if (user != null)
                {
                    return Ok(user);
                }

                return NotFound();
            }
        }
        // Post

        [HttpPost]
        public ActionResult<User> Post(CreateUserDto createUserDto)
        {
            using (var context = new UserDbContext())
            {
                var user = new User
                {
                    Id = Guid.NewGuid(),
                    Title = createUserDto.Title,
                    Description = createUserDto.Description,
                    CreatedTime = DateTime.UtcNow,
                    LastUpdated = DateTime.UtcNow,
                    
                };

                if (user != null)
                {
                    context.data.Add(user);
                    context.SaveChanges();
                    return Ok(user);
                }

                return BadRequest();
            }
        }

        // Put

        [HttpPut]
        public ActionResult<User> Put(Guid id, UpdateUserDto updateUserDto)
        {
            using (var context = new UserDbContext())
            {
                var existingUser = context.data.FirstOrDefault(x => x.Id == id);
                if (existingUser != null)
                {
                    existingUser.Title = updateUserDto.Title;
                    existingUser.Description = updateUserDto.Description;
                    existingUser.CreatedTime = DateTime.UtcNow;
                    existingUser.LastUpdated = DateTime.UtcNow;

                    context.data.Update(existingUser);
                    context.SaveChanges();

                    return StatusCode(200, existingUser);
                }
                return NotFound();

            }

        }

        // Delete

        [HttpDelete]
        public ActionResult<object> Delete(Guid id)
        {
            using (var context = new UserDbContext())
            {
                var user = context.data.FirstOrDefault(x => x.Id == id);
                if (user != null)
                {
                    context.data.Remove(user);
                    context.SaveChanges();

                    return StatusCode(200, new { message = "Sikeres törlés!" });
                }

                return StatusCode(404, new { message = "Nincs mit törölni!" });
            }
        }

    }
}
