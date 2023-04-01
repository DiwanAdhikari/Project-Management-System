using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using ProjectManagement.Data;
using ProjectManagement.Interface;
using ProjectManagement.Models;

namespace ProjectManagement.Provider
{
    public class PersonalInformationRepository:IPersonalInformation
    {
        private readonly ApplicationDbContext _context;
        public PersonalInformationRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public  int AddOrEdit(PersonalInformationViewModel model)
        {
            if (model.Id > 0)
            {
                var data = _context.PersonalInformation.Where(e => e.Id == model.Id).FirstOrDefault();
                if (data != null)
                {
                    data.Id = model.Id;
                    data.Name = model.Name;
                    data.PhoneNumber = model.PhoneNumber;
                    data.Photo = model.Photo;
                    data.StateId = model.StateId;
                    data.DistrictId = model.DistrictId;
                    data.PalikaId = model.PalikaId;
                    data.Address = model.Address;
                    data.Email = model.Email;
                    data.IsActive = true;
                    data.Reference = model.Reference;
                    data.Remarks = model.Remarks;
                }
                else
                {
                    return 0;
                }
            }
            else
            {
                var emp = new PersonalInformation()
                {
                    Id = model.Id,
                    Name = model.Name,
                    PhoneNumber = model.PhoneNumber,
                    Photo = model.Photo,
                    StateId = model.StateId,
                    DistrictId = model.DistrictId,
                    PalikaId = model.PalikaId,
                    Address = model.Address,
                    Email = model.Email,
                    Reference=model.Reference,
                    Remarks=model.Remarks,
                    IsActive = true,

                };
                _context.PersonalInformation.Add(emp);
            }

            var result = _context.SaveChanges();
            return result;
        }
        public int Delete(int id)
        {
            var data = _context.PersonalInformation.Where(e => e.Id == id).FirstOrDefault();
            if (data != null)
            {
                data.IsActive = false;
                _context.Entry(data).State = EntityState.Modified;
            }
            var result = _context.SaveChanges();
            return result;
        }

        public PersonalInformationViewModel GetPersonalInformationById(int id)
        {
            var personalInformation = _context.PersonalInformation.Where(e => e.Id == id).Select(x => new PersonalInformationViewModel()
            {
                Id = x.Id,
                Name=x.Name,
                Address=x.Address,
                PhoneNumber=x.PhoneNumber,
                Photo=x.Photo,
                StateId = x.StateId,
                DistrictId = x.DistrictId,
                PalikaId = x.PalikaId,
                Email = x.Email,
                Reference=x.Reference,
                Remarks=x.Remarks,
                IsActive = x.IsActive,
                

            }).FirstOrDefault();
            return personalInformation;
        }

        public List<PersonalInformationViewModel> GetPersonalInformationList()
        {

            var result = _context.PersonalInformation.Select(x => new PersonalInformationViewModel()
            {
                Id = x.Id,
               Name=x.Name,
               Address=x.Address,
               PhoneNumber=x.PhoneNumber,
               Photo=x.Photo,
                StateId = x.StateId,
                StateName = _context.State.Where(z => z.StateId == x.StateId).Select(x => x.StateNameNep).FirstOrDefault(),
                DistrictId = x.DistrictId,
                DistrictName = _context.District.Where(z => z.DistrictId == x.DistrictId).Select(x => x.DistrictNameNep).FirstOrDefault(),
                PalikaId = x.PalikaId,
                PalikaName = _context.Palika.Where(z => z.PalikaId == x.PalikaId).Select(x => x.PalikaNameNep).FirstOrDefault(),
                Email = x.Email,
                IsActive = x.IsActive,
                Reference=x.Reference,
                Remarks=x.Remarks,
            }).Where(x => x.IsActive == true).ToList();
            return result;
        }
    }
}



