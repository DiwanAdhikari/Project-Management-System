using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity.UI.V3.Pages.Account.Internal;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using ProjectManagement.Data;
using ProjectManagement.Interface;
using ProjectManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;

namespace ProjectManagement.Provider
{
    public class UserListRepository : IUserList
    {
        private readonly ApplicationDbContext _context;
        private readonly IWebHostEnvironment _webHostEnvironment;
        private readonly ILogger<RegisterModel> _logger;
        private readonly IHttpContextAccessor _httpContextAccessor;
       
        private readonly string userId = null;

        public UserListRepository(ApplicationDbContext context,
            IWebHostEnvironment webHost,
            IHttpContextAccessor httpContextAccessor,
             ILogger<RegisterModel> logger)
        {
            _context = context;
            _webHostEnvironment = webHost;
            _httpContextAccessor = httpContextAccessor;
            _logger = logger;
            userId = _httpContextAccessor.HttpContext.User.FindFirstValue(ClaimTypes.NameIdentifier);
        }

        public async Task<List<UserListViewModel>> GetUserList()
        {
           var data= await _context.Users.Where(x => !x.UserName.Equals("softech@gmail.com") && !x.UserName.Equals("superadmin@gmail.com"))
                 .Select(x => new UserListViewModel()
                 {
                     Id = x.Id,
                     Name = x.FullName,
                     UserName = x.UserName,
                    // SubOffice = _context.SubOffice.Where(z => z.Id == x.SubOfficeId).Select(z => z.Name).FirstOrDefault(),
                    Role = (from ur in _context.UserRoles join r in _context.Roles on ur.RoleId equals r.Id where ur.UserId == x.Id select r.Name).FirstOrDefault(),
                     Active = (x.LockoutEnd ?? DateTime.UtcNow) <= DateTime.UtcNow
                 }).ToListAsync();
            return data;
        }
    }
}
