using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Models
{
    public class ServerViewModel
    {
        public int Id { get; set; }
        public String ServerName { get; set; }
        public bool IsActive { get; set; }
    }
}
