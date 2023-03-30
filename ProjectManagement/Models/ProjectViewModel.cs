using ProjectManagement.Data;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Models
{
    public class ProjectViewModel
    {
        public int Id { get; set; }
        [Display(Name="Project Type")]
        public int ProjectTypeId { get; set; }
        public string ProjectTypeName { get; set; }

        public string ProjectName { get; set; }
        public string Description { get; set; }

        [ForeignKey("ProjectTypeId")]
        public ProjectType ProjectType { get; set; }
        public bool IsActive { get; set; }

    }
}
