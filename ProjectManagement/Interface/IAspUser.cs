using ProjectManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Interface
{
    public interface IAspUser
    {
        Task<List<UserListViewModel>> GetAllUsers();
        Task<bool> ResetUserPassword(string id);
        Task<int> UserActivateOrDeactivate(string id);
    }
}
