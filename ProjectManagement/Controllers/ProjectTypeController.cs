using Microsoft.AspNetCore.Mvc;
using ProjectManagement.Interface;
using ProjectManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Controllers
{
    public class ProjectTypeController : Controller
    {

        private readonly IProjectType _project;


        public ProjectTypeController(IProjectType proj)
        {
            _project = proj;

        }

        public IActionResult Index()
        {
            var result = _project.GetProjectTypeList();
            return View(result);
        }


        public IActionResult AddOrEdit(int id = 0)
        {
            if (id == 0)
                return View(new ProjectTypeViewModel());
            else
                return View(_project.GetProjectTypeByProjectTypeId(id));
        }
        [HttpPost]
        public IActionResult AddOrEdit(ProjectTypeViewModel proj)
        {
            var errors = ModelState.Where(x => x.Value.Errors.Count > 0).Select(x => new { x.Key, x.Value.Errors }).ToArray();
            if (ModelState.IsValid)
            {
                var result = _project.AddOrEdit(proj);
                return RedirectToAction("Index");
            }
            return View();

        }

        public IActionResult Delete(int id)
        {
            var result = _project.Delete(id);
            return RedirectToAction("Index");
        }
        public IActionResult Details(int id)
        {
            var result = _project.GetProjectTypeByProjectTypeId(id);
            return View(result);
        }

    }

}
