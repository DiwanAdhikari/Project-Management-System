using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.UI;
using Microsoft.AspNetCore.Identity.UI.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Authorization;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using ProjectManagement.Data;
using ProjectManagement.Interface;
using ProjectManagement.Models;
using ProjectManagement.Provider;
using ProjectManagement.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddDbContext<ApplicationDbContext>(options => options.UseSqlServer(Configuration.GetConnectionString("DefaultConnection")));
            services.AddIdentity<ApplicationUser, IdentityRole>().AddEntityFrameworkStores<ApplicationDbContext>().AddDefaultTokenProviders().AddDefaultUI();
            services.AddControllersWithViews();
            services.AddRazorPages();
            services.AddTransient<IImplementation, ImplementationRepository>();
            services.AddTransient<IUtility, Utility>();
            services.AddTransient<IProject, ProjectRepository>();
            services.AddTransient<IProjectType, ProjectTypeRepository>();
            services.AddTransient<IFiscalYear, FiscalYearRepository>();
            services.AddTransient<IEmployee, EmployeeRepository>();
            services.AddTransient<IIssues, IssueRepository>();
            services.AddTransient<ISupport, SupportRepository>();
            services.AddDbContext<ApplicationDbContext>();
            services.AddTransient<IUserList,UserListRepository>();
            services.AddTransient<IMinistry,MinistryRepository>();
            services.AddTransient<ILinks,LinksRepository>();
            services.AddTransient<IContract,ContractRepository>();
            services.AddTransient<IDemo,DemoRepository>();
            services.AddTransient<IDemoLink,DemoLinkRepository>();
            services.AddTransient<IProjectRequirement, ProjectRequirementRepository>();
            services.AddTransient<IDeployed, DeploymentRepository>();
            services.AddTransient<IServer, ServerRepository>();
            services.AddTransient<IUnDeployed, UnDeployedRepository>();
            services.AddTransient<IPersonalInformation, PersonalInformationRepository>();

            //added
            services.Configure<MailSettings>(Configuration.GetSection("MailSettings"));
            services.AddTransient<IEmailSender, SystemSendMail>();
            services.AddTransient<IMailService, MailService>();

            services.AddMvc();

            //Set Session Timeout. Default is 20 minutes.
            //services.AddSession(options =>
            //{
            //    options.IdleTimeout = TimeSpan.FromMinutes(30);
            //});

            services.AddMvc(options =>
            {
                options.EnableEndpointRouting = false;
                options.Filters.Add(new AuthorizeFilter());
                //options.Filters.Add(typeof(CustomAuthorizeAttribute));
            });

            services.Configure<CookiePolicyOptions>(options =>
            {
                options.CheckConsentNeeded = context => true;
                options.MinimumSameSitePolicy = SameSiteMode.None;
            });
            services.ConfigureApplicationCookie(options =>
            {
                options.Cookie.HttpOnly = true;
                options.ExpireTimeSpan = TimeSpan.FromMinutes(30);
                options.LoginPath = $"/Identity/Account/Login";
                options.LogoutPath = $"/Identity/Account/Logout";
                options.AccessDeniedPath = $"/Identity/Account/AccessDenied";
            });

        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env, IServiceProvider serviceProvider)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
                app.UseDatabaseErrorPage();
            }
            else
            {
                app.UseExceptionHandler("/Home/Error");
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }
            app.UseHttpsRedirection();
            app.UseStaticFiles();

            app.UseRouting();

            app.UseAuthentication();
            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
               endpoints.MapControllerRoute("areaRoute", "{area:exists}/{controller=Account}/{action=Login}/{id?}");

                endpoints.MapControllerRoute(
                    name: "default",
                    pattern: "{controller=Home}/{action=Dashboard}/{id?}");
                endpoints.MapRazorPages();
            });

            // Creating User and roles
            CreateRolesAndAdminUser(serviceProvider);

        }
        #region Create Role and initial User Rergistered

        private void CreateRolesAndAdminUser(IServiceProvider serviceProvider)
        {
            const string administratorRole = "Administrator";
            const string superAdminRole = "SuperAdmin";
            var roleNames = new List<string>
            {
                administratorRole,
                superAdminRole
            };
            // Fetch Remaining Roles from "appSettings.json" file.
            List<string> roles = Configuration.GetSection("DefaultUserSetting:Roles").Get<List<string>>();
            // Add remaining Roles 
            roleNames.AddRange(roles);
            // Creating roles
            foreach (var role in roleNames)
            {
                CreateRole(serviceProvider, role);
            }
            // Administrator user Setup
            const string administratorUserEmail = "softech@gmail.com";
            const string administratorPwd = "Softech@123!";
            AddUserToRole(serviceProvider, administratorUserEmail, administratorPwd, administratorRole);
            // For SuperAdmin 
            // Get these value from "appSettings.json" file.
            var adminUserEmail = Configuration.GetSection("DefaultUserSetting").GetSection("SuperAdminUserEmail").Value;
            var adminPwd = Configuration.GetSection("DefaultUserSetting").GetSection("SuperAdminPwd").Value;
            AddUserToRole(serviceProvider, adminUserEmail, adminPwd, superAdminRole);
        }

        /// <summary>
        /// Create a role if not exists.
        /// </summary>
        /// <param name="serviceProvider">Service Provider</param>
        /// <param name="roleName">Role Name</param>
        private static void CreateRole(IServiceProvider serviceProvider, string roleName)
        {
            var roleManager = serviceProvider.GetRequiredService<RoleManager<IdentityRole>>();

            Task<bool> roleExists = roleManager.RoleExistsAsync(roleName);
            roleExists.Wait();

            if (!roleExists.Result)
            {
                Task<IdentityResult> roleResult = roleManager.CreateAsync(new IdentityRole(roleName));
                roleResult.Wait();
            }
        }

        /// <summary>
        /// Add user to a role if the user exists, otherwise, create the user and adds him to the role.
        /// </summary>
        /// <param name="serviceProvider">Service Provider</param>
        /// <param name="userEmail">User Email</param>
        /// <param name="userPwd">User Password. Used to create the user if not exists.</param>
        /// <param name="roleName">Role Name</param>

        private static void AddUserToRole(IServiceProvider serviceProvider, string userEmail, string userPwd, string roleName)
        {
            var userManager = serviceProvider.GetRequiredService<UserManager<ApplicationUser>>();

            Task<ApplicationUser> checkAppUser = userManager.FindByEmailAsync(userEmail);
            checkAppUser.Wait();

            ApplicationUser appUser = checkAppUser.Result;

            if (checkAppUser.Result == null)
            {
                var newAppUser = new ApplicationUser()
                {
                    Email = userEmail,
                    UserName = userEmail,
                    EmailConfirmed = true,
                };

                Task<IdentityResult> taskCreateAppUser = userManager.CreateAsync(newAppUser, userPwd);
                taskCreateAppUser.Wait();

                if (taskCreateAppUser.Result.Succeeded)
                {
                    appUser = newAppUser;
                }
            }

            Task<IdentityResult> newUserRole = userManager.AddToRoleAsync(appUser, roleName);
            newUserRole.Wait();
        }

        #endregion
    }
}
