using Microsoft.AspNetCore.Mvc;
using ProjectManagement.Interface;
using ProjectManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Controllers
{
    public class EmployeeController : Controller
    {
        private readonly IEmployee _employee;


        public EmployeeController(IEmployee employee)
        {
            _employee = employee;

        }
        public IActionResult Index()
        {
            var result = _employee.GetEmployeeList();
            return View(result);
        }


        public IActionResult AddOrEdit(int id = 0)
        {
            if (id == 0)
                return View(new EmployeeViewModel());
            else
                return View(_employee.GetEmployeeById(id));
        }
        [HttpPost]
        public IActionResult AddOrEdit(EmployeeViewModel proj)
        {
            var errors = ModelState.Where(x => x.Value.Errors.Count > 0).Select(x => new { x.Key, x.Value.Errors }).ToArray();
            if (ModelState.IsValid)
            {
                var result = _employee.AddOrEdit(proj);
                return RedirectToAction("Index");
            }
            return View();

        }

        public IActionResult Delete(int id)
        {
            var result = _employee.Delete(id);
            return RedirectToAction("Index");
        }
    }
}
