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
    public class DemoLinkRepository : IDemoLink
    {
        private readonly ApplicationDbContext _context;


        public DemoLinkRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public int CreateDemoLink(DemoLinkViewModel model)
        {
            if (model.Id > 0)
            {
                var data = _context.DemoLink.Where(e => e.Id == model.Id).FirstOrDefault();
                if (data != null)
                {
                    data.Id = model.Id;
                    data.SoftwareName = model.SoftwareName;
                    data.Email = model.Email;
                    data.WebSite = model.WebSite;
                    data.Description = model.Description;
                    data.DemoId = model.DemoId;
                    data.IsActive = true;


                }
                else
                {
                    return 0;
                }
            }
            else
            {
                var emp = new DemoLink()
                {
                    SoftwareName = model.SoftwareName,
                    WebSite = model.WebSite,
                    Email = model.Email,
                    Description = model.Description,
                    DemoId = model.DemoId,
                    IsActive = true,

                };
                _context.DemoLink.Add(emp);
            }

            var result = _context.SaveChanges();
            return result;

        }

        public int Delete(int id)
        {
            var data = _context.DemoLink.Where(e => e.Id == id).FirstOrDefault();
            if (data != null)
            {
                data.IsActive = false;
                _context.Entry(data).State = EntityState.Modified;
            }
            var result = _context.SaveChanges();
            if (result == 1)
            {
                return data.DemoId;
            }
            else
            {
                return 0;
            }
           
        }

       


        public DemoLinkViewModel GetDemoLinkById(int id)
        {
            var emp = _context.DemoLink.Where(e => e.Id == id).Select(x => new DemoLinkViewModel()
            {
                DemoId= x.DemoId,
                Id = x.Id,
                SoftwareName = x.SoftwareName,
                Email = x.Email,
                WebSite = x.WebSite,
                Description = x.Description,
                IsActive = x.IsActive,

            }).FirstOrDefault();
            return emp;
        }

        public List<DemoLinkViewModel> GetDemoLinkList(int Demoid)
        {
            var result = _context.DemoLink.Where(x => x.IsActive == true && x.DemoId == Demoid).Select(x => new DemoLinkViewModel()
            {
                Id = x.Id,
                SoftwareName = x.SoftwareName,
                WebSite = x.WebSite,
                Email = x.Email,
                Description = x.Description,
                IsActive = x.IsActive,
                DemoId =x.DemoId,

            }).ToList();
            return result;
        }

        
    }
}
