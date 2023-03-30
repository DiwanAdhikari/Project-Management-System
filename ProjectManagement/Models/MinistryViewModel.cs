using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;
using static ProjectManagement.Data.Common;

namespace ProjectManagement.Models
{
    public class MinistryViewModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public string PhoneNumber { get; set; }
        public string Email { get; set; }
        public string Priority { get; set; }
        public int PriorityId { get; set; }
        public string WebSite { get; set; }
        public string ContactPerson { get; set; }
        public int StateId { get; set; }
        public int DistrictId { get; set; }
        public int PalikaId { get; set; }
        public string PalikaName { get; set; }
        public string DistrictName { get; set; }
        public string StateName { get; set; }
        [ForeignKey("StateId")]
        public State State { get; set; }
        [ForeignKey("DistrictId")]
        public District District { get; set; }
        [ForeignKey("PalikaId")]
        public Palika Palika { get; set; }
        public bool IsActive { get; set; }
        public List<MinistryViewModel> List { get; set; }
    }
}
