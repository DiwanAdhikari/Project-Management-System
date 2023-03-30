using Microsoft.AspNetCore.Mvc;
using ProjectManagement.Interface;
using ProjectManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Controllers
{
    public class SupportController : Controller
    {
        private readonly ISupport _support;
        public SupportController(ISupport support)
        {
            _support = support;
        }

        public IActionResult Index()
        {
            var result = _support.GetSupportList();
            return View(result);
        }
        public IActionResult AddOrEdit(int id = 0)
        {
            if (id == 0)
                return View(new SupportViewModel());
            else
                return View(_support.GetSupportById(id));
        }
        [HttpPost]
        public IActionResult AddOrEdit(SupportViewModel proj)
        {
            var errors = ModelState.Where(x => x.Value.Errors.Count > 0).Select(x => new { x.Key, x.Value.Errors }).ToArray();
            if (ModelState.IsValid)
            {
                var result = _support.AddOrEdit(proj);
                return RedirectToAction("Index");
            }
            return View();

        }
        public IActionResult Delete(int id)
        {
            var result = _support.Delete(id);
            return RedirectToAction("Index");
        }
        public IActionResult Details(int id)
        {
            var result = _support.GetSupportById(id);
            return View(result);
        }
    }
}
