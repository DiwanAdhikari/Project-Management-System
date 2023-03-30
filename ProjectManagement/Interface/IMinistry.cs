using ProjectManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Interface
{
    public interface IMinistry
    {
        List<MinistryViewModel> GetMinistryList();
        int AddOrEdit(MinistryViewModel model);
        MinistryViewModel GetMinistryById(int id);

        int Delete(int id);

        Task<List<MinistryViewModel>> GetSearch(int stateId, int districtId, int palikaId);

    }
}
