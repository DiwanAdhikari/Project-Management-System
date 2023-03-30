using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;
using static ProjectManagement.Data.Common;

namespace ProjectManagement.Data
{
    public class Deployment
    { 
        [Key]
        public int Id { get; set; }
        public string ClientName { get; set; }
        public string PhoneNumber { get; set; }
        public string EmployeeName { get; set; }
        public int ProjectId { get; set; }      
        public int DeploymentBy { get; set; }
        public string BsStartDate { get; set; }
        public string Remarks { get; set; }
        public string ProjectName { get; set; }
        //public int DeployedServer { get; set; }
        public string ServerName { get; set; }
        public int StateId { get; set; }
        public int DistrictId { get; set; }
        public int PalikaId { get; set; }
        public int ServerId { get; set; }
        public string ProjectNameList { get; set; }
        public bool IsActive { get; set; }
        [ForeignKey("ServerId")]
        public Server Server { get; set; }
        [ForeignKey("StateId")]
        public State State { get; set; }
        [ForeignKey("DistrictId")]
        public District District { get; set; }
        [ForeignKey("PalikaId")]
        public Palika Palika { get; set; }
       


    }
    public class AddProject
    {
        [Key]
        public int AddProjectId { get; set; }
        public int ProjectId { get; set; }      
        public String ProjectName { get; set; }      
        public int DeploymentId { get; set; }
        [ForeignKey("DeploymentId")]
        public Deployment Deployment { get; set; }
        [ForeignKey("ProjectId")]
        public Project Project { get; set; }
    }
}
