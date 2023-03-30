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
    public class ContractRepository : IContract
    {
        private readonly ApplicationDbContext _context;


        public ContractRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public int AddOrEdit(ContractViewModel model)
        {
            if (model.Id > 0)
            {
                var data = _context.Contract.Where(e => e.Id == model.Id).FirstOrDefault();
                if (data != null)
                {
                    data.Id = model.Id;
                    data.ClientName = model.ClientName;
                    data.SoftwareName = model.SoftwareName;
                    data.PhoneNumber = model.PhoneNumber;
                    data.Email = model.Email;
                    data.BsStartDate = model.BsStartDate;
                    data.BsEndDate = model.BsEndDate;                   
                    data.ContractPerson = model.ContractPerson;
                    data.IsActive = true;


                }
                else
                {
                    return 0;
                }
            }
            else
            {
                var emp = new Contract()
                {
                    ClientName = model.ClientName,
                    SoftwareName = model.SoftwareName,
                    ContractPerson = model.ContractPerson,
                    PhoneNumber = model.PhoneNumber,
                    Email = model.Email,
                    BsStartDate = model.BsStartDate,
                    BsEndDate = model.BsEndDate,                   
                    IsActive = true,

                };
                _context.Contract.Add(emp);
            }

            var result = _context.SaveChanges();
            return result;

        }

        public int Delete(int id)
        {
            var data = _context.Contract.Where(e => e.Id == id).FirstOrDefault();
            if (data != null)
            {
                data.IsActive = false;
                _context.Entry(data).State = EntityState.Modified;
            }
            var result = _context.SaveChanges();
            return result;
        }


        public ContractViewModel GetContractById(int id)
        {
            var emp = _context.Contract.Where(e => e.Id == id).Select(x => new ContractViewModel()
            {
                Id = x.Id,
                PhoneNumber = x.PhoneNumber,
                ClientName = x.ClientName,
                Email = x.Email,
                ContractPerson = x.ContractPerson,
                BsStartDate = x.BsStartDate,
                IsActive = x.IsActive,           
                BsEndDate = x.BsEndDate,
                SoftwareName = x.SoftwareName,
                

            }).FirstOrDefault();
            return emp;
        }

        public  List<ContractViewModel> GetContractList()
        {
            var result = _context.Contract.Select(x => new ContractViewModel()
            {
                Id = x.Id,
                ClientName = x.ClientName,
                SoftwareName = x.SoftwareName,
                BsStartDate = x.BsStartDate,
                PhoneNumber = x.PhoneNumber,
                Email = x.Email,
                IsActive = x.IsActive,
                ContractPerson = x.ContractPerson,
                BsEndDate = x.BsEndDate,

            }).Where(x => x.IsActive == true).ToList();
            return result;
        }




    }
}
