using ProjectManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Interface
{
    public interface IProjectRequirement
    {
        List<ProjectRequirementViewModel> GetRequirementList();
        int AddOrEdit(ProjectRequirementViewModel model);
        ProjectRequirementViewModel GetRequirementById(int id);

        int Delete(int id);
    }
}
