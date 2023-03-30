using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Models
{
    public class ContractViewModel
    {
        public ContractViewModel()
        {
            List = new List<ContractViewModel>();
        }
        public int Id { get; set; }
        [Display(Name ="Client Name")]
        public string ClientName { get; set; }
        [Display(Name ="Software Name")]
        public string SoftwareName { get; set; }
        [Display(Name = "Office Mail")]
        public string Email { get; set; }
        public string PhoneNumber { get; set; }
        public string ContractPerson { get; set; }
        [Display(Name = "Contract Date")]
        public string BsStartDate { get; set; }
        public string BsEndDate { get; set; }
        public bool IsActive { get; set; }
        public string Message { get; set; }

        public List<ContractViewModel> List { get; set; }

        //extra
        public string ToEmail { get; set; } = "alokkumar1158@gmail.com";
        public string Subject { get; set; } = "test";
        public string Body { get; set; } = "<h1>Hello Alok</h1>";

    }
}
