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
    public class ImplementationRepository : IImplementation
    {

        private readonly ApplicationDbContext _context;


        public ImplementationRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public int AddOrEdit(ImplementationViewModel model)
        {
            if (model.Id > 0)
            {
                var data = _context.ImplementatedSoftwares.Where(e => e.Id == model.Id).FirstOrDefault();
                if (data != null)
                {
                    data.Id = model.Id;
                    data.ProjectId = model.ProjectId;
                   // data.ProjectName = model.ProjectName;
                    data.StateId = model.StateId;
                    data.DistrictId = model.DistrictId;
                    data.PalikaId = model.PalikaId;
                    //data.ProjectType = model.ProjectType;
                    //data.Status = model.Status;
                    data.Email = model.Email;                    
                    data.FiscalYearId = model.FiscalYearId;
                    data.ContactPerson = model.ContactPerson;
                    data.PhoneNumber = model.PhoneNumber;
                    data.Description = model.Description;
                    data.ProjectAmount = model.ProjectAmount;
                    data.ProjectFinalizedBy = model.ProjectFinalizedBy;
                 
                    data.Feedback = model.Feedback;
                    data.ContactPerson = model.ContactPerson;
                    data.IsActive = true;
                    data.ModifiedBy = model.ModifiedBy;
                    data.ModifiedDate = DateTime.Now;

                }
                else
                {
                    return 0;
                }
            }
            else
            {
                var emp = new ImplementatedSoftwares()
                {
                    ProjectId = model.ProjectId,
                    //ProjectName=model.ProjectName,
                    StateId = model.StateId,
                    DistrictId = model.DistrictId,
                    PalikaId = model.PalikaId,
                    //ProjectType = model.ProjectType,
                    //Status = model.Status,
                    Email = model.Email,                   
                    FiscalYearId=model.FiscalYearId,
                    ContactPerson = model.ContactPerson,
                    PhoneNumber = model.PhoneNumber,
                    Description = model.Description,
                    ProjectAmount = model.ProjectAmount,
                    ProjectFinalizedBy = model.ProjectFinalizedBy,
                  
                    Feedback = model.Feedback,
                    IsActive = true,
                    ModifiedBy = model.ModifiedBy,
                    ModifiedDate = DateTime.Now,
                };
                _context.ImplementatedSoftwares.Add(emp);
            }

            var result = _context.SaveChanges();
            return result;

        }

        public int Delete(int id)
        {
            var data = _context.ImplementatedSoftwares.Where(e => e.Id == id).FirstOrDefault();
            if (data != null)
            {
                data.IsActive = false;
                _context.Entry(data).State = EntityState.Modified;
            }
            var result = _context.SaveChanges();
            return result;
        }

        public ImplementationViewModel GetImplementedSoftwaresById(int id)
        {
            var emp = _context.ImplementatedSoftwares.Where(e => e.Id == id).Select(x => new ImplementationViewModel()
            {
                Id = x.Id,
                ProjectId = x.ProjectId,
                ProjectName = _context.Project.Where(y => y.Id == x.ProjectId).FirstOrDefault().ProjectName,
                FiscalYearName = _context.FiscalYear.Where(y => y.Id == x.FiscalYearId).FirstOrDefault().Name,
                //ProjectName =x.ProjectName,
                //ProjectType = x.ProjectType,
                StateId = x.StateId,
                DistrictId = x.DistrictId,
                PalikaId = x.PalikaId,
                CreatedBy = x.CreatedBy,           
                CreatedDate = x.CreatedDate,
                Description = x.Description,
                PhoneNumber = x.PhoneNumber,
                ContactPerson = x.ContactPerson,
                //Status = x.Status,
                Email = x.Email, 
               
                FiscalYearId=x.FiscalYearId,
                ImplementedBy = x.ImplementedBy,
                ImplementedDate = x.ImplementedDate,
                ModifiedBy = x.ModifiedBy,
                ModifiedDate = x.ModifiedDate,
                ProjectAmount = x.ProjectAmount,
                ProjectFinalizedBy = x.ProjectFinalizedBy,
                Feedback = x.Feedback,
                //ContactedPerson = x.ContactedPerson,
                IsActive = x.IsActive,
                PalikaName = _context.Palika.Where(y=>y.PalikaId==x.PalikaId).Select(y=>y.PalikaNameNep).FirstOrDefault(),
                DistrictName = _context.District.Where(y=>y.DistrictId==x.DistrictId).Select(y=>y.DistrictNameNep).FirstOrDefault(),
                StateName = _context.State.Where(y=>y.StateId==x.StateId).Select(y=>y.StateNameNep).FirstOrDefault(),
                

            }).FirstOrDefault();
            return emp;
        }

        public List<ImplementationViewModel> GetImplementedSoftwaresList()
        {
            var result = _context.ImplementatedSoftwares.Select(x => new ImplementationViewModel()
            {
                Id = x.Id,   
                ProjectId = x.ProjectId,
                ProjectName = _context.Project.Where(y => y.Id == x.ProjectId).FirstOrDefault().ProjectName,
           
                StateId = x.StateId,
                StateName = _context.State.Where(z => z.StateId == x.StateId).Select(x => x.StateName).FirstOrDefault(),
                DistrictId = x.DistrictId,
                DistrictName = _context.District.Where(z => z.DistrictId == x.DistrictId).Select(x => x.DistrictName).FirstOrDefault(),
                PalikaId = x.PalikaId,
                PalikaName = _context.Palika.Where(z=> z.PalikaId == x.PalikaId).Select(x => x.PalikaName).FirstOrDefault(),               
                CreatedBy = x.CreatedBy,
                CreatedDate = x.CreatedDate,
               
                Description = x.Description,
                PhoneNumber = x.PhoneNumber,
                ContactPerson = x.ContactPerson,
               
                Email = x.Email,               
              
                ImplementedBy = x.ImplementedBy,
                ImplementedDate = x.ImplementedDate,
                ModifiedBy = x.ModifiedBy,
                ModifiedDate = x.ModifiedDate,
                ProjectAmount = x.ProjectAmount,
                ProjectFinalizedBy = x.ProjectFinalizedBy,
                EmployeeName=_context.Employee.Where(y =>y.Id == x.ProjectFinalizedBy).Select(x =>x.EmployeeName).FirstOrDefault(),
                
                Feedback = x.Feedback,
             
                IsActive = x.IsActive,
            }).Where(x => x.IsActive == true).ToList();
            return result;
        }
    }
}















