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
    public class DemoRepository : IDemo
    {
        private readonly ApplicationDbContext _context;


        public DemoRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public int AddOrEdit(DemoViewModel model)
        {
            if (model.Id > 0)
            {
                var data = _context.Demo.Where(e => e.Id == model.Id).FirstOrDefault();
                if (data != null)
                {
                    data.Id = model.Id;
                    data.SoftwareName = model.SoftwareName;                   
                    data.Email = model.Email;                    
                    data.WebSite = model.WebSite;                    
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
                var emp = new Demo()
                {
                    SoftwareName = model.SoftwareName,                  
                    WebSite = model.WebSite,                   
                    Email = model.Email,                    
                    Description = model.Description,                    
                    IsActive = true,

                };
                _context.Demo.Add(emp);
            }

            var result = _context.SaveChanges();
            return result;

        }

        public int Delete(int id)
        {
            var data = _context.Demo.Where(e => e.Id == id).FirstOrDefault();
            if (data != null)
            {
                data.IsActive = false;
                _context.Entry(data).State = EntityState.Modified;
            }
            var result = _context.SaveChanges();
            return result;
        }


        public DemoViewModel GetDemoById(int id)
        {
            var emp = _context.Demo.Where(e => e.Id == id).Select(x => new DemoViewModel()
            {
                Id = x.Id,                
                SoftwareName = x.SoftwareName,
                Email = x.Email,             
                WebSite = x.WebSite,
                Description = x.Description,
                IsActive = x.IsActive,
               
            }).FirstOrDefault();
            return emp;
        }

        public  List<DemoViewModel> GetDemoList()
        {
            var result = _context.Demo.Select(x => new DemoViewModel()
            {
                Id = x.Id,
                SoftwareName = x.SoftwareName,             
                WebSite = x.WebSite,                
                Email = x.Email,
                Description = x.Description,
                IsActive = x.IsActive,

            }).Where(x => x.IsActive == true).ToList();
            return result;
        }




    }
}
