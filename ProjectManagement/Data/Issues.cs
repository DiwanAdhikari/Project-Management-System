using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Data
{
    public class Issues
    {
        [Key]
        public int Id { get; set; }
        public int ProjectId { get; set; }
        public string OrganizationName { get; set; }
        public string ClientName { get; set; }
        public string ContactNumber { get; set; }
      
        public string BsStartDate { get; set; }
        public string BsEndDate { get; set; }
       
        public string IssueType { get; set; }
        public string Email { get; set; }

        public int StateId { get; set; }
        public int DistrictId { get; set; }
        public int PalikaId { get; set; }
        public string Issue { get; set; }
        public string Description { get; set; }
        public bool IsActive { get; set; }

    }
}
