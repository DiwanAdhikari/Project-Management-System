using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Data
{
    public class DemoLink
    {
        [Key]
        public int Id { get; set; }
        public string SoftwareName { get; set; }
        public string Email { get; set; }
        public string WebSite { get; set; }
        public string Description { get; set; }
        public bool IsActive { get; set; }
        public int DemoId { get; set; }
    }
}
