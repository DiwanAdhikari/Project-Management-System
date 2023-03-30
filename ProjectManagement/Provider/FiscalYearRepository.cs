using Microsoft.AspNetCore.Http;
using Microsoft.EntityFrameworkCore;
using ProjectManagement.Data;
using ProjectManagement.Interface;
using ProjectManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;

namespace ProjectManagement.Provider
{
    public class FiscalYearRepository : IFiscalYear
    {
        private readonly ApplicationDbContext _context;
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly string userId = null;


        public FiscalYearRepository(ApplicationDbContext context , IHttpContextAccessor httpContextAccessor)
        {
            _context = context;
            _httpContextAccessor = httpContextAccessor;
            userId = _httpContextAccessor.HttpContext.User.FindFirstValue(ClaimTypes.NameIdentifier);
        }

        public async Task<List<FiscalYearViewModel>> GetAllFiscalYear()
        {
            return await _context.FiscalYear.Select(x => new FiscalYearViewModel()
            {
                Id = x.Id,
                Name = x.Name,
                LocalName = x.LocalName,
                AdStartDate = x.AdStartDate,
                BsStartDate = x.BsStartDate,
                AdEndDate = x.AdEndDate,
                BsEndDate = x.BsEndDate,
                IsActive = x.IsActive
            }).ToListAsync();
        }
        public async Task<FiscalYearViewModel> GetFiscalYearDetails(int id)
        {
            return await _context.FiscalYear.Where(x => x.Id == id)
                        .Select(x => new FiscalYearViewModel()
                        {
                            Id = x.Id,
                            Name = x.Name,
                            LocalName = x.LocalName,
                            AdStartDate = x.AdStartDate,
                            BsStartDate = x.BsStartDate,
                            AdEndDate = x.AdEndDate,
                            BsEndDate = x.BsEndDate,
                            IsActive = x.IsActive
                        }).FirstOrDefaultAsync() ?? new FiscalYearViewModel();
        }
        public async Task<bool> InsertUpdateFiscalYear(FiscalYearViewModel model)
        {
            try
            {
                // For only one Fiscal year active
                if (model.IsActive)
                {
                    foreach (var year in _context.FiscalYear.ToList())
                    {
                        year.IsActive = false;

                        _context.Entry(year).State = EntityState.Modified;
                        await _context.SaveChangesAsync();
                    }
                }
                if (model.Id > 0)
                {
                    var data = _context.FiscalYear.FirstOrDefault(x => x.Id == model.Id);
                    if (data != null)
                    {
                        data.Name = model.Name;
                        data.LocalName = model.LocalName;
                        data.BsStartDate = model.BsStartDate;
                        data.BsEndDate = model.BsEndDate;
                        data.AdStartDate = model.AdStartDate;
                        data.AdEndDate = model.AdEndDate;
                        data.IsActive = model.IsActive;

                        data.UpdatedDate = DateTime.Now;
                        data.UpdatedBy = _httpContextAccessor.HttpContext.User.Identity.Name;

                        _context.Entry(data).State = EntityState.Modified;
                    }
                    else
                        return false;
                }
                else
                {
                    FiscalYear fiscal = new FiscalYear()
                    {
                        Name = model.Name,
                        LocalName = model.LocalName,
                        BsStartDate = model.BsStartDate,
                        BsEndDate = model.BsEndDate,
                        AdStartDate = model.AdStartDate,
                        AdEndDate = model.AdEndDate,
                        IsActive = model.IsActive,

                        CreatedDate = DateTime.Now,
                        CreatedBy = _httpContextAccessor.HttpContext.User.Identity.Name
                    };
                    await _context.FiscalYear.AddAsync(fiscal);
                }
                await _context.SaveChangesAsync();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
