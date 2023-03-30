using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using MailKit;
using Microsoft.AspNetCore.Identity.UI.Services;
using Microsoft.AspNetCore.Mvc;
using ProjectManagement.Interface;
using ProjectManagement.Models;

namespace ProjectManagement.Controllers
{
    public class ContractController : Controller
    {

        private readonly IContract _contract;
        private readonly IEmailSender _emailSender;
        public ContractController(IContract contract , IEmailSender emailSender)
        {
            _contract = contract;
            _emailSender = emailSender;
        }
        public IActionResult Index()
        {
            ContractViewModel model = new ContractViewModel();
            model.List= _contract.GetContractList();
            return View(model);
        }
        public IActionResult AddOrEdit(int id = 0)
        {
            if (id == 0)
                return View(new ContractViewModel());
            else
                return View(_contract.GetContractById(id));
        }
        [HttpPost]
        public IActionResult AddOrEdit(ContractViewModel proj)
        {
            var errors = ModelState.Where(x => x.Value.Errors.Count > 0).Select(x => new { x.Key, x.Value.Errors }).ToArray();
            if (ModelState.IsValid)
            {
                var result = _contract.AddOrEdit(proj);
                return RedirectToAction("Index");
            }
            return View();

        }
        public IActionResult Delete(int id)
        {
            var result = _contract.Delete(id);
            return RedirectToAction("Index");
        }
        public IActionResult Details(int id)
        {
            var result = _contract.GetContractById(id);
            return View(result);
        }

        public IActionResult SentMail()
        {
            return PartialView("_SentMail",new MailRequest());
        }
        [HttpPost]
        public IActionResult SentMail(string Email, string Subject, string Body)
        {
            string email = Email;
            string subject = Subject;
            string htmlMessage = Body;
            _emailSender.SendEmailAsync(email, subject, htmlMessage);
            return RedirectToAction("Index");
        }

    }

}
