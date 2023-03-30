using Microsoft.AspNetCore.Mvc;
using ProjectManagement.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Controllers
{
    public class UserListController : Controller
    {
        private readonly IUserList _user = null;

        public UserListController(IUserList user)
        {
            _user = user;
        }
        public async Task<IActionResult> UserList()
        {
            return View(await _user.GetUserList());
        }
    }
}
