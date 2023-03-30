﻿using Microsoft.EntityFrameworkCore;
using ProjectManagement.Data;
using ProjectManagement.Interface;
using ProjectManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Provider
{
    public class MinistryRepository : IMinistry
    {
        private readonly ApplicationDbContext _context;


        public MinistryRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public int AddOrEdit(MinistryViewModel model)
        {
            if (model.Id > 0)
            {
                var data = _context.Ministry.Where(e => e.Id == model.Id).FirstOrDefault();
                if (data != null)
                {
                    data.Id = model.Id;                   
                    data.Name = model.Name;
                    data.Address = model.Address;
                    data.PhoneNumber = model.PhoneNumber;                   
                    data.Email = model.Email;
                    data.StateId = model.StateId;
                    data.PalikaId = model.PalikaId;
                    data.DistrictId = model.DistrictId;
                    data.WebSite = model.WebSite;
                    data.PriorityId = model.PriorityId;
                    data.ContactPerson = model.ContactPerson;
                    data.IsActive = true;
                    

                }
                else
                {
                    return 0;
                }
            }
            else
            {
                var emp = new Ministry()
                {
                    Name = model.Name,                   
                    Address = model.Address,
                    WebSite = model.WebSite,
                    PhoneNumber=model.PhoneNumber,
                    Email = model.Email,
                    StateId = model.StateId,
                    PalikaId = model.PalikaId,
                    DistrictId = model.DistrictId,
                    ContactPerson = model.ContactPerson,
                    PriorityId = model.PriorityId,
                    IsActive = true,
                   
                };
                _context.Ministry.Add(emp);
            }

            var result = _context.SaveChanges();
            return result;

        }

        public int Delete(int id)
        {
            var data = _context.Ministry.Where(e => e.Id == id).FirstOrDefault();
            if (data != null)
            {
                data.IsActive = false;
                _context.Entry(data).State = EntityState.Modified;
            }
            var result = _context.SaveChanges();
            return result;
        }

        public MinistryViewModel GetMinistryById(int id)
        {
            var emp = _context.Ministry.Where(e => e.Id == id).Select(x => new MinistryViewModel()
            {
                Id = x.Id,                
                PhoneNumber = x.PhoneNumber,
                Name = x.Name,                
                Email = x.Email,
                Address = x.Address,
                WebSite = x.WebSite, 
                IsActive = x.IsActive,
                ContactPerson = x.ContactPerson,
                StateId = x.StateId,
                PalikaId = x.PalikaId,
                DistrictId = x.DistrictId,
                PriorityId = x.PriorityId,
                Priority = _context.Ministry.Where(y => y.PriorityId == x.PriorityId).Select(y => y.Priority).FirstOrDefault(),
                PalikaName = _context.Palika.Where(y => y.PalikaId == x.PalikaId).Select(y => y.PalikaNameNep).FirstOrDefault(),
                DistrictName = _context.District.Where(y => y.DistrictId == x.DistrictId).Select(y => y.DistrictNameNep).FirstOrDefault(),
                StateName = _context.State.Where(y => y.StateId == x.StateId).Select(y => y.StateNameNep).FirstOrDefault(),

            }).FirstOrDefault();
            return emp;
        }

        public List<MinistryViewModel> GetMinistryList()
        {
            var result = _context.Ministry.Select(x => new MinistryViewModel()
            {
                Id = x.Id,                
                Name = x.Name,
                Address = x.Address,
                WebSite = x.WebSite,
                PhoneNumber = x.PhoneNumber,              
                Email = x.Email,              
                IsActive = x.IsActive,
                ContactPerson = x.ContactPerson,
                StateId = x.StateId,
                PalikaId = x.PalikaId,
                DistrictId = x.DistrictId,
                PriorityId = x.PriorityId,
                Priority = _context.Ministry.Where(y => y.PriorityId == x.PriorityId).Select(y => y.Priority).FirstOrDefault(),
                StateName = _context.State.Where(z => z.StateId == x.StateId).Select(x => x.StateName).FirstOrDefault(),           
                DistrictName = _context.District.Where(z => z.DistrictId == x.DistrictId).Select(x => x.DistrictName).FirstOrDefault(),       
                PalikaName = _context.Palika.Where(z => z.PalikaId == x.PalikaId).Select(x => x.PalikaName).FirstOrDefault(),
            }).Where(x => x.IsActive == true).ToList();
            return result;
        }

        public  async Task<List<MinistryViewModel>> GetSearch(int StateId, int DistrictId, int PalikaId)
        {
            var result = await _context.Ministry.Select(x => new MinistryViewModel()          
            {
                Id = x.Id,
                Name = x.Name,
                Address = x.Address,
                PhoneNumber = x.PhoneNumber,
                StateId = x.StateId,
                DistrictId = x.DistrictId,  
                PalikaId=x.PalikaId,
                IsActive = x.IsActive,
                ContactPerson = x.ContactPerson,
                PriorityId = x.PriorityId,
                Email=x.Email,
                WebSite=x.WebSite,
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
            return result;
        }
    }
}
