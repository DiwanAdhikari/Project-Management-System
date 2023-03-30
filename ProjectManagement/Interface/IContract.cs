using ProjectManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Interface
{
    public interface IContract
    {
        List<ContractViewModel> GetContractList();
        int AddOrEdit(ContractViewModel model);
        ContractViewModel GetContractById(int id);

        int Delete(int id);
    }
}
