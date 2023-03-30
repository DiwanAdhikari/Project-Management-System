using ProjectManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Interface
{
    public interface ISupport
    {
        List<SupportViewModel> GetSupportList();
        int AddOrEdit(SupportViewModel model);
        SupportViewModel GetSupportById(int id);

        int Delete(int id);
    }
}
