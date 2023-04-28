
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using ProjectManagement.Interface;
using ProjectManagement.Models;

namespace ProjectManagement.Controllers
{
    public class PersonalInformationController : Controller
    {
        private readonly IPersonalInformation _personalInformation;
        public PersonalInformationController(IPersonalInformation personalInformation)
        {
            _personalInformation = personalInformation;
        }
        public IActionResult Index()
        {
            ViewBag.Result = TempData["Result"];
            var result = _personalInformation.GetPersonalInformationList();
            return View(result);
        }
        public IActionResult AddOrEdit(int id = 0)
        {
            if (id == 0)
                return View(new PersonalInformationViewModel());
            else
                return View(_personalInformation.GetPersonalInformationById(id));
        }
        [HttpPost]
        public IActionResult AddOrEdit(PersonalInformationViewModel proj)
        {
            var errors = ModelState.Where(x => x.Value.Errors.Count > 0).Select(x => new { x.Key, x.Value.Errors }).ToArray();
            if (ModelState.IsValid)
            {
                var result = _personalInformation.AddOrEdit(proj);
                TempData["Result"] = false;
                if (result > 0)
                {
                    TempData["Result"] = true;
                }
                return RedirectToAction("Index");
            }
            return View();
        }
        public IActionResult Delete(int id)
        {
            var result = _personalInformation.Delete(id);
            return RedirectToAction("Index");
        }
        public IActionResult Details(int id)
        {
            var result = _personalInformation.GetPersonalInformationById(id);
            return View(result);
        }
        public IActionResult AddConcern() => PartialView("_Concern", new PersonalInformationViewModel());
    }
}
