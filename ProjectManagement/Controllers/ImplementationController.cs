using Microsoft.AspNetCore.Mvc;
using Microsoft.CodeAnalysis;
using ProjectManagement.Interface;
using ProjectManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Controllers
{


    public class ImplementationController : Controller
    {

        private readonly IImplementation _project;


        public ImplementationController(IImplementation proj)
        {
            _project = proj;


        }

        public IActionResult Index()
        {
            var result =_project.GetImplementedSoftwaresList();
            return View(result);
        }


        public IActionResult AddOrEdit(int id = 0)
        {
            if (id == 0)
                return View(new ImplementationViewModel());
            else
                return View(_project.GetImplementedSoftwaresById(id));
        }
        [HttpPost]
        public IActionResult AddOrEdit(ImplementationViewModel proj)
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
            var result = _project.GetImplementedSoftwaresById(id);
            return View(result);
        }

    }

}

