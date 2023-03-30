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
    public class UnDeployedRepository : IUnDeployed
    {
        private readonly ApplicationDbContext _context;


        public UnDeployedRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public int AddOrEdit(UnDeploymentViewModel model)
        {
            if (model.Id > 0)
            {
                var data = _context.UnDeployment.Where(e => e.Id == model.Id).FirstOrDefault();
                if (data != null)
                {
                    data.Id = model.Id;
                    data.ProjectId = model.ProjectId;
                    data.StateId = model.StateId;
                    data.DistrictId = model.DistrictId;
                    data.ProjectName = model.ProjectName;
                    data.IsActive = true;
                    _context.Entry(data).State = EntityState.Modified;
                }
                else
                {
                    return 0;
                }
            }
            else
            {
                var emp = new UnDeployment()
                {
                    Id = model.Id,
                    ProjectId = model.ProjectId,
                    StateId = model.StateId,
                    DistrictId = model.DistrictId,
                    ProjectName = model.ProjectName,
                    IsActive = true,

                };
                _context.UnDeployment.Add(emp);
                _context.SaveChanges();
            }

            var result = _context.SaveChanges();
            return result;
        }

        public int Delete(int id)
        {
            var data = _context.UnDeployment.Where(e => e.Id == id).FirstOrDefault();
            if (data != null)
            {
                data.IsActive = false;
                _context.Entry(data).State = EntityState.Modified;
            }
            var result = _context.SaveChanges();
            return result;
        }
        public async Task<List<UnDeploymentViewModel>> GetSearch(int stateId, int districtId, int projectId)
        {
            var result = await _context.UnDeployment.Select(x => new UnDeploymentViewModel()
            {
                Id = x.Id,
                
                DistrictName = _context.District.Where(y => y.DistrictId == x.DistrictId).Select(y => y.DistrictNameNep).FirstOrDefault(),
                StateName = _context.State.Where(y => y.StateId == x.StateId).Select(y => y.StateNameNep).FirstOrDefault(),
                ProjectId =x.ProjectId,
                ProjectName = _context.Project.Where(y => y.Id == x.ProjectId).Select(y => y.ProjectName).FirstOrDefault(),
                StateId = x.StateId,
                DistrictId = x.DistrictId,
                PalikaId = x.PalikaId,
                IsActive = x.IsActive,
               

            }).Where(x => x.IsActive == true).ToListAsync();
            if (stateId > 0)
            {
                result = result.Where(x => x.StateId == stateId).ToList();
            }
            if (districtId > 0)
            {
                result = result.Where(x => x.DistrictId == districtId).ToList();
            }
            if (projectId > 0)
            {
                result = result.Where(x => x.Id == projectId).ToList();
            }

            return result;
        }

        public List<UnDeploymentViewModel> GetUnDeployementList()
        {
            var result = _context.UnDeployment.Select(x => new UnDeploymentViewModel()
            {
                Id = x.Id,
                ProjectId = x.ProjectId,
                StateId = x.StateId,
                DistrictId = x.DistrictId,
                ProjectName = x.ProjectName,
                IsActive = true,
            }).Where(x => x.IsActive == true).ToList();
            return result;
        }

        public UnDeploymentViewModel GetUnDeploymentById(int id)
        {
            var emp = _context.UnDeployment.Where(e => e.Id == id).Select(x => new UnDeploymentViewModel()
            {
                Id = x.Id,
                ProjectId = x.ProjectId,
                StateId = x.StateId,
                DistrictId = x.DistrictId,
                ProjectName = x.ProjectName,
                IsActive = x.IsActive,
            }).FirstOrDefault();
            return emp;
        }
    }
}
