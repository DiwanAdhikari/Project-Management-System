using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ProjectManagement.Data;
using ProjectManagement.Interface;
using ProjectManagement.Models;

namespace ProjectManagement.Provider
{
    public class PersonalInformation : IPersonalInformation
    {
        private readonly ApplicationDbContext _context;


        public PersonalInformation(ApplicationDbContext context)
        {
            _context = context;
        }
        public class PersonalInformationRepository
        {
            public int AddOrEdit(PersonalInformationViewModel model)
            {

                if (model.Id > 0)
                {
                    var data = _context.PersonalInformation.Where(e => e.Id == model.Id).FirstOrDefault();
                    if (data != null)
                    {
                        //data.Id = model.Id;
                        data.Name = model.Name;
                        data.PhoneNumber = model.PhoneNumber;
                        data.Email = model.Email;
                        data.Photo = model.Photo;
                        data.StateId = model.StateId;
                        data.DistrictId = model.DistrictId;
                        data.PalikaId = model.PalikaId;
                        data.Address = model.Address;
                        data.IsActive = true;


                    }
                    else
                    {
                        return 0;
                    }
                }
            }
        }
    }
}

