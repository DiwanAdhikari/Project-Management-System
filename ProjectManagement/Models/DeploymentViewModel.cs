using Microsoft.CodeAnalysis;
using ProjectManagement.Data;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;
using static ProjectManagement.Data.Common;
using Project = ProjectManagement.Data.Project;

namespace ProjectManagement.Models
{
    public class DeploymentViewModel
    {
        public DeploymentViewModel()
        {
            List = new List<DeploymentViewModel>();
            ProjectList = new List<AddProjectViewModel>();
        }
        public int Id { get; set; }
        public string ClientName { get; set; }
        public string PhoneNumber { get; set; }
        public int ProjectId { get; set; }

        public string ProjectName { get; set; }
      
        public string EmployeeName { get; set; }
        [Display(Name = "Deployed By")]
        public int DeploymentBy { get; set; }      
        public string ServerName { get; set; }
        public string PalikaName { get; set; }
        public string DistrictName { get; set; }
        public string StateName { get; set; }
        [Display(Name = "Server")]
        public int ServerId { get; set; }
        [Display(Name = "State Name")]
        public int StateId { get; set; }
        [Display(Name = "District Name")]
        public int DistrictId { get; set; }
        [Display(Name = "Palika Name")]
        public int PalikaId { get; set; }
        [Display(Name = "Deployed Date")]
        public string BsStartDate { get; set; }
        public string Remarks { get; set; }
        public bool IsActive { get; set; }
        [ForeignKey("ServerId")]
        public Server Server { get; set; }
        [ForeignKey("StateId")]
        public State State { get; set; }
        [ForeignKey("DistrictId")]
        public District District { get; set; }
        [ForeignKey("PalikaId")]
        public Palika Palika { get; set; }
        [ForeignKey("ProjectId")]
        public Project Project { get; set; }
        public List<DeploymentViewModel> List { get; set; }
        public List<AddProjectViewModel> ProjectList { get; set; }

        public string ProjectNameList { get; set; }
    }
    public class AddProjectViewModel
    {
        public int Id { get; set; }
        // public int AddProjectId { get; set; }
        public string ProjectName { get; set; }
        [Display(Name = "Project Name")]
        public int ProjectId { get; set; }
        public int DeploymentId { get; set; }
       
        
       
    }
}
