using Microsoft.AspNetCore.Mvc;
using ProjectManagement.Interface;
using ProjectManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Controllers
{
    public class UnDeploymentController : Controller
    {
        private readonly IUnDeployed _undeployed;
        public UnDeploymentController(IUnDeployed undeployed)
        {
            _undeployed = undeployed;
        }
        public IActionResult Index()
        {
            var result = _undeployed.GetUnDeployementList();
            return View(result);
        }
        public IActionResult AddOrEdit(int id = 0)
        {
            if (id == 0)
                return View(new UnDeploymentViewModel());
            else
                return View(_undeployed.GetUnDeploymentById(id));
        }
        [HttpPost]
        public IActionResult AddOrEdit(UnDeploymentViewModel proj)
        {
            var errors = ModelState.Where(x => x.Value.Errors.Count > 0).Select(x => new { x.Key, x.Value.Errors }).ToArray();
            if (ModelState.IsValid)
            {
                var result = _undeployed.AddOrEdit(proj);
                return RedirectToAction("Index");
            }
            return View();

        }
        public IActionResult Delete(int id)
        {
            var result = _undeployed.Delete(id);
            return RedirectToAction("Index");
        }
        public async Task<IActionResult> Search(int StateId, int DistrictId, int ProjectId)
        {
            var model = new UnDeploymentViewModel();
            model.List = await _undeployed.GetSearch(StateId, DistrictId, ProjectId);
            return PartialView("_SearchList", model);
        }
        public IActionResult Details(int id)
        {
            var result = _undeployed.GetUnDeploymentById(id);
            return View(result);
        }
       // public IActionResult AddProject() => PartialView("_AddProject", new AddProjectViewModel());


    }
}
