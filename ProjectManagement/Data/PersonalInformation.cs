using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;
using static ProjectManagement.Data.Common;

namespace ProjectManagement.Data
{
    public class PersonalInformation
    {
       
        [Key]
        public int Id { get; set; }
        [Required]
        public string Name { get; set; }
        public string Email { get; set; }
        public string Reference { get; set; }
        public string Remarks { get; set; }
        public string PhoneNumber { get; set; }
        public string Photo { get; set; }
        public int StateId { get; set; }
        public int DistrictId { get; set; }
        public int PalikaId { get; set; }
        public string Address { get; set; }
        [ForeignKey("StateId")]
        public State State { get; set; }
        [ForeignKey("DistrictId")]
        public District District { get; set; }
        [ForeignKey("StateId")]
        public Palika Palika { get; set; }
        public bool IsActive { get; set; }
        //For future or current goal
        public string CurrentScope { get; set; }
        public string FutureScope { get; set; }
    }
    public class Concern
    {
        [Key]
        public int ConcernId { get; set; }
        public string ConcernPerson { get; set; }
        public string Phone { get; set; }
        public string Post { get; set; }
        public int PersonalInformationId { get; set; }
        [ForeignKey("PersonalInformationId")]
        public Concern ProjectRequirement { get; set; }
    }
}
