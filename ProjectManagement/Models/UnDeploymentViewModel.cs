using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;
using static ProjectManagement.Data.Common;

namespace ProjectManagement.Models
{
    public class UnDeploymentViewModel
    {
        public UnDeploymentViewModel()
        {
            List = new List<UnDeploymentViewModel>();
        }
        public int Id { get; set; }
        [Display(Name = "Project Name")]
        public int ProjectId { get; set; }
        public string ProjectName { get; set; }
        [Display(Name = "State Name")]
        public int StateId { get; set; }
        [Display(Name = "District Name")]
        public int DistrictId { get; set; }
        public int PalikaId { get; set; }
        public string PalikaName { get; set; }
        public string DistrictName { get; set; }
        public string StateName { get; set; }
        public bool IsActive { get; set; }
        [ForeignKey("StateId")]
        public State State { get; set; }
        [ForeignKey("DistrictId")]
        public District District { get; set; }
        [ForeignKey("PalikaId")]
        public Palika Palika { get; set; }
        public List<UnDeploymentViewModel> List { get; set; }
    }
}
