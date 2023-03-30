using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Data
{
    public class ApplicationUser : IdentityUser
    {
        public string FullName { get; set; }
        public string DOB { get; set; }
        public DateTime? DOBAD { get; set; }
        public string Post { get; set; }
        public string Address { get; set; }
        public int? SubOfficeId { get; set; }
        public bool? IsActive { get; set; }
    }
}
