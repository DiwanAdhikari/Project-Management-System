using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Data
{
    public class Server
    {
        [Key]
        public int Id { get; set; }
        public String ServerName { get; set; }      
        public bool IsActive { get; set; }
    }
}
