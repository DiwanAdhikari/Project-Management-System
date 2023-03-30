using Microsoft.AspNetCore.Mvc;
using ProjectManagement.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Controllers
{
    public class AjaxController : Controller
    {
        private readonly IUtility _utility;

        public AjaxController(IUtility utility)
        {
            _utility = utility;
        }

        public async Task<JsonResult> GetDistrictByStateId(int id)
        {
            return Json(await _utility.GetSelectListDistrict(id));
        }

        public async Task<JsonResult> GetPalikaByDistId(int id)
        {
            return Json(await _utility.GetSelectListPalika(id));
        }

    }
}
