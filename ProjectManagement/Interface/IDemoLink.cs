using ProjectManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Interface
{
    public interface IDemoLink
    {
        List<DemoLinkViewModel> GetDemoLinkList(int Demoid);
        int CreateDemoLink(DemoLinkViewModel model);
        DemoLinkViewModel GetDemoLinkById(int id);

        int Delete(int id);
    }
}
