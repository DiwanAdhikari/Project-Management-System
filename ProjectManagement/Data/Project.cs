using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Data
{
    public class Project
    {
        [Key]
        public int Id { get; set; }
        
       
        public string ProjectName { get; set; }
        public string Description { get; set; }
        public int ProjectTypeId { get; set; }
        public string ProjectTypeName { get; set; }   

        [ForeignKey("ProjectTypeId")]
        public ProjectType ProjectType { get; set; }
        public bool IsActive { get; set; }

    }
}
