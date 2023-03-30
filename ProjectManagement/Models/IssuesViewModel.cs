using ProjectManagement.Data;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;
using static ProjectManagement.Data.Common;

namespace ProjectManagement.Models
{
    public class IssuesViewModel
    {
        public int Id { get; set; }
        [Display(Name ="Project Name")]
        public int ProjectId { get; set; }
        public string OrganizationName { get; set; }
        public string ClientName { get; set; }
        public string ContactNumber { get; set; }
        [Display(Name = "State Name")]
        public int StateId { get; set; }
        [Display(Name ="District Name")]
        public int DistrictId { get; set; }
        [Display(Name = "Palika Name")]
        public int PalikaId { get; set; }
        public string PalikaName { get; set; }
        public string DistrictName { get; set; }
        public string StateName { get; set; }
        public string ProjectName { get; set; }
        [Required, Display(Name = "Issue Date")]
        public string BsStartDate { get; set; }
        public string BsEndDate { get; set; }
        public Nullable<System.DateTime> AdStartDate { get; set; }
      
        public Nullable<System.DateTime> AdEndDate { get; set; }

        public string IssueType { get; set; }
        public string Email { get; set; }

        public string Issue { get; set; }
        public string Description { get; set; }
        public bool IsActive { get; set; }
        [ForeignKey("ProjectId")]
        public Project Project { get; set; }
       
        [ForeignKey("StateId")]
        public State State { get; set; }
        [ForeignKey("DistrictId")]
        public District District { get; set; }
        [ForeignKey("PalikaId")]
        public Palika Palika { get; set; }
    }
}
