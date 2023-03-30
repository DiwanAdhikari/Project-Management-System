using Microsoft.AspNetCore.Mvc;
using ProjectManagement.Interface;
using ProjectManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Controllers
{
    public class ProjectRequirementController : Controller
    {
        private readonly IProjectRequirement _requirement;

        public ProjectRequirementController(IProjectRequirement requirement)
        {
            _requirement = requirement;
        }
        public IActionResult Index()
        {
            var result = _requirement.GetRequirementList();
            return View(result);
        }
        public IActionResult AddOrEdit(int id=0)
        {
            if (id == 0)
                return View(new ProjectRequirementViewModel());
            else
                return View(_requirement.GetRequirementById(id));
        }
        [HttpPost]
        public IActionResult AddOrEdit(ProjectRequirementViewModel proj)
        {
            var errors = ModelState.Where(x => x.Value.Errors.Count > 0).Select(x => new { x.Key, x.Value.Errors }).ToArray();
            if (ModelState.IsValid)
            {
                var result = _requirement.AddOrEdit(proj);
                return RedirectToAction("Index");
            }
            return View();

        }
        public IActionResult Delete(int id)
        {
            var result = _requirement.Delete(id);
            return RedirectToAction("Index");
        }
        public IActionResult Details(int id)
        {
            var result = _requirement.GetRequirementById(id);
            return View(result);
        }
        public IActionResult AddRequirement() => PartialView("_AddRequirement", new RequirementViewModel());
    }

}
