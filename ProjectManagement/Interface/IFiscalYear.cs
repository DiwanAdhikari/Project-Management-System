using ProjectManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Interface
{
    public interface IFiscalYear
    {
        Task<List<FiscalYearViewModel>> GetAllFiscalYear();
        Task<FiscalYearViewModel> GetFiscalYearDetails(int id);
        Task<bool> InsertUpdateFiscalYear(FiscalYearViewModel model);
    }
}
