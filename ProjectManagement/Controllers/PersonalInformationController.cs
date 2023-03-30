using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web.Mvc;
using Microsoft.AspNetCore.Mvc;
using ProjectManagement.Models;

namespace ProjectManagement.Controllers
{
    public class PersonalInformationController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult AddOrEdit(int id = 0)
        {
            if (id == 0)
                return View(new PersonalInformationViewModel());
            else
                return View((id));

        }
    }
    [HttpPost]
    public IActionResult AddOrEdit(IssuesViewModel proj)
    {
     
        var errors = ModelState.Where(x => x.Value.Errors.Count > 0).Select(x => new { x.Key, x.Value.Errors }).ToArray();
        if (ModelState.IsValid)
        {
            var result = _issues.AddOrEdit(proj);
            return RedirectToActionResult("Index");
        }
        return View();

    }

}
