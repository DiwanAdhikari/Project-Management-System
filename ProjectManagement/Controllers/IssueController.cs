using Microsoft.AspNetCore.Mvc;
using ProjectManagement.Interface;
using ProjectManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Controllers
{
    public class IssueController : Controller
    {
        private readonly IIssues _issues;
        public IssueController (IIssues issues)
        {
            _issues = issues;
        }
        public IActionResult Index()
        {
            var result = _issues.GetIssuesList();
            return View(result);
        }
        public IActionResult AddOrEdit(int id = 0)
        {
            if (id == 0)
                return View(new IssuesViewModel());
            else
                return View(_issues.GetIssueById(id));
        }
        [HttpPost]
        public IActionResult AddOrEdit(IssuesViewModel proj)
        {
            var errors = ModelState.Where(x => x.Value.Errors.Count > 0).Select(x => new { x.Key, x.Value.Errors }).ToArray();
            if (ModelState.IsValid)
            {
                var result = _issues.AddOrEdit(proj);
                return RedirectToAction("Index");
            }
            return View();

        }
        public IActionResult Delete(int id)
        {
            var result = _issues.Delete(id);
            return RedirectToAction("Index");
        }
        public IActionResult Details(int id)
        {
            var result = _issues.GetIssueById(id);
            return View(result);
        }
    }
}
