using ProjectManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Interface
{
    public interface IIssues
    {
        List<IssuesViewModel> GetIssuesList();
        int AddOrEdit(IssuesViewModel model);
        IssuesViewModel GetIssueById(int id);

        int Delete(int id);
    }
}
