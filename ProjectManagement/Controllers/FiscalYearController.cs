using Microsoft.AspNetCore.Mvc;
using ProjectManagement.Data;
using ProjectManagement.Interface;
using ProjectManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Controllers
{
    public class FiscalYearController : Controller
    {
        private readonly IFiscalYear _fiscal = null;

        public FiscalYearController(IFiscalYear fiscal)
        {
            _fiscal = fiscal;
        }
        public async Task<IActionResult> FiscalList()
        {
            return View(await _fiscal.GetAllFiscalYear());
        }
        public async Task<IActionResult> CreateFiscal(int id = 0)
        {
            return View(await _fiscal.GetFiscalYearDetails(id));
        }
        [HttpPost]
        public async Task<IActionResult> CreateFiscal(FiscalYearViewModel model)
        {
            if (ModelState.IsValid)
            {
                if (await _fiscal.InsertUpdateFiscalYear(model))
                {
                    return RedirectToAction("FiscalList");
                }
            }
            return View(model);
        }
    }
}
