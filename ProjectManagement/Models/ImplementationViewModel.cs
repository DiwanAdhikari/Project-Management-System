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
    public class ImplementationViewModel
    {
        
        public int Id { get; set; }
        [Display(Name = "Project Name")]
        [Required]
        public int ProjectId { get; set; }
        [Display(Name ="Fiscal Year")]
        public int FiscalYearId { get; set; }
        public string FiscalYearName { get; set; }
        [Display(Name ="State Name")]
        public int StateId { get; set; }
        [Display(Name ="District Name")]
        public int DistrictId { get; set; }
        [Display(Name ="Palika Name")]
        public int PalikaId { get; set; }

        public string ContactPerson { get; set; }
        public string PhoneNumber { get; set; }
        public string Email { get; set; }
       
        public string ImplementedBy { get; set; }
        public string ImplementedDate { get; set; }
        public string Description { get; set; }

        [Column(TypeName = "decimal(18, 2)")]
       
        [Required]
        public decimal ProjectAmount { get; set; }

        public int ProjectFinalizedBy { get; set; }
        public string PalikaName { get; set; }
        public string DistrictName { get; set; }
        public string StateName { get; set; }
        public string ProjectName { get; set; }
        public string EmployeeName { get; set; }
        public string Ward { get; set; }

        public string CreatedBy { get; set; }
        public DateTime CreatedDate { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime ModifiedDate { get; set; }
        public bool IsActive { get; set; }

        public string Feedback { get; set; }

        [ForeignKey("ProjectId")]
        public Project Project { get; set; }
        [ForeignKey("FiscalYearId")]
        public FiscalYear FiscalYear { get; set; }
        [ForeignKey("StateId")]
        public State State { get; set; }
        [ForeignKey("DistrictId")]
        public District District { get; set; }
        [ForeignKey("PalikaId")]
        public Palika Palika { get; set; }
        [ForeignKey("ProjectFinalizedBy")]
        public Employee Employee { get; set; }

    }
}
