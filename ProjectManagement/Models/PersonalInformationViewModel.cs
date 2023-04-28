using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;

namespace ProjectManagement.Models
{
    public class PersonalInformationViewModel
    {
        public PersonalInformationViewModel()
        {
            List = new List<PersonalInformationViewModel>();
            PersonalInformationList = new List<PersonalInformationViewModel>();
        }

        public int Id { get; set; }
        [Required(ErrorMessage = "Name is required"),Display(Name ="Name")]
        
        public string Name { get; set; }
        [Display(Name = "E-mail")]
        public string Email { get; set; }
        [Display(Name = "PhoneNumber")]
        public string PhoneNumber { get; set; }
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
        [Display(Name = "Photo")]
        public string Photo { get; set; }
        public IFormFile ProfileImage { get; set; }
        public bool IsActive { get; set; }
        //For future or current goal
        public string CurrentScope { get; set; }
        public string FutureScope { get; set; }
      
        public List<PersonalInformationViewModel> PersonalInformationList { get; set; }
    }
    public class ConcernViewModel
    {
       
        public int ConcernId { get; set; }
        public string ConcernPerson { get; set; }
        public string Phone { get; set; }
        public string Post { get; set; }
        public int PersonalInformationId { get; set; }

    }
}

