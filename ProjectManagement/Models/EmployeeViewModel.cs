using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Models
{
    public class EmployeeViewModel
    {
        public int Id { get; set; }

        public string EmployeeName { get; set; }
        public string Designation { get; set; }

        public bool IsActive { get; set; }
    }
}
