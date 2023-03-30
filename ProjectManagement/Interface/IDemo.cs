using ProjectManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Interface
{
    public interface IDemo
    {
        List<DemoViewModel> GetDemoList();
        int AddOrEdit(DemoViewModel model);
        DemoViewModel GetDemoById(int id);

        int Delete(int id);
    }
}
