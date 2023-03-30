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
        public string Name { get; set; }
        [Display(Name = "Name")]
        public string Email { get; set; }
        [Display(Name = "E-mail")]
        public string PhoneNumber { get; set; }
        [Display(Name = "PhoneNumber")]
        public string Photo { get; set; }
        [Display(Name = "Photo")]
        public int StateId { get; set; }
        [Display(Name = "State Name")]
        public int DistrictId { get; set; }
        [Display(Name = "District Name")]
        public int PalikaId { get; set; }
        [Display(Name = "Palika Name")]
        public string Address { get; set; }
        public bool IsActive { get; set; }

    }
}
