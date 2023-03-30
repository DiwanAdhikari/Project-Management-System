using ProjectManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Interface
{
    public interface IProjectType
    {
        List<ProjectTypeViewModel> GetProjectTypeList();
        int AddOrEdit(ProjectTypeViewModel model);
        ProjectTypeViewModel GetProjectTypeByProjectTypeId(int id);

        int Delete(int id);
    }
}
