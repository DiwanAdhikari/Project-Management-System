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
    public class ServerRepository : IServer
    {
        private readonly ApplicationDbContext _context;


        public ServerRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public int AddOrEdit(ServerViewModel model)
        {
            if (model.Id > 0)
            {
                var data = _context.Server.Where(e => e.Id == model.Id).FirstOrDefault();
                if (data != null)
                {
                    data.Id = model.Id;
                    data.ServerName = model.ServerName;
                   

                    data.IsActive = true;

                }
                else
                {
                    return 0;
                }
            }
            else
            {
                var emp = new Server()
                {

                    ServerName = model.ServerName,
                  
                    IsActive = true,

                };
                _context.Server.Add(emp);
            }
            var result = _context.SaveChanges();
            return result;
        }

        public int Delete(int id)
        {
            var data = _context.Server.Where(e => e.Id == id).FirstOrDefault();
            if (data != null)
            {
                data.IsActive = false;
                _context.Entry(data).State = EntityState.Modified;
            }
            var result = _context.SaveChanges();
            return result;
        }

        public ServerViewModel GetServerById(int id)
        {
            var emp = _context.Server.Where(e => e.Id == id).Select(x => new ServerViewModel()
            {
                Id = x.Id,
                ServerName = x.ServerName,              
                IsActive = x.IsActive,
            }).FirstOrDefault();
            return emp;
        }

        public List<ServerViewModel> GetServerList()
        {
            var result = _context.Server.Select(x => new ServerViewModel()
            {
                Id = x.Id,
                ServerName = x.ServerName,              
                IsActive = x.IsActive,
            }).Where(x => x.IsActive == true).ToList();
            return result;
        }
    }

       
    
}
