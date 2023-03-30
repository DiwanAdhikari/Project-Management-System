using ProjectManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Interface
{
    public interface IUnDeployed
    {

        List<UnDeploymentViewModel> GetUnDeployementList();
        int AddOrEdit(UnDeploymentViewModel model);
        UnDeploymentViewModel GetUnDeploymentById(int id);
        int Delete(int id);
        Task<List<UnDeploymentViewModel>> GetSearch(int stateId, int districtId, int projectId);
    }
}
