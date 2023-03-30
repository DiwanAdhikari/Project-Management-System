using Microsoft.AspNetCore.Mvc.Rendering;
using ProjectManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Utilities
{
   public  interface IUtility
    {
        Task<SelectList> GetSelectListState();
        Task<SelectList> GetDistrictSelectListItems();
        Task<SelectList> GetSelectListDistrict(int? stateId);
        Task<SelectList> GetPalikaSelectListItems();
        Task<SelectList> GetSelectListPalika(int? distId);
        Task<SelectList> GetProjectSelectListItems();
        Task<SelectList> GetSelectListRoles();

        Task<SelectList> GetCurrentFiscalYear();
        //Task<SelectList> GetCurrentFiscalYearName();

        Task<SelectList> GetEmployeeList(); 
        Task<SelectList> ProjectTypeList();
        Task<SelectList> ServerList();

        Task<SelectList> GetSelectPriority();
        Task<List<DemoViewModel>> GetDemoList();
        


    }
}
