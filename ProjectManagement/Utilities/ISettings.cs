using ProjectManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Utilities
{
  public interface ISettings
    {
        Task ResetPasswordAsync(ResetPasswordViewModel resetPasswordViewModel);
    }
}
