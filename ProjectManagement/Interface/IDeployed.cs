using ProjectManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


namespace ProjectManagement.Interface
{
    public interface IDeployed
    {
        List<DeploymentViewModel> GetDeployementList();
        int AddOrEdit(DeploymentViewModel model);
        DeploymentViewModel GetDeploymentById(int id);
        int Delete(int id);
        Task<List<DeploymentViewModel>> GetSearch(int stateId, int districtId, int palikaId, int ProjectId);
    }
}
