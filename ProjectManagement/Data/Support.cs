using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Data
{
    public class Support
    {
        [Key]

        public int Id { get; set; }
        public int ProjectId { get; set; }
        public string OrganizationName { get; set; }
        public string ContactedPerson { get; set; }
        public string ContactNumber { get; set; }

        public string BsStartDate { get; set; }
        public int SupportedById { get; set; }
        public string ProblemStatus {get; set;}
              

        public int StateId { get; set; }
        public int DistrictId { get; set; }
        public int PalikaId { get; set; }
        public string Error { get; set; }
        public string Email { get; set; }
        public string Details { get; set; }
        public bool IsActive { get; set; }
    }
}
