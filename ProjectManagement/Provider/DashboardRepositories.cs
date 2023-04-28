using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity.UI.V3.Pages.Account.Internal;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using ProjectManagement.Data;
using ProjectManagement.Interface;
using ProjectManagement.Models;
using ProjectManagement.Utilities;

namespace ProjectManagement.Provider
{
    public class DashboardRepositories : IDashboard
    {
        private readonly ApplicationDbContext _context;
        public DashboardRepositories(ApplicationDbContext context)
        {
            _context = context;
        }       
        public ImplementationViewModel GetDashBoardData(int id)        
        {
            var Dashboard = _context.ImplementatedSoftwares.Where(e => e.Id == id).Select(x => new ImplementationViewModel()
            {
                Id=x.Id,
                ProjectAmount = x.ProjectAmount

            }).FirstOrDefault();
            return Dashboard;
        }

        PersonalInformationViewModel IDashboard.GetDashBoardData(int id)
        {
            throw new NotImplementedException();
        }
    }
}

    


