using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using ProjectManagement.Models;

namespace ProjectManagement.Interface
{
   public interface ICommon
    {
        Task<FileUploadModel> UploadImgReturnPathAndName(string folderName, IFormFile img);
    }
}
