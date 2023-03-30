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
    public class ProjectTypeRepository : IProjectType
    {

        private readonly ApplicationDbContext _context;


        public ProjectTypeRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public int AddOrEdit(ProjectTypeViewModel model)
        {
            if (model.ProjectTypeId > 0)
            {
                var data = _context.ProjectType.Where(e => e.ProjectTypeId == model.ProjectTypeId).FirstOrDefault();
                if (data != null)
                {
                    data.ProjectTypeId = model.ProjectTypeId;
                    data.ProjectTypeName = model.ProjectTypeName;
                    data.CreatedBy = model.CreatedBy;
                    data.CreatedDate = model.CreatedDate;
                    data.IsActive = true;

                }
                else
                {
                    return 0;
                }
            }
            else
            {
                var emp = new ProjectType()
                {

                    ProjectTypeName = model.ProjectTypeName,                    
                    CreatedBy = model.CreatedBy,
                    CreatedDate = model.CreatedDate,
                    IsActive = true,

                };
                _context.ProjectType.Add(emp);
            }
            var result = _context.SaveChanges();
            return result;
        }

        public int Delete(int id)
        {
            var data = _context.ProjectType.Where(e => e.ProjectTypeId == id).FirstOrDefault();
            if (data != null)
            {
                data.IsActive = false;
                _context.Entry(data).State = EntityState.Modified;
            }
            var result = _context.SaveChanges();
            return result;
        }

        public ProjectTypeViewModel GetProjectTypeByProjectTypeId(int id)
        {
            var emp = _context.ProjectType.Where(e => e.ProjectTypeId == id).Select(x => new ProjectTypeViewModel()
            {
                ProjectTypeId = x.ProjectTypeId,
                ProjectTypeName = x.ProjectTypeName,
                CreatedBy = x.CreatedBy,
                CreatedDate = x.CreatedDate,
                IsActive =x.IsActive,




            }).FirstOrDefault();
            return emp;
        }

        public List<ProjectTypeViewModel> GetProjectTypeList()
        {
            var result = _context.ProjectType.Select(x => new ProjectTypeViewModel()
            {
                ProjectTypeId = x.ProjectTypeId,
                ProjectTypeName = x.ProjectTypeName,
                CreatedBy = x.CreatedBy,
                CreatedDate = x.CreatedDate,
                IsActive = x.IsActive,
            }).Where(x => x.IsActive == true).ToList();
            return result;
        }
    }
}
