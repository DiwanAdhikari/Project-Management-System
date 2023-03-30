
using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ProjectManagement.Data
{
    public class Common
    {
        public class State
        {
            [Key]
            public int StateId { get; set; }
            public string StateName { get; set; }
            [Required]
            public string StateNameNep { get; set; }
            public string StateCode { get; set; }
        }

        public class District
        {
            [Key]
            public int DistrictId { get; set; }
            public string DistrictName { get; set; }
            [Required]
            public int StateId { get; set; }
            [Required]
            public string DistrictNameNep { get; set; }
            public string DistrictCode { get; set; }

            [ForeignKey("StateId")]
            public virtual State State { get; set; }
        }

        public class Palika
        {
            [Key]
            public int PalikaId { get; set; }
            [Required]
            public int DistrictId { get; set; }
            public string PalikaName { get; set; }
            [Required]
            public string PalikaNameNep { get; set; }
            public string PalikaCode { get; set; }

            [ForeignKey("DistrictId")]
            public virtual District District { get; set; }
        }

        public class Ward
        {
            [Key]
            public int Id { get; set; }
            public string Name { get; set; }
            public string Name_En { get; set; }
            public string Code { get; set; }
            public bool IsDefault { get; set; }
            public bool Status { get; set; }
            public int PalikaId { get; set; }
            public string CreatedBy { get; set; }
            public DateTime CreatedDate { get; set; }
            public string UpdatedBy { get; set; }
            public DateTime? UpdatedDate { get; set; }
            public string DeletedBy { get; set; }
            public DateTime? DeletedDate { get; set; }

            [ForeignKey("PalikaId")]
            public virtual Palika Palika { get; set; }
        }
       
    }
}
