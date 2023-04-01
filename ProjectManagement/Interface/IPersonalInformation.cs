using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ProjectManagement.Data;
using ProjectManagement.Models;

namespace ProjectManagement.Interface
{
    public interface IPersonalInformation
    {
        List<PersonalInformationViewModel> GetPersonalInformationList();
        int AddOrEdit(PersonalInformationViewModel model);
        PersonalInformationViewModel GetPersonalInformationById(int id);

        int Delete(int id);
    }
}

