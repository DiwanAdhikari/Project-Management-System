using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;
using static ProjectManagement.Data.Common;

namespace ProjectManagement.Data
{
    public class ProjectRequirement
    {
        [Key]
        public int Id {get; set;}
        public int ProjectId { get; set; }
        public string ClientName { get; set; }
        public string EmployeeName { get; set; }
        public string ProjectName { get; set; }
        public DateTime RequirementDate { get; set; }
        public string Requirements { get; set; }
        public int StateId { get; set; }
        public int DistrictId { get; set; }
        public int PalikaId { get; set; }
        public string BsStartDate { get; set; }
        public string BsEndDate { get; set; }
        public string Status { get; set; }
        public int? ProjectAssignedTo { get; set; }
   

        public bool IsActive { get; set; }
        [ForeignKey("StateId")]
        public State State { get; set; }
        [ForeignKey("DistrictId")]
        public District District { get; set; }
        [ForeignKey("PalikaId")]
        public Palika Palika { get; set; }
        [ForeignKey("ProjectId")]
        public Project Project { get; set; }

     }
    public class Requirement
    {
        [Key]
        public int RequirementId { get; set; }
        public string Requirements { get; set; }
        public string Result { get; set; }
        public int ProjectRequirementId { get; set; }
        [ForeignKey("ProjectRequirementId")]
        public ProjectRequirement ProjectRequirement { get; set; }
    }
}
