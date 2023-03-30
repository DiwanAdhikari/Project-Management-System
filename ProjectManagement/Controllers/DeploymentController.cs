using Microsoft.AspNetCore.Mvc;
using ProjectManagement.Interface;
using ProjectManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Controllers
{
    public class DeploymentController : Controller
    {
        private readonly IDeployed _deployed;
        public DeploymentController(IDeployed deployed)
        {
            _deployed = deployed;
        }
        public IActionResult Index()
        {
            var result = _deployed.GetDeployementList();
            List<DeploymentViewModel> model = new List<DeploymentViewModel>();
            ///  for(var i =1; i < result.Count; i++)
            foreach (var item in result)
            {
              //  var data = item.ProjectList.Select(x => x.ProjectName);
                DeploymentViewModel m = new DeploymentViewModel();
                m.Id = item.Id;
                m.ClientName = item.ClientName;
                m.ProjectNameList = string.Join(",", item.ProjectList.Select(x=>x.ProjectName));
                m.PhoneNumber = item.PhoneNumber;
                m.Remarks = item.Remarks;
                m.PalikaId = item.PalikaId;
                m.DeploymentBy = item.DeploymentBy;
                m.EmployeeName = item.EmployeeName;
                m.StateName = item.StateName;
                m.DistrictName = item.DistrictName;
                m.PalikaName = item.PalikaName;
                m.StateId = item.StateId;
                m.DistrictId = item.DistrictId;
                m.BsStartDate = item.BsStartDate;
                m.IsActive = item.IsActive;
                m.ProjectList = item.ProjectList;
                model.Add(m);
            }
            return View(model);
        }
        public IActionResult AddOrEdit(int id = 0)
        {
            if (id == 0)
                return View(new DeploymentViewModel());
            else
                return View(_deployed.GetDeploymentById(id));
        }
        [HttpPost]
        public IActionResult AddOrEdit(DeploymentViewModel proj)
        {
            var errors = ModelState.Where(x => x.Value.Errors.Count > 0).Select(x => new { x.Key, x.Value.Errors }).ToArray();
            if (ModelState.IsValid)
            {
                var result = _deployed.AddOrEdit(proj);
                return RedirectToAction("Index");
            }
            return View();

        }
        public IActionResult Delete(int id)
        {
            var result = _deployed.Delete(id);
            return RedirectToAction("Index");
        }
        public async Task<IActionResult> Search(int StateId, int DistrictId, int PalikaId, int ProjectId)
        {
            var model = new DeploymentViewModel();
            model.List = await _deployed.GetSearch(StateId, DistrictId, PalikaId, ProjectId);
            return PartialView("_SearchList", model);
        }
        public IActionResult Details(int id)
        {
            var result = _deployed.GetDeploymentById(id);
            return View(result);
        }
        public IActionResult AddProject() => PartialView("_AddProject", new AddProjectViewModel());


    }
}
