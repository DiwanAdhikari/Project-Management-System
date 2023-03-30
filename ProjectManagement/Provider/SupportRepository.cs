using Microsoft.EntityFrameworkCore;
using ProjectManagement.Data;
using ProjectManagement.Interface;
using ProjectManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Provider
{
    public class SupportRepository:ISupport
    {
        private readonly ApplicationDbContext _context;


        public SupportRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public int AddOrEdit(SupportViewModel model)
        {
            if (model.Id > 0)
            {
                var data = _context.Support.Where(e => e.Id == model.Id).FirstOrDefault();
                if (data != null)
                {
                    data.Id = model.Id;
                    data.ProjectId = model.ProjectId;
                    data.OrganizationName = model.OrganizationName;
                   
                    data.ContactedPerson = model.ContactedPerson;
                    data.ContactNumber = model.ContactNumber;
                    data.BsStartDate = model.BsStartDate;
                    data.ProblemStatus = model.ProblemStatus;
                    data.StateId = model.StateId;
                    data.DistrictId = model.DistrictId;
                    data.PalikaId = model.PalikaId;
                    data.Email = model.Email;
                    data.Error = model.Error;
                   
                    data.Details = model.Details;
                    data.SupportedById = model.SupportedById;
                    data.IsActive = true;


                }
                else
                {
                    return 0;
                }
            }
            else
            {
                var emp = new Support()
                {
                    Id = model.Id,
                    ProjectId = model.ProjectId,
                    OrganizationName = model.OrganizationName,
                   
                    ContactedPerson = model.ContactedPerson,
                    ContactNumber = model.ContactNumber,
                    BsStartDate = model.BsStartDate,
                    ProblemStatus = model.ProblemStatus,
                    StateId = model.StateId,
                    DistrictId = model.DistrictId,
                    PalikaId = model.PalikaId,
                    Error = model.Error,
                    Email = model.Email,
                    SupportedById = model.SupportedById,
                    Details = model.Details,

                    IsActive = true,

                };
                _context.Support.Add(emp);
            }

            var result = _context.SaveChanges();
            return result;
        }

        public int Delete(int id)
        {
            var data = _context.Support.Where(e => e.Id == id).FirstOrDefault();
            if (data != null)
            {
                data.IsActive = false;
                _context.Entry(data).State = EntityState.Modified;
            }
            var result = _context.SaveChanges();
            return result;
        }

        public SupportViewModel GetSupportById(int id)
        {
            var iss = _context.Support.Where(e => e.Id == id).Select(x => new SupportViewModel()
            {
                Id = x.Id,
                ProjectId = x.ProjectId,
                ProjectName = _context.Project.Where(y => y.Id == x.ProjectId).FirstOrDefault().ProjectName,
                OrganizationName = x.OrganizationName,

                ContactedPerson = x.ContactedPerson,
                ContactNumber = x.ContactNumber,
                BsStartDate = x.BsStartDate,
                ProblemStatus = x.ProblemStatus,
                StateId = x.StateId,
                DistrictId = x.DistrictId,
                PalikaId = x.PalikaId,
                Details = x.Details,
                Error = x.Error,
                Email = x.Email,
               SupportedById = x.SupportedById,
                IsActive = x.IsActive,
                PalikaName = _context.Palika.Where(y => y.PalikaId == x.PalikaId).Select(y => y.PalikaNameNep).FirstOrDefault(),
                DistrictName = _context.District.Where(y => y.DistrictId == x.DistrictId).Select(y => y.DistrictNameNep).FirstOrDefault(),
                StateName = _context.State.Where(y => y.StateId == x.StateId).Select(y => y.StateNameNep).FirstOrDefault(),



            }).FirstOrDefault();
            return iss;
        }

        public List<SupportViewModel> GetSupportList()
        {
            var result = _context.Support.Select(x => new SupportViewModel()
            {
                Id = x.Id,
                ProjectId = x.ProjectId,
                ProjectName = _context.Project.Where(y => y.Id == x.ProjectId).FirstOrDefault().ProjectName,
                OrganizationName = x.OrganizationName,
               
                ContactedPerson = x.ContactedPerson,
                ContactNumber = x.ContactNumber,
                BsStartDate = x.BsStartDate,
                ProblemStatus = x.ProblemStatus,
                StateId = x.StateId,
                StateName = _context.State.Where(z => z.StateId == x.StateId).Select(x => x.StateName).FirstOrDefault(),
                DistrictId = x.DistrictId,
                DistrictName = _context.District.Where(z => z.DistrictId == x.DistrictId).Select(x => x.DistrictName).FirstOrDefault(),
                PalikaId = x.PalikaId,
                PalikaName = _context.Palika.Where(z => z.PalikaId == x.PalikaId).Select(x => x.PalikaName).FirstOrDefault(),
                Error = x.Error,
                Email = x.Email,
                Details = x.Details,
                SupportedById = x.SupportedById,
                EmployeeName = _context.Employee.Where(y => y.Id == x.SupportedById).Select(x => x.EmployeeName).FirstOrDefault(),
                IsActive = x.IsActive,
            }).Where(x => x.IsActive == true).ToList();
            return result;
        }
    }
}
