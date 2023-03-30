using Microsoft.AspNetCore.Mvc;
using ProjectManagement.Interface;
using ProjectManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Controllers
{
    public class DemoController : Controller
    {

        private readonly IDemo _demo;
        private readonly IDemoLink _demoLink;
      


        public DemoController(IDemo demo,IDemoLink demoLink)
        {
            _demo = demo;
            _demoLink = demoLink;



        }

        public  IActionResult Index()
        {
            var result = _demo.GetDemoList();
            return View(result);
        }


        public IActionResult AddOrEdit(int id = 0)
        {
            if (id == 0)
                return View(new DemoViewModel());
            else
                return View(_demo.GetDemoById(id));
        }
        [HttpPost]
        public IActionResult AddOrEdit(DemoViewModel link)
        {
            var errors = ModelState.Where(x => x.Value.Errors.Count > 0).Select(x => new { x.Key, x.Value.Errors }).ToArray();
            if (ModelState.IsValid)
            {
                var result = _demo.AddOrEdit(link);
                return RedirectToAction("Index");
            }
            return View();

        }

        public IActionResult Delete(int id)
        {
            var result = _demo.Delete(id);
            return RedirectToAction("Index");
        }
        public IActionResult Details(int id)
        {
            var result = _demo.GetDemoById(id);
            return View(result);
        }

        //public IActionResult DemoListIndex(int Demoid)
        //{
        //    ViewBag.DemoId = Demoid;
        //    var result = _demoLink.GetDemoLinkList(Demoid);
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
        //        var result = _demoLink.AddOrEdit(model);
        //        RedirectToAction("DemoListIndex",new { Demoid = model.DemoId});
        //    }
        //    return View();

        //}
        //public IActionResult DeleteDemo(int id)
        //{
        //    var result = _demoLink.Delete(id);
        //    return RedirectToAction("DemoLinkIndex");
        //}
    }

}
