using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Data
{
    public class Employee
    {
        [Key]
        public int Id { get; set; }


        public string EmployeeName { get; set; }
        public string Designation { get; set; }
        public bool IsActive { get; set; }

    }
}
