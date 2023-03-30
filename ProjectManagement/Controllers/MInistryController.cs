using Microsoft.AspNetCore.Mvc;
using ProjectManagement.Interface;
using ProjectManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Controllers
{
    public class MInistryController : Controller
    {
        private readonly IMinistry _ministry;


        public MInistryController(IMinistry ministry)
        {
            _ministry = ministry;


        }

        public IActionResult Index()
        {
            var result = _ministry.GetMinistryList();
            return View(result);
        }


        public IActionResult AddOrEdit(int id = 0)
        {
            if (id == 0)
                return View(new MinistryViewModel());
            else
                return View(_ministry.GetMinistryById(id));
        }
        [HttpPost]
        public IActionResult AddOrEdit(MinistryViewModel proj)
        {
            var errors = ModelState.Where(x => x.Value.Errors.Count > 0).Select(x => new { x.Key, x.Value.Errors }).ToArray();
            if (ModelState.IsValid)
            {
                var result = _ministry.AddOrEdit(proj);
                return RedirectToAction("Index");
            }
            return View();

        }

        public IActionResult Delete(int id)
        {
            var result = _ministry.Delete(id);
            return RedirectToAction("Index");
        }

        public async Task<IActionResult>Search (int StateId, int DistrictId, int PalikaId)
        {
            var model = new MinistryViewModel();
            model.List = await _ministry.GetSearch(StateId, DistrictId, PalikaId);
            return PartialView("_Search", model);
        }
        public IActionResult Details(int id)
        {
            var result = _ministry.GetMinistryById(id);
            return View(result);
        }

    }
}
