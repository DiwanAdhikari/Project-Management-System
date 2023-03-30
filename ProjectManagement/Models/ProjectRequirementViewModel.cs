using Microsoft.CodeAnalysis;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;
using static ProjectManagement.Data.Common;

namespace ProjectManagement.Models
{
    public class ProjectRequirementViewModel
    {
        public ProjectRequirementViewModel()
        {
            List = new List<ProjectRequirementViewModel>();
            RequirementList = new List<RequirementViewModel>();
        }
        public int Id { get; set; }
        [Display(Name = "Project Name")]
        public int ProjectId { get; set; }
        public string ClientName { get; set; }
        public string EmployeeName { get; set; }
        public string PalikaName { get; set; }
        public string DistrictName { get; set; }
        public string StateName { get; set; }
        [Display(Name = "State Name")]
        public int StateId { get; set; }
        [Display(Name = "District Name")]
        public int DistrictId { get; set; }
        [Display(Name = "Palika Name")]
        public int PalikaId { get; set; }
        public string Status { get; set; }
        public string Result { get; set; }

        public string ProjectName { get; set; }
        [Display(Name = "Assigned To")]
        public int ProjectAssignedTo { get; set; }
        public Nullable<System.DateTime> AdStartDate { get; set; }

        public Nullable<System.DateTime> AdEndDate { get; set; }

        public string Requirements { get; set; }
        [Display(Name = "Requirement Date")]
        public string BsStartDate { get; set; }
        public string BsEndDate { get; set; }
       
        public bool IsActive { get; set; }
       
        [ForeignKey("StateId")]
        public State State { get; set; }
        [ForeignKey("DistrictId")]
        public District District { get; set; }
        [ForeignKey("PalikaId")]
        public Palika Palika { get; set; }
        [ForeignKey("ProjectId")]
        public Project Project { get; set; }
        public List<ProjectRequirementViewModel> List { get; set; }
        public List<RequirementViewModel> RequirementList { get; set; }

    }

    public class RequirementViewModel
    {
        public int Id { get; set; }
        public string Requirements { get; set; }
        public int ProjectRequirementId { get; set; }
        public string Result { get; set; }
    }
}
