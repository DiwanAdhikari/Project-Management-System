using ProjectManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Interface
{
    public interface IImplementation
    {
        List<ImplementationViewModel> GetImplementedSoftwaresList();
        int AddOrEdit(ImplementationViewModel model);
        ImplementationViewModel GetImplementedSoftwaresById(int id);

        int Delete(int id);
    }
}
