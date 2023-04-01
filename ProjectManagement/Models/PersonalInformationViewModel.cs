using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Models
{
    public class PersonalInformationViewModel
    {
       
        public int Id { get; set; }
        [Display(Name = "Name")]
        public string Name { get; set; }
        [Display(Name = "E-mail")]
        public string Email { get; set; }
        [Display(Name = "PhoneNumber")]
        public string PhoneNumber { get; set; }
        [Display(Name = "Photo")]
        public string Photo { get; set; }
        [Display(Name = "State Name")]
        public int StateId { get; set; }
        [Display(Name = "District Name")]
        public int DistrictId { get; set; }
        [Display(Name = "Palika Name")]
        public int PalikaId { get; set; }
        [Display(Name = "पालिका")]
        public string PalikaName { get; set; }
        [Display(Name = "जिल्ला")]
        public string DistrictName { get; set; }
        [Display(Name = "प्रदेश")]
        public string StateName { get; set; }
        public string Address { get; set; }
        public string Reference { get; set; }
        public string Remarks { get; set; }

        public bool IsActive { get; set; }

    }
}
