using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using ProjectManagement.Interface;
using ProjectManagement.Models;

namespace ProjectManagement.Controllers
{
    public class ServerController : Controller
    {
        private readonly IServer _server;


        public ServerController(IServer serv)
        {
            _server = serv;

        }
        public IActionResult Index()
        {
            var result = _server.GetServerList();
            return View(result);
        }
        public IActionResult AddOrEdit(int id = 0)
        {
            if (id == 0)
                return View(new ServerViewModel());
            else
                return View(_server.GetServerById(id));
        }
        [HttpPost]
        public IActionResult AddOrEdit(ServerViewModel serv)
        {
            var errors = ModelState.Where(x => x.Value.Errors.Count > 0).Select(x => new { x.Key, x.Value.Errors }).ToArray();
            if (ModelState.IsValid)
            {
                var result = _server.AddOrEdit(serv);
                return RedirectToAction("Index");
            }
            return View();

        }

        public IActionResult Delete(int id)
        {
            var result = _server.Delete(id);
            return RedirectToAction("Index");
        }


    }

}
