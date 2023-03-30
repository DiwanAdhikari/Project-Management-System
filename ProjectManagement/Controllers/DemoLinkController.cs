using Microsoft.AspNetCore.Mvc;
using ProjectManagement.Interface;
using ProjectManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Controllers
{
    public class DemoLinkController : Controller
    {
        private readonly IDemoLink _demoLink;
        private readonly IDemo _demo;
        public DemoLinkController(IDemoLink demoLink ,IDemo demo)
        {
              _demoLink = demoLink;
            _demo = demo;
        }

        //
        //public IActionResult DemoListIndex(int id)
        //{
        //    ViewBag.id = id;
        //    var result = _demoLink.GetDemoLinkList(id);
        //    return View(result);
        //}

        //public IActionResult CreateDemoLink(int Demoid)
        //{
        //    DemoLinkViewModel model = new DemoLinkViewModel();
        //    model.DemoId = Demoid;
        //    return View(model);
        //}
        //[HttpPost]
        //public IActionResult CreateDemoLink(DemoLinkViewModel model)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        var result = _demoLink.CreateDemoLink(model);
        //        RedirectToAction("DemoListIndex", new { Demoid = model.DemoId });
        //    }
        //    return View();

        //}
        //public IActionResult Delete(int id)
        //{
        //    var result = _demoLink.Delete(id);
        //    return RedirectToAction("DemoLinkIndex");
        //}
        //

        public IActionResult DemoListIndex(int Demoid)
        {
            //  ViewBag.id = Demoid;
            DemoLinkViewModel model = new DemoLinkViewModel();
            TempData["Demoid"] = Demoid;
            model.SoftwareName = _demo.GetDemoById(Demoid).SoftwareName;
            model.DemoId = Demoid;
            model.list = _demoLink.GetDemoLinkList(Demoid);
            return View(model);
        }


        public IActionResult CreateDemoLink(int id=0)
        {
            if (id == 0)
            {
                DemoLinkViewModel model = new DemoLinkViewModel();
                model.DemoId = Convert.ToInt32(TempData["Demoid"]);         
                return View(model);
            }
            else
            {
           
                return View(_demoLink.GetDemoLinkById(id));
            }
              
        }
        [HttpPost]
        public IActionResult CreateDemoLink(DemoLinkViewModel link)
        {
            var errors = ModelState.Where(x => x.Value.Errors.Count > 0).Select(x => new { x.Key, x.Value.Errors }).ToArray();
            if (ModelState.IsValid)
            {
                //var Demoid = ViewData["Demoid"];
                //DemoLinkViewModel model = new DemoLinkViewModel();
                //model.DemoId = Convert.ToInt32(Demoid);
                var result = _demoLink.CreateDemoLink(link);
                return RedirectToAction("DemoListIndex",new { Demoid= link.DemoId});
            }
            return View();

        }

        public IActionResult Delete(int id)
        {
            var result = _demoLink.Delete(id);
            return RedirectToAction("DemoListIndex", new { Demoid =result});
        }
        public IActionResult Details(int id)
        {
            var result = _demoLink.GetDemoLinkById(id);
            return View(result);
        }
    }

}

    
