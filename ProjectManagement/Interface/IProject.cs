using ProjectManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Interface
{
    public interface IProject
    {

        List<ProjectViewModel> GetProjectList();
        int AddOrEdit(ProjectViewModel model);
        ProjectViewModel GetProjectById(int id);

        int Delete(int id);
    }
}
