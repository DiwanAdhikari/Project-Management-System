using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Data
{
    public class Contract
    {
        [Key]
        public int Id { get; set;}
        public string ClientName { get; set; }
        public string SoftwareName { get; set; }
        public string Email { get; set; }
        public string PhoneNumber { get; set; }
        public string ContractPerson { get; set; }
        public string BsStartDate { get; set; }
        public string BsEndDate { get; set; }
        public bool IsActive { get; set; }

    }
}
