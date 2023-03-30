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
    public class EmployeeRepository : IEmployee
    {
        private readonly ApplicationDbContext _context;


        public EmployeeRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public int AddOrEdit(EmployeeViewModel model)
        {
            if (model.Id > 0)
            {
                var data = _context.Employee.Where(e => e.Id == model.Id).FirstOrDefault();
                if (data != null)
                {
                    data.Id = model.Id;
                    data.EmployeeName = model.EmployeeName;
                    data.Designation = model.Designation;
                    
                    data.IsActive = true;
                    

                }
                else
                {
                    return 0;
                }
            }
            else
            {
                var emp = new Employee()
                {
                    EmployeeName = model.EmployeeName,
                    Designation = model.Designation,
                    
                    IsActive = true,
                    
                };
                _context.Employee.Add(emp);
            }

            var result = _context.SaveChanges();
            return result;
        }

        public int Delete(int id)
        {
            var data = _context.Employee.Where(e => e.Id == id).FirstOrDefault();
            if (data != null)
            {
                data.IsActive = false;
                _context.Entry(data).State = EntityState.Modified;
            }
            var result = _context.SaveChanges();
            return result;
        }

        public EmployeeViewModel GetEmployeeById(int id)
        {
            var emp = _context.Employee.Where(e => e.Id == id).Select(x => new EmployeeViewModel()
            {
                Id = x.Id,
                EmployeeName = x.EmployeeName,
                Designation = x.Designation,
               
                IsActive = x.IsActive,
               


            }).FirstOrDefault();
            return emp;
        }

        public List<EmployeeViewModel> GetEmployeeList()
        {
            var result = _context.Employee.Select(x => new EmployeeViewModel()
            {
                Id = x.Id,
               
                EmployeeName = x.EmployeeName,
                Designation = x.Designation,
               
                IsActive = x.IsActive,
            }).Where(x => x.IsActive == true).ToList();
            return result;
        }
    }
}
