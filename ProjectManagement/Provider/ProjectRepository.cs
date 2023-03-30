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
    public class ProjectRepository : IProject
    {

        private readonly ApplicationDbContext _context;


        public ProjectRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public int AddOrEdit(ProjectViewModel model)
        {
            if (model.Id > 0)
            {
                var data = _context.Project.Where(e => e.Id == model.Id).FirstOrDefault();
                if (data != null)
                {
                    data.Id = model.Id;
                    data.ProjectName = model.ProjectName;
                    data.ProjectTypeId = model.ProjectTypeId;
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
                var emp = new Project()
                {

                    ProjectName = model.ProjectName,  
                    ProjectTypeId=model.ProjectTypeId,
                    Description=model.Description,
                    IsActive = true,

                };
                _context.Project.Add(emp);
            }
            var result = _context.SaveChanges();
            return result;
        }

        public int Delete(int id)
        {
            var data = _context.Project.Where(e => e.Id == id).FirstOrDefault();
            if (data != null)
            {
                data.IsActive = false;
                _context.Entry(data).State = EntityState.Modified;
            }
            var result = _context.SaveChanges();
            return result;
        }

        public ProjectViewModel GetProjectById(int id)
        {
            var emp = _context.Project.Where(e => e.Id == id).Select(x => new ProjectViewModel()
            {
                Id = x.Id,
                ProjectName = x.ProjectName,
                ProjectTypeId = x.ProjectTypeId,
                ProjectTypeName = _context.ProjectType.Where(z => z.ProjectTypeId == x.ProjectTypeId).FirstOrDefault().ProjectTypeName,
                //ProjectTypeName = _context.ProjectType.Where(z => z.ProjectTypeId == x.ProjectTypeId).Select(y=>y.ProjectTypeName).FirstOrDefault(),
                Description = x.Description,
                IsActive = x.IsActive,
            }).FirstOrDefault();
            return emp;
        }

        public List<ProjectViewModel> GetProjectList()
        {
            var result = _context.Project.Select(x => new ProjectViewModel()
            {
                Id = x.Id,
                ProjectName = x.ProjectName,
                ProjectTypeId = x.ProjectTypeId,
                ProjectTypeName = _context.ProjectType.Where(z => z.ProjectTypeId == x.ProjectTypeId).FirstOrDefault().ProjectTypeName,                
                Description = x.Description,
                IsActive = x.IsActive,
            }).Where(x => x.IsActive == true).ToList();
            return result;
        }
    }
}


