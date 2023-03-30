using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Models
{
    public class UserListViewModel
    {
        public string Id { get; set; }
        [Display(Name = "FullName")]
        public string Name { get; set; }
        [Display(Name = "Username")]
        public string UserName { get; set; }
        [Display(Name = "Role")]
        public string Role { get; set; }
        [Display(Name = "Sub-Office")]
        public string SubOffice { get; set; }
        [Display(Name = "Status")]
        public bool Active { get; set; }
    }
}
