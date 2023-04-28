using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ProjectManagement.Models;

namespace ProjectManagement.Interface
{
    public interface IDashboard
    {
        PersonalInformationViewModel GetDashBoardData(int id);
    }

}
