using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Models
{
    public class ProjectTypeViewModel
    {
        public int ProjectTypeId { get; set; }

        public string ProjectTypeName { get; set; }

        public string CreatedBy { get; set; }

        public DateTime CreatedDate { get; set; }
        public bool IsActive { get; set; }

    }
}
