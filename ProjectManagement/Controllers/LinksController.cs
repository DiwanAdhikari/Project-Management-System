using Microsoft.AspNetCore.Mvc;
using ProjectManagement.Interface;
using ProjectManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Controllers
{
    public class LinksController : Controller
    {

        private readonly ILinks _link;
        private readonly IMinistry _ministry;


        public LinksController(ILinks link, IMinistry ministry)
        {
            _link = link;
            _ministry=ministry;

        }

        public async Task<IActionResult> Index()
        {
            var result = await _link.GetLinksList();
            return View(result);
        }


        public IActionResult AddOrEdit(int id = 0)
        {
            if (id == 0)
                return View(new LinksViewModel());
            else
                return View(_link.GetLinksById(id));
        }
        [HttpPost]
        public IActionResult AddOrEdit(LinksViewModel link)
        {
            var errors = ModelState.Where(x => x.Value.Errors.Count > 0).Select(x => new { x.Key, x.Value.Errors }).ToArray();
            if (ModelState.IsValid)
            {
                var result = _link.AddOrEdit(link);
                return RedirectToAction("Index");
            }
            return View();

        }

        public IActionResult Delete(int id)
        {
            var result = _link.Delete(id);
            return RedirectToAction("Index");
        }
        public IActionResult Details(int id)
        {
            var result = _link.GetLinksById(id);
            return View(result);
        }

    }

}

