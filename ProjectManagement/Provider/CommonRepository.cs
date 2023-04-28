using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.Logging;
using ProjectManagement.Data;
using ProjectManagement.Models;
using ProjectManagement.Utilities;

namespace ProjectManagement.Provider
{
    public class CommonRepository
    {
        private readonly ApplicationDbContext _context;
        private readonly IWebHostEnvironment _webHostEnvironment;
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly UserManager<IdentityUser> _userManager;
        // private readonly ILogger<RegisterModel> _logger;
        private readonly string userId = null;
        public CommonRepository(ApplicationDbContext context,  IWebHostEnvironment webHost, IHttpContextAccessor httpContextAccessor, IUtility utility, UserManager<IdentityUser> userManager)
        {
            _context = context;
            _webHostEnvironment = webHost;
            _httpContextAccessor = httpContextAccessor;
            _userManager = userManager;
            userId = _httpContextAccessor.HttpContext.User.FindFirstValue(ClaimTypes.NameIdentifier);
        }
        public async Task<FileUploadModel> UploadImgReturnPathAndName(string folderName, IFormFile file)
        {
            try
            {
                FileUploadModel model = new FileUploadModel();
                string returnPath = null;
                if (file != null)
                {
                    var fileExt = Path.GetExtension(file.FileName).Substring(1);
                    folderName = string.IsNullOrEmpty(folderName) ? "images" : folderName;
                    folderName = (folderName == "images") ? "images/AppImage/" : "images/" + folderName + "/";
                    model.FileName = Guid.NewGuid().ToString() + "." + fileExt;
                    returnPath = folderName + model.FileName;

                    var uploadsFolder = Path.Combine(_webHostEnvironment.WebRootPath, folderName);
                    if (!Directory.Exists(uploadsFolder))
                        Directory.CreateDirectory(uploadsFolder);

                    var filePath = Path.Combine(_webHostEnvironment.WebRootPath, returnPath);
                    using (var fileStream = new FileStream(filePath, FileMode.Create))
                    {
                        await file.CopyToAsync(fileStream);
                    }
                    model.FilePath = "/" + returnPath;
                    return model;
                }
                else
                    return model;
            }
            catch (Exception)
            {
                return null;
            }
        }
    }
}
