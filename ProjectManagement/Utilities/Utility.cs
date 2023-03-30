using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using ProjectManagement.Data;
using ProjectManagement.Models;
using ProjectManagement.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;

namespace ProjectManagement.Utilities
{
    public class Utility : IUtility
    {
        private readonly ApplicationDbContext _context;
        private readonly IHttpContextAccessor _httpContextAccessor;

        private readonly IWebHostEnvironment _webHostEnvironment;
        private readonly string _userId;


        public Utility(ApplicationDbContext context, IHttpContextAccessor httpContextAccessor, IWebHostEnvironment webHost)
        {
            _context = context;
            _httpContextAccessor = httpContextAccessor;
            _webHostEnvironment = webHost;
            _userId = httpContextAccessor.HttpContext.User.FindFirstValue(ClaimTypes.NameIdentifier);

        }

        public async Task<SelectList> GetCurrentFiscalYear()
        {
            //return await _context.FiscalYear.Where(x => x.IsActive).Select(x => x.Id).FirstOrDefaultAsync();
            return new SelectList(await _context.FiscalYear.ToListAsync(), "Id", "Name");
        }

        public async Task<SelectList> GetEmployeeList()
        {
            return new SelectList(await _context.Employee.Where(x => x.IsActive == true).ToListAsync(), "Id", "EmployeeName");
        }

        //public async Task<SelectList> GetCurrentFiscalYearName()
        //{
        //    var id = await GetCurrentFiscalYear();
        //    return await _context.FiscalYear.Where(x => x.Id == id).Select(x => x.Name).FirstOrDefaultAsync();
        //}

        public async Task<SelectList> GetProjectSelectListItems()
        {
            return new SelectList(await _context.Project.ToListAsync(), "Id", "ProjectName");
        }

        public async Task<SelectList> GetDistrictSelectListItems()
        {
            return new SelectList(await _context.District.ToListAsync(), "DistrictId", "DistrictNameNep");
        }
        public async Task<SelectList> GetSelectListDistrict(int? stateId)
        {
            var data = new SelectList(_context.District.Where(x => (x.StateId == stateId || stateId == null)).ToList(), "DistrictId", "DistrictNameNep");

            return new SelectList(await _context.District.Where(x => (x.StateId == stateId || stateId == null)).ToListAsync(), "DistrictId", "DistrictNameNep");
        }
        public async Task<SelectList> GetPalikaSelectListItems()
        {
            return new SelectList(await _context.Palika.ToListAsync(), "PalikaId", "PalikaNameNep");
        }
        public async Task<SelectList> GetSelectListPalika(int? distId)
        {
            return new SelectList(await _context.Palika.Where(x => (x.DistrictId == distId || distId == null)).ToListAsync(), "PalikaId", "PalikaNameNep");
        }
        public async Task<SelectList> GetSelectListState()
        {
            return new SelectList(await _context.State.ToListAsync(), "StateId", "StateNameNep");
        }
        public async Task<SelectList> ProjectTypeList()
        {
            return new SelectList(await _context.ProjectType.ToListAsync(), "ProjectTypeId", "ProjectTypeName");
        }
        public async Task<SelectList> ServerList()
        {
            return new SelectList(await _context.Server.ToListAsync(), "Id", "ServerName");
        }

        public async Task<SelectList> GetSelectListRoles()
        {
            return new SelectList(await _context.Roles.Where(x => x.Name != UserRoles.Administrator && x.Name != UserRoles.SuperAdmin).ToListAsync(), "Name", "Name");
        }
        public  async Task<SelectList> GetSelectPriority()
        {
            var selectList = new SelectList(
                                  new List<SelectListItem>
                                  {
                                       new SelectListItem {Text = "High", Value = "1"},
                                       new SelectListItem {Text = "Medium", Value = "2"},
                                       new SelectListItem {Text = "Low", Value = "3"},
                                  }, "Value", "Text");
            return selectList;
        }

        public async Task<List<DemoViewModel>> GetDemoList()
        {
            var data = await _context.Demo.Select(x => new DemoViewModel()
            {
                Id = x.Id,
                SoftwareName = x.SoftwareName,
                IsActive = x.IsActive,
            }).Where(x=>x.IsActive==true).ToListAsync()??new List<DemoViewModel>();
            return data;
           // return new SelectList(await _context.Demo.ToListAsync(), "Id", "SoftwareName");
        }
    }
}
