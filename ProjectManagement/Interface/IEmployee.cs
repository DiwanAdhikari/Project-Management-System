using ProjectManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Interface
{
    public interface IEmployee
    {
        List<EmployeeViewModel> GetEmployeeList();
        int AddOrEdit(EmployeeViewModel model);
        EmployeeViewModel GetEmployeeById(int id);

        int Delete(int id);
    }
}
