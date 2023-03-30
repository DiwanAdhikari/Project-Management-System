using ProjectManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Interface
{
    public interface IServer
    {
        List<ServerViewModel> GetServerList();
        int AddOrEdit(ServerViewModel model);
        ServerViewModel GetServerById(int id);

        int Delete(int id);
    }
}
