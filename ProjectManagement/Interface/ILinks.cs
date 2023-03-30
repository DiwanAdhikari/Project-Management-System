using ProjectManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Interface
{
    public interface ILinks
    {
        Task<List<LinksViewModel>> GetLinksList();
        int AddOrEdit(LinksViewModel model);
        LinksViewModel GetLinksById(int id);

        int Delete(int id);
    }
}
