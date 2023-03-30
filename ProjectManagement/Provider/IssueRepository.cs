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
    public class IssueRepository : IIssues
    {
        private readonly ApplicationDbContext _context;


        public IssueRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public int AddOrEdit(IssuesViewModel model)
        {

            if (model.Id > 0)
            {
                var data = _context.Issues.Where(e => e.Id == model.Id).FirstOrDefault();
                if (data != null)
                {
                    data.Id = model.Id;
                    data.ProjectId = model.ProjectId;
                    data.OrganizationName = model.OrganizationName;
                    data.IssueType = model.IssueType;
                    data.ClientName = model.ClientName;
                    data.ContactNumber = model.ContactNumber;
                    data.BsStartDate = model.BsStartDate;
                    data.BsEndDate = model.BsEndDate;
                    data.StateId = model.StateId;
                    data.DistrictId = model.DistrictId;
                    data.PalikaId = model.PalikaId;
                    data.Issue = model.Issue;
                    data.Email = model.Email;
                    data.Description = model.Description;
                    data.IsActive = true;


                }
                else
                {
                    return 0;
                }
            }
            else
            {
                var emp = new Issues()
                {
                    Id = model.Id,
                ProjectId = model.ProjectId,
                OrganizationName = model.OrganizationName,
                IssueType = model.IssueType,
                ClientName = model.ClientName,
                ContactNumber = model.ContactNumber,
                BsStartDate = model.BsStartDate,
                BsEndDate = model.BsEndDate,
                StateId = model.StateId,
                DistrictId = model.DistrictId,
                PalikaId = model.PalikaId,
                Issue = model.Issue,
                Email = model.Email,
                Description = model.Description,

                IsActive = true,

                };
                _context.Issues.Add(emp);
            }

            var result = _context.SaveChanges();
            return result;
        }

        public int Delete(int id)
        {
            var data = _context.Issues.Where(e => e.Id == id).FirstOrDefault();
            if (data != null)
            {
                data.IsActive = false;
                _context.Entry(data).State = EntityState.Modified;
            }
            var result = _context.SaveChanges();
            return result;
        }

        public IssuesViewModel GetIssueById(int id)
        {
            var iss = _context.Issues.Where(e => e.Id == id).Select(x => new IssuesViewModel()
            {
                Id = x.Id,
                ProjectId = x.ProjectId,
                ProjectName = _context.Project.Where(y => y.Id == x.ProjectId).FirstOrDefault().ProjectName,
                OrganizationName = x.OrganizationName,
                IssueType = x.IssueType,
                ClientName = x.ClientName,
                ContactNumber = x.ContactNumber,
                BsStartDate = x.BsStartDate,
                BsEndDate = x.BsEndDate,
                StateId = x.StateId,
                DistrictId = x.DistrictId,
                PalikaId = x.PalikaId,
                Description = x.Description,
                Issue = x.Issue,
                Email = x.Email,
                IsActive = x.IsActive,
                PalikaName = _context.Palika.Where(y => y.PalikaId == x.PalikaId).Select(y => y.PalikaNameNep).FirstOrDefault(),
                DistrictName = _context.District.Where(y => y.DistrictId == x.DistrictId).Select(y => y.DistrictNameNep).FirstOrDefault(),
                StateName = _context.State.Where(y => y.StateId == x.StateId).Select(y => y.StateNameNep).FirstOrDefault(),



            }).FirstOrDefault();
            return iss;
        }

        public List<IssuesViewModel> GetIssuesList()
        {

            var result = _context.Issues.Select(x => new IssuesViewModel()
            {
                Id = x.Id,
                ProjectId = x.ProjectId,
                ProjectName = _context.Project.Where(y => y.Id == x.ProjectId).FirstOrDefault().ProjectName,
                OrganizationName = x.OrganizationName,
                IssueType = x.IssueType,
                ClientName = x.ClientName,
                ContactNumber = x.ContactNumber,
                BsStartDate = x.BsStartDate,
                BsEndDate = x.BsEndDate,
                StateId = x.StateId,
                StateName = _context.State.Where(z => z.StateId == x.StateId).Select(x => x.StateName).FirstOrDefault(),
                DistrictId = x.DistrictId,
                DistrictName = _context.District.Where(z => z.DistrictId == x.DistrictId).Select(x => x.DistrictName).FirstOrDefault(),
                PalikaId = x.PalikaId,
                PalikaName = _context.Palika.Where(z => z.PalikaId == x.PalikaId).Select(x => x.PalikaName).FirstOrDefault(),
                Issue = x.Issue,
                Description = x.Description,
                Email = x.Email,
                IsActive = x.IsActive,
            }).Where(x => x.IsActive == true).ToList();
            return result;
        }
    }
}
