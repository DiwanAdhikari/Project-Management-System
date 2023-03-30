using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Data
{
    public class AspUser
    {[Key]
        public string UserId { get; set; }
        public string UserName { get; set; }
        public string Email { get; set; }
        public string Roles { get; set; }
       
        public string IsActive { get; set; }
        public string Color { get; set; }
        public string IsActiveButton { get; set; }
    }
}
