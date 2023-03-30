using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using ProjectManagement.Data;
using System;
using System.Collections.Generic;
using System.Text;
using static ProjectManagement.Data.Common;
using ProjectManagement.Models;
using System.Linq;

namespace ProjectManagement.Data
{
    public class ApplicationDbContext : IdentityDbContext<ApplicationUser>
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options): base(options)
        {
        }
        public DbSet<ImplementatedSoftwares> ImplementatedSoftwares { get; set; }
        public DbSet<State> State { get; set; }
        public DbSet<District> District { get; set; }
        public DbSet<Palika> Palika { get; set; }
        public DbSet<Ward> Ward { get; set; }
        public DbSet<Project> Project { get; set; }
        public DbSet<ProjectType> ProjectType { get; set; }
        public DbSet<FiscalYear> FiscalYear { get; set; }
        public DbSet<Employee> Employee { get; set; }
        public DbSet<Issues> Issues { get; set; }
        public DbSet<Support> Support { get; set; }
        public DbSet<Ministry> Ministry { get; set; }
        public DbSet<Links> Links { get; set; }
        public DbSet<Contract> Contract { get; set; }
        public DbSet<Demo> Demo { get; set; }       
        public DbSet<DemoLink> DemoLink { get; set; }
        public DbSet<ProjectRequirement> ProjectRequirement { get; set; }
        public DbSet<Deployment> Deployment { get; set; }
        public DbSet<Requirement> Requirement { get; set; }
        public DbSet<AddProject> AddProject { get; set; }
        public DbSet<Server> Server { get; set; }
        public DbSet<UnDeployment> UnDeployment { get; set; }
        public DbSet<PersonalInformation> PersonalInformation { get; set; }
       

      

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            foreach (var relationship in modelBuilder.Model.GetEntityTypes().SelectMany(e => e.GetForeignKeys()))
            {
                relationship.DeleteBehavior = DeleteBehavior.Restrict;
            }
        }
    }
}
