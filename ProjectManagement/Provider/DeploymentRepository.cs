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
    public class DeploymentRepository : IDeployed
    {
        private readonly ApplicationDbContext _context;
        public DeploymentRepository(ApplicationDbContext context)

        {
            _context = context;
        }

        public int AddOrEdit(DeploymentViewModel model)
        {
            if (model.Id > 0)
            {
                var data = _context.Deployment.Where(e => e.Id == model.Id).FirstOrDefault();
                if (data != null)
                {
                    data.Id = model.Id;
                    data.EmployeeName = model.EmployeeName;
                    data.ProjectId = model.ProjectId;
                    data.DistrictId = model.DistrictId;
                    data.PalikaId = model.PalikaId;
                    data.StateId = model.StateId;
                    data.ClientName = model.ClientName;
                    data.PhoneNumber = model.PhoneNumber;
                    data.ProjectName = model.ProjectName;               
                    data.DeploymentBy = model.DeploymentBy;  
                    data.ServerId = model.ServerId;    
                    data.ServerName= model.ServerName;               
                    data.Remarks = model.Remarks;
                    data.BsStartDate = model.BsStartDate;                   
                    data.IsActive = true;

                    _context.Entry(data).State = EntityState.Modified;

                    if (model.ProjectList.Count > 0)
                    {
                        foreach (var item in model.ProjectList)
                        {
                            var resultSet = _context.AddProject.Where(x => x.AddProjectId == item.Id && x.DeploymentId == model.Id).FirstOrDefault();

                            if (resultSet != null)
                            {
                                resultSet.DeploymentId = model.Id;
                                //resultSet.ProjectId = item.ProjectId;
                               
                                _context.Entry(resultSet).State = EntityState.Modified;
                            }
                            else
                            {
                                var data1 = new AddProject()
                                {
                                    DeploymentId = model.Id,
                                    ProjectId = item.ProjectId,
                                    
                                   
                                };
                                _context.AddProject.Add(data1);
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
                var req = new Deployment()
                {
                    Id = model.Id,
                    ClientName = model.ClientName,
                    PhoneNumber = model.PhoneNumber,
                    ProjectId = model.ProjectId,
                    StateId = model.StateId,
                    PalikaId = model.PalikaId,
                    DistrictId = model.DistrictId,                   
                    Remarks = model.Remarks,
                    DeploymentBy=model.DeploymentBy,
                    ServerId=model.ServerId,
                    ServerName=model.ServerName,
                    BsStartDate = model.BsStartDate,                   
                    IsActive = true,

                };
                _context.Deployment.Add(req);
                _context.SaveChanges();

                if (model.ProjectList.Count > 0)
                {
                    foreach (var item in model.ProjectList)
                    {
                        var data = new AddProject()
                        {
                            DeploymentId = req.Id,
                            ProjectId = item.ProjectId,                        

                        };
                        _context.AddProject.Add(data);
                    }
                }
            }
            var result = _context.SaveChanges();
            return result;
        }

        public int Delete(int id)
        {
            var data = _context.Deployment.Where(e => e.Id == id).FirstOrDefault();
            if (data != null)
            {
                data.IsActive = false;
                _context.Entry(data).State = EntityState.Modified;
            }
            var result = _context.SaveChanges();
            return result;
        }

        public List<DeploymentViewModel> GetDeployementList()
        {
            var result = _context.Deployment.Select(x => new DeploymentViewModel()
            {
                Id = x.Id,
                ClientName = x.ClientName,
                PhoneNumber = x.PhoneNumber,
                Remarks = x.Remarks,
                PalikaId = x.PalikaId,
                ProjectId = x.ProjectId,
                DeploymentBy = x.DeploymentBy,
                ServerId = x.ServerId,
                ServerName = _context.Server.Where(q => q.Id == x.ServerId).Select(x => x.ServerName).FirstOrDefault(),
                EmployeeName = _context.Employee.Where(y => y.Id == x.DeploymentBy).Select(x => x.EmployeeName).FirstOrDefault(),
                StateName = _context.State.Where(z => z.StateId == x.StateId).Select(x => x.StateName).FirstOrDefault(),
                DistrictName = _context.District.Where(z => z.DistrictId == x.DistrictId).Select(x => x.DistrictName).FirstOrDefault(),
                PalikaName = _context.Palika.Where(z => z.PalikaId == x.PalikaId).Select(x => x.PalikaName).FirstOrDefault(),
                StateId = x.StateId,
                DistrictId = x.DistrictId,
                BsStartDate = x.BsStartDate,
                IsActive = x.IsActive,
                ProjectList = _context.AddProject.Where(q => q.DeploymentId == x.Id).Select(w=> new AddProjectViewModel() 
                {
                ProjectName = _context.Project.Where(v=>v.Id==w.ProjectId).Select(p=>p.ProjectName).FirstOrDefault(),
                }).ToList(),             
            }).Where(x => x.IsActive == true).ToList();
            return result;
        }

        public DeploymentViewModel GetDeploymentById(int id)
        {
            var req = _context.Deployment.Where(e => e.Id == id).Select(x => new DeploymentViewModel()
            {
                Id = x.Id,
                ClientName = x.ClientName,
                PhoneNumber = x.PhoneNumber,
                StateId = x.StateId,
                ProjectId = x.ProjectId,
                PalikaId = x.PalikaId,
                DistrictId = x.DistrictId,
                BsStartDate = x.BsStartDate,               
                Remarks = x.Remarks,
                DeploymentBy = x.DeploymentBy,
                ServerId = x.ServerId,
                ProjectName = _context.Project.Where(v => v.Id == x.ProjectId).Select(p => p.ProjectName).FirstOrDefault(),
                ServerName = _context.Server.Where(y => y.Id == x.ServerId).Select(x => x.ServerName).FirstOrDefault(),
                PalikaName = _context.Palika.Where(y => y.PalikaId == x.PalikaId).Select(y => y.PalikaNameNep).FirstOrDefault(),
                DistrictName = _context.District.Where(y => y.DistrictId == x.DistrictId).Select(y => y.DistrictNameNep).FirstOrDefault(),
                StateName = _context.State.Where(y => y.StateId == x.StateId).Select(y => y.StateNameNep).FirstOrDefault(),
                EmployeeName = _context.Employee.Where(y => y.Id == x.DeploymentBy).Select(x => x.EmployeeName).FirstOrDefault(),

                ProjectList = _context.AddProject.Where(x => x.DeploymentId == id).Select(z => new AddProjectViewModel()
                {
                    Id = z.AddProjectId,
                    ProjectId = z.ProjectId, 
                    ProjectName = z.Project.ProjectName,
                    DeploymentId = z.DeploymentId,

                }).ToList(),
            }).FirstOrDefault();
            return req;
        }

        public async Task<List<DeploymentViewModel>> GetSearch(int StateId, int DistrictId, int PalikaId, int ProjectId)
        {
            var result = await _context.Deployment.Select(x => new DeploymentViewModel()
            {
                Id = x.Id,
                PalikaName = _context.Palika.Where(y => y.PalikaId == x.PalikaId).Select(y => y.PalikaNameNep).FirstOrDefault(),
                DistrictName = _context.District.Where(y => y.DistrictId == x.DistrictId).Select(y => y.DistrictNameNep).FirstOrDefault(),
                StateName = _context.State.Where(y => y.StateId == x.StateId).Select(y => y.StateNameNep).FirstOrDefault(),
                ClientName = x.ClientName,
                PhoneNumber = x.PhoneNumber,
                StateId = x.StateId,
                ProjectId = x.ProjectId,
                ProjectName = _context.Project.Where(v => v.Id == x.ProjectId).Select(p => p.ProjectName).FirstOrDefault(),
                DistrictId = x.DistrictId,
                PalikaId = x.PalikaId,
                IsActive = x.IsActive,
                BsStartDate = x.BsStartDate,
                DeploymentBy = x.DeploymentBy,
                ServerId = x.ServerId,
                ServerName = x.ServerName,               
                Remarks = x.Remarks,
                        
            }).Where(x => x.IsActive == true).ToListAsync();
            if (StateId > 0)
            {
                result = result.Where(x => x.StateId == StateId).ToList();
            }
            if (DistrictId > 0)
            {
                result = result.Where(x => x.DistrictId == DistrictId).ToList();
            }
            if (PalikaId > 0)
            {
                result = result.Where(x => x.PalikaId == PalikaId).ToList();
            }
            if (ProjectId > 0)
            {
                result = result.Where(x => x.Id == ProjectId).ToList();
            }

            return result;
        }
    }    
    
}
