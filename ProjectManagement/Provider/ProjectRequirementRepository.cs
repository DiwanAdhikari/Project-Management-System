using Microsoft.AspNetCore.Mvc;
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
    
   
public class ProjectRequirementRepository : IProjectRequirement
    {
        private readonly ApplicationDbContext _context;
        public ProjectRequirementRepository(ApplicationDbContext context)
        {
            _context = context;
        }
        public int AddOrEdit(ProjectRequirementViewModel model)
        {
            if (model.Id > 0)
            {
                var data = _context.ProjectRequirement.Where(e => e.Id == model.Id).FirstOrDefault();
                if (data != null)
                {
                    data.Id = model.Id;
                    data.ProjectId = model.ProjectId;
                    data.DistrictId = model.DistrictId;
                    data.PalikaId = model.PalikaId;
                    data.StateId = model.StateId;
                    data.ClientName = model.ClientName;
                    data.ProjectName = model.ProjectName;
                    data.ProjectAssignedTo = model.ProjectAssignedTo;
                    data.BsEndDate = model.BsEndDate;
                    data.Status = model.Status;
                    data.BsStartDate = model.BsStartDate;
                    data.Requirements = model.Requirements;                    
                    data.IsActive = true;


                    _context.Entry(data).State = EntityState.Modified;

                    if (model.RequirementList.Count > 0)
                    {
                        foreach(var item in model.RequirementList)
                        {
                            var resultSet = _context.Requirement.Where(x => x.RequirementId == item.Id && x.ProjectRequirementId==model.Id).FirstOrDefault();

                            if (resultSet != null)
                            {
                                resultSet.ProjectRequirementId = model.Id;
                                resultSet.Requirements = item.Requirements;
                                resultSet.Result = item.Result;

                                _context.Entry(resultSet).State = EntityState.Modified;
                            }
                            else
                            {                            
                                    var data1 = new Requirement()
                                    {
                                        ProjectRequirementId = model.Id,
                                        Requirements = item.Requirements,
                                        Result=item.Result,
                                    };
                                    _context.Requirement.Add(data1);                    
                            }
                        }
                    }
                }
                else
                {
                    return 0;
                }
            }
            else
            {
                var req = new ProjectRequirement()
                {
                    Id = model.Id,
                    ProjectId=model.ProjectId,
                    ClientName=model.ClientName,
                    StateId=model.StateId,
                    PalikaId=model.PalikaId,
                    DistrictId=model.DistrictId,
                    ProjectAssignedTo=model.ProjectAssignedTo,
                    BsEndDate = model.BsEndDate,
                    Status = model.Status,
                    BsStartDate =model.BsStartDate,
                    Requirements=model.Requirements,
                    IsActive=true,

                };
                _context.ProjectRequirement.Add(req);
                _context.SaveChanges();
                if (model.RequirementList.Count > 0)
                {
                    foreach(var item in model.RequirementList)
                    {
                        var data = new Requirement()
                        {
                            ProjectRequirementId = req.Id,
                            Requirements = item.Requirements,
                            Result=item.Result,
                            
                        };
                        _context.Requirement.Add(data);
                    }
                }
            }
            var result = _context.SaveChanges();
            return result;
        }

        public int Delete(int id)
        {
            var data = _context.ProjectRequirement.Where(e => e.Id == id).FirstOrDefault();
            if(data!=null)
            {
                data.IsActive = false;
                _context.Entry(data).State = EntityState.Modified;
            }
            var result = _context.SaveChanges();
                return result;
        }

        public ProjectRequirementViewModel GetRequirementById(int id)
        {
            var req = _context.ProjectRequirement.Where(e => e.Id == id).Select(x => new ProjectRequirementViewModel()
            {
                Id = x.Id,
                ProjectId=x.ProjectId,
                ProjectName = _context.Project.Where(y => y.Id == x.ProjectId).FirstOrDefault().ProjectName,
                ClientName = x.ClientName,               
               
                StateId=x.StateId,
                PalikaId=x.PalikaId,
                DistrictId=x.DistrictId,
                BsStartDate = x.BsStartDate,
                BsEndDate = x.BsEndDate,
                Status = x.Status,
                Requirements = x.Requirements,
               // ProjectAssignedTo=x.ProjectAssignedTo,
                EmployeeName = _context.Employee.Where(y => y.Id == x.ProjectAssignedTo).Select(x => x.EmployeeName).FirstOrDefault(),
                PalikaName = _context.Palika.Where(y => y.PalikaId == x.PalikaId).Select(y => y.PalikaNameNep).FirstOrDefault(),
                DistrictName = _context.District.Where(y => y.DistrictId == x.DistrictId).Select(y => y.DistrictNameNep).FirstOrDefault(),
                StateName = _context.State.Where(y => y.StateId == x.StateId).Select(y => y.StateNameNep).FirstOrDefault(),

                RequirementList = _context.Requirement.Where(x=>x.ProjectRequirementId==id).Select(z=> new RequirementViewModel()
                {
                    Id=z.RequirementId,
                    Requirements=z.Requirements,
                    Result = z.Result,
                    ProjectRequirementId=z.ProjectRequirementId,
                   
                }).ToList(),
            }).FirstOrDefault();
            return req;
        }

        public List<ProjectRequirementViewModel> GetRequirementList()
        {
           var result = _context.ProjectRequirement.Select(x=>new ProjectRequirementViewModel()
           {
               Id=x.Id,
               ProjectId=x.ProjectId,
               ProjectName = _context.Project.Where(y => y.Id == x.ProjectId).FirstOrDefault().ProjectName,
               ClientName = x.ClientName,
               BsEndDate = x.BsEndDate,
               Requirements = x.Requirements,               
             //  ProjectAssignedTo=x.ProjectAssignedTo,
               EmployeeName = _context.Employee.Where(y => y.Id == x.ProjectAssignedTo).Select(x => x.EmployeeName).FirstOrDefault(),
               Status =x.Status,
               PalikaId=x.PalikaId,
               StateName = _context.State.Where(z => z.StateId == x.StateId).Select(x => x.StateName).FirstOrDefault(),           
               DistrictName = _context.District.Where(z => z.DistrictId == x.DistrictId).Select(x => x.DistrictName).FirstOrDefault(),              
               PalikaName = _context.Palika.Where(z => z.PalikaId == x.PalikaId).Select(x => x.PalikaName).FirstOrDefault(),
               StateId =x.StateId,
               DistrictId=x.DistrictId,
               BsStartDate = x.BsStartDate,
               IsActive=x.IsActive,
           }).Where(x => x.IsActive == true).ToList();
            return result;
        }
        
    }  
    
}
