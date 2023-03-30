using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace ProjectManagement.Migrations
{
    public partial class absc : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "AspNetRoles",
                columns: table => new
                {
                    Id = table.Column<string>(nullable: false),
                    Name = table.Column<string>(maxLength: 256, nullable: true),
                    NormalizedName = table.Column<string>(maxLength: 256, nullable: true),
                    ConcurrencyStamp = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AspNetRoles", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "AspNetUsers",
                columns: table => new
                {
                    Id = table.Column<string>(nullable: false),
                    UserName = table.Column<string>(maxLength: 256, nullable: true),
                    NormalizedUserName = table.Column<string>(maxLength: 256, nullable: true),
                    Email = table.Column<string>(maxLength: 256, nullable: true),
                    NormalizedEmail = table.Column<string>(maxLength: 256, nullable: true),
                    EmailConfirmed = table.Column<bool>(nullable: false),
                    PasswordHash = table.Column<string>(nullable: true),
                    SecurityStamp = table.Column<string>(nullable: true),
                    ConcurrencyStamp = table.Column<string>(nullable: true),
                    PhoneNumber = table.Column<string>(nullable: true),
                    PhoneNumberConfirmed = table.Column<bool>(nullable: false),
                    TwoFactorEnabled = table.Column<bool>(nullable: false),
                    LockoutEnd = table.Column<DateTimeOffset>(nullable: true),
                    LockoutEnabled = table.Column<bool>(nullable: false),
                    AccessFailedCount = table.Column<int>(nullable: false),
                    FullName = table.Column<string>(nullable: true),
                    DOB = table.Column<string>(nullable: true),
                    DOBAD = table.Column<DateTime>(nullable: true),
                    Post = table.Column<string>(nullable: true),
                    Address = table.Column<string>(nullable: true),
                    SubOfficeId = table.Column<int>(nullable: true),
                    IsActive = table.Column<bool>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AspNetUsers", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Contract",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    ClientName = table.Column<string>(nullable: true),
                    SoftwareName = table.Column<string>(nullable: true),
                    Email = table.Column<string>(nullable: true),
                    PhoneNumber = table.Column<string>(nullable: true),
                    ContractPerson = table.Column<string>(nullable: true),
                    BsStartDate = table.Column<string>(nullable: true),
                    BsEndDate = table.Column<string>(nullable: true),
                    IsActive = table.Column<bool>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Contract", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Demo",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    SoftwareName = table.Column<string>(nullable: true),
                    Email = table.Column<string>(nullable: true),
                    WebSite = table.Column<string>(nullable: true),
                    Description = table.Column<string>(nullable: true),
                    IsActive = table.Column<bool>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Demo", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "DemoLink",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    SoftwareName = table.Column<string>(nullable: true),
                    Email = table.Column<string>(nullable: true),
                    WebSite = table.Column<string>(nullable: true),
                    Description = table.Column<string>(nullable: true),
                    IsActive = table.Column<bool>(nullable: false),
                    DemoId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_DemoLink", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Employee",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    EmployeeName = table.Column<string>(nullable: true),
                    Designation = table.Column<string>(nullable: true),
                    IsActive = table.Column<bool>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Employee", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "FiscalYear",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(nullable: false),
                    LocalName = table.Column<string>(nullable: true),
                    BsStartDate = table.Column<string>(nullable: true),
                    BsEndDate = table.Column<string>(nullable: true),
                    AdStartDate = table.Column<DateTime>(nullable: true),
                    AdEndDate = table.Column<DateTime>(nullable: true),
                    Status = table.Column<bool>(nullable: true),
                    IsActive = table.Column<bool>(nullable: false),
                    PreviousFyId = table.Column<int>(nullable: true),
                    CreatedBy = table.Column<string>(nullable: true),
                    CreatedDate = table.Column<DateTime>(nullable: true),
                    UpdatedBy = table.Column<string>(nullable: true),
                    UpdatedDate = table.Column<DateTime>(nullable: true),
                    DeletedBy = table.Column<string>(nullable: true),
                    DeletedDate = table.Column<DateTime>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_FiscalYear", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Issues",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    ProjectId = table.Column<int>(nullable: false),
                    OrganizationName = table.Column<string>(nullable: true),
                    ClientName = table.Column<string>(nullable: true),
                    ContactNumber = table.Column<string>(nullable: true),
                    BsStartDate = table.Column<string>(nullable: true),
                    BsEndDate = table.Column<string>(nullable: true),
                    IssueType = table.Column<string>(nullable: true),
                    Email = table.Column<string>(nullable: true),
                    StateId = table.Column<int>(nullable: false),
                    DistrictId = table.Column<int>(nullable: false),
                    PalikaId = table.Column<int>(nullable: false),
                    Issue = table.Column<string>(nullable: true),
                    Description = table.Column<string>(nullable: true),
                    IsActive = table.Column<bool>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Issues", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "ProjectType",
                columns: table => new
                {
                    ProjectTypeId = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    ProjectTypeName = table.Column<string>(nullable: true),
                    CreatedBy = table.Column<string>(nullable: true),
                    CreatedDate = table.Column<DateTime>(nullable: false),
                    IsActive = table.Column<bool>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ProjectType", x => x.ProjectTypeId);
                });

            migrationBuilder.CreateTable(
                name: "Server",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    ServerName = table.Column<string>(nullable: true),
                    IsActive = table.Column<bool>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Server", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "State",
                columns: table => new
                {
                    StateId = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    StateName = table.Column<string>(nullable: true),
                    StateNameNep = table.Column<string>(nullable: false),
                    StateCode = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_State", x => x.StateId);
                });

            migrationBuilder.CreateTable(
                name: "Support",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    ProjectId = table.Column<int>(nullable: false),
                    OrganizationName = table.Column<string>(nullable: true),
                    ContactedPerson = table.Column<string>(nullable: true),
                    ContactNumber = table.Column<string>(nullable: true),
                    BsStartDate = table.Column<string>(nullable: true),
                    SupportedById = table.Column<int>(nullable: false),
                    ProblemStatus = table.Column<string>(nullable: true),
                    StateId = table.Column<int>(nullable: false),
                    DistrictId = table.Column<int>(nullable: false),
                    PalikaId = table.Column<int>(nullable: false),
                    Error = table.Column<string>(nullable: true),
                    Email = table.Column<string>(nullable: true),
                    Details = table.Column<string>(nullable: true),
                    IsActive = table.Column<bool>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Support", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "AspNetRoleClaims",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    RoleId = table.Column<string>(nullable: false),
                    ClaimType = table.Column<string>(nullable: true),
                    ClaimValue = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AspNetRoleClaims", x => x.Id);
                    table.ForeignKey(
                        name: "FK_AspNetRoleClaims_AspNetRoles_RoleId",
                        column: x => x.RoleId,
                        principalTable: "AspNetRoles",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "AspNetUserClaims",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    UserId = table.Column<string>(nullable: false),
                    ClaimType = table.Column<string>(nullable: true),
                    ClaimValue = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AspNetUserClaims", x => x.Id);
                    table.ForeignKey(
                        name: "FK_AspNetUserClaims_AspNetUsers_UserId",
                        column: x => x.UserId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "AspNetUserLogins",
                columns: table => new
                {
                    LoginProvider = table.Column<string>(nullable: false),
                    ProviderKey = table.Column<string>(nullable: false),
                    ProviderDisplayName = table.Column<string>(nullable: true),
                    UserId = table.Column<string>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AspNetUserLogins", x => new { x.LoginProvider, x.ProviderKey });
                    table.ForeignKey(
                        name: "FK_AspNetUserLogins_AspNetUsers_UserId",
                        column: x => x.UserId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "AspNetUserRoles",
                columns: table => new
                {
                    UserId = table.Column<string>(nullable: false),
                    RoleId = table.Column<string>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AspNetUserRoles", x => new { x.UserId, x.RoleId });
                    table.ForeignKey(
                        name: "FK_AspNetUserRoles_AspNetRoles_RoleId",
                        column: x => x.RoleId,
                        principalTable: "AspNetRoles",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_AspNetUserRoles_AspNetUsers_UserId",
                        column: x => x.UserId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "AspNetUserTokens",
                columns: table => new
                {
                    UserId = table.Column<string>(nullable: false),
                    LoginProvider = table.Column<string>(nullable: false),
                    Name = table.Column<string>(nullable: false),
                    Value = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AspNetUserTokens", x => new { x.UserId, x.LoginProvider, x.Name });
                    table.ForeignKey(
                        name: "FK_AspNetUserTokens_AspNetUsers_UserId",
                        column: x => x.UserId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Project",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    ProjectName = table.Column<string>(nullable: true),
                    Description = table.Column<string>(nullable: true),
                    ProjectTypeId = table.Column<int>(nullable: false),
                    ProjectTypeName = table.Column<string>(nullable: true),
                    IsActive = table.Column<bool>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Project", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Project_ProjectType_ProjectTypeId",
                        column: x => x.ProjectTypeId,
                        principalTable: "ProjectType",
                        principalColumn: "ProjectTypeId",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "District",
                columns: table => new
                {
                    DistrictId = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    DistrictName = table.Column<string>(nullable: true),
                    StateId = table.Column<int>(nullable: false),
                    DistrictNameNep = table.Column<string>(nullable: false),
                    DistrictCode = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_District", x => x.DistrictId);
                    table.ForeignKey(
                        name: "FK_District_State_StateId",
                        column: x => x.StateId,
                        principalTable: "State",
                        principalColumn: "StateId",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Palika",
                columns: table => new
                {
                    PalikaId = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    DistrictId = table.Column<int>(nullable: false),
                    PalikaName = table.Column<string>(nullable: true),
                    PalikaNameNep = table.Column<string>(nullable: false),
                    PalikaCode = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Palika", x => x.PalikaId);
                    table.ForeignKey(
                        name: "FK_Palika_District_DistrictId",
                        column: x => x.DistrictId,
                        principalTable: "District",
                        principalColumn: "DistrictId",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Deployment",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    ClientName = table.Column<string>(nullable: true),
                    PhoneNumber = table.Column<string>(nullable: true),
                    EmployeeName = table.Column<string>(nullable: true),
                    ProjectId = table.Column<int>(nullable: false),
                    DeploymentBy = table.Column<int>(nullable: false),
                    BsStartDate = table.Column<string>(nullable: true),
                    Remarks = table.Column<string>(nullable: true),
                    ProjectName = table.Column<string>(nullable: true),
                    ServerName = table.Column<string>(nullable: true),
                    StateId = table.Column<int>(nullable: false),
                    DistrictId = table.Column<int>(nullable: false),
                    PalikaId = table.Column<int>(nullable: false),
                    ServerId = table.Column<int>(nullable: false),
                    ProjectNameList = table.Column<string>(nullable: true),
                    IsActive = table.Column<bool>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Deployment", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Deployment_District_DistrictId",
                        column: x => x.DistrictId,
                        principalTable: "District",
                        principalColumn: "DistrictId",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Deployment_Palika_PalikaId",
                        column: x => x.PalikaId,
                        principalTable: "Palika",
                        principalColumn: "PalikaId",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Deployment_Server_ServerId",
                        column: x => x.ServerId,
                        principalTable: "Server",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Deployment_State_StateId",
                        column: x => x.StateId,
                        principalTable: "State",
                        principalColumn: "StateId",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "ImplementatedSoftwares",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    ProjectId = table.Column<int>(nullable: false),
                    FiscalYearId = table.Column<int>(nullable: false),
                    StateId = table.Column<int>(nullable: false),
                    DistrictId = table.Column<int>(nullable: false),
                    PalikaId = table.Column<int>(nullable: false),
                    ContactPerson = table.Column<string>(nullable: true),
                    PhoneNumber = table.Column<string>(nullable: true),
                    Email = table.Column<string>(nullable: true),
                    ImplementedBy = table.Column<string>(nullable: true),
                    ImplementedDate = table.Column<string>(nullable: true),
                    Description = table.Column<string>(nullable: true),
                    ProjectAmount = table.Column<decimal>(type: "decimal(18, 2)", nullable: false),
                    ProjectFinalizedBy = table.Column<int>(nullable: false),
                    CreatedBy = table.Column<string>(nullable: true),
                    CreatedDate = table.Column<DateTime>(nullable: false),
                    ModifiedBy = table.Column<string>(nullable: true),
                    ModifiedDate = table.Column<DateTime>(nullable: false),
                    IsActive = table.Column<bool>(nullable: false),
                    Feedback = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ImplementatedSoftwares", x => x.Id);
                    table.ForeignKey(
                        name: "FK_ImplementatedSoftwares_District_DistrictId",
                        column: x => x.DistrictId,
                        principalTable: "District",
                        principalColumn: "DistrictId",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_ImplementatedSoftwares_FiscalYear_FiscalYearId",
                        column: x => x.FiscalYearId,
                        principalTable: "FiscalYear",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_ImplementatedSoftwares_Palika_PalikaId",
                        column: x => x.PalikaId,
                        principalTable: "Palika",
                        principalColumn: "PalikaId",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_ImplementatedSoftwares_Employee_ProjectFinalizedBy",
                        column: x => x.ProjectFinalizedBy,
                        principalTable: "Employee",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_ImplementatedSoftwares_Project_ProjectId",
                        column: x => x.ProjectId,
                        principalTable: "Project",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_ImplementatedSoftwares_State_StateId",
                        column: x => x.StateId,
                        principalTable: "State",
                        principalColumn: "StateId",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Links",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(nullable: true),
                    Address = table.Column<string>(nullable: true),
                    PhoneNumber = table.Column<string>(nullable: true),
                    Email = table.Column<string>(nullable: true),
                    Priority = table.Column<string>(nullable: true),
                    PriorityId = table.Column<int>(nullable: false),
                    ContactPerson = table.Column<string>(nullable: true),
                    WebSite = table.Column<string>(nullable: true),
                    StateId = table.Column<int>(nullable: false),
                    DistrictId = table.Column<int>(nullable: false),
                    PalikaId = table.Column<int>(nullable: false),
                    IsActive = table.Column<bool>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Links", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Links_District_DistrictId",
                        column: x => x.DistrictId,
                        principalTable: "District",
                        principalColumn: "DistrictId",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Links_Palika_PalikaId",
                        column: x => x.PalikaId,
                        principalTable: "Palika",
                        principalColumn: "PalikaId",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Links_State_StateId",
                        column: x => x.StateId,
                        principalTable: "State",
                        principalColumn: "StateId",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Ministry",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(nullable: true),
                    Address = table.Column<string>(nullable: true),
                    PhoneNumber = table.Column<string>(nullable: true),
                    Email = table.Column<string>(nullable: true),
                    Priority = table.Column<string>(nullable: true),
                    PriorityId = table.Column<int>(nullable: false),
                    ContactPerson = table.Column<string>(nullable: true),
                    WebSite = table.Column<string>(nullable: true),
                    StateId = table.Column<int>(nullable: false),
                    DistrictId = table.Column<int>(nullable: false),
                    PalikaId = table.Column<int>(nullable: false),
                    IsActive = table.Column<bool>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Ministry", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Ministry_District_DistrictId",
                        column: x => x.DistrictId,
                        principalTable: "District",
                        principalColumn: "DistrictId",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Ministry_Palika_PalikaId",
                        column: x => x.PalikaId,
                        principalTable: "Palika",
                        principalColumn: "PalikaId",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Ministry_State_StateId",
                        column: x => x.StateId,
                        principalTable: "State",
                        principalColumn: "StateId",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "ProjectRequirement",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    ProjectId = table.Column<int>(nullable: false),
                    ClientName = table.Column<string>(nullable: true),
                    EmployeeName = table.Column<string>(nullable: true),
                    ProjectName = table.Column<string>(nullable: true),
                    RequirementDate = table.Column<DateTime>(nullable: false),
                    Requirements = table.Column<string>(nullable: true),
                    StateId = table.Column<int>(nullable: false),
                    DistrictId = table.Column<int>(nullable: false),
                    PalikaId = table.Column<int>(nullable: false),
                    BsStartDate = table.Column<string>(nullable: true),
                    BsEndDate = table.Column<string>(nullable: true),
                    Status = table.Column<string>(nullable: true),
                    ProjectAssignedTo = table.Column<int>(nullable: true),
                    IsActive = table.Column<bool>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ProjectRequirement", x => x.Id);
                    table.ForeignKey(
                        name: "FK_ProjectRequirement_District_DistrictId",
                        column: x => x.DistrictId,
                        principalTable: "District",
                        principalColumn: "DistrictId",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_ProjectRequirement_Palika_PalikaId",
                        column: x => x.PalikaId,
                        principalTable: "Palika",
                        principalColumn: "PalikaId",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_ProjectRequirement_Project_ProjectId",
                        column: x => x.ProjectId,
                        principalTable: "Project",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_ProjectRequirement_State_StateId",
                        column: x => x.StateId,
                        principalTable: "State",
                        principalColumn: "StateId",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "UnDeployment",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    ProjectId = table.Column<int>(nullable: false),
                    ProjectName = table.Column<string>(nullable: true),
                    StateId = table.Column<int>(nullable: false),
                    DistrictId = table.Column<int>(nullable: false),
                    PalikaId = table.Column<int>(nullable: false),
                    IsActive = table.Column<bool>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_UnDeployment", x => x.Id);
                    table.ForeignKey(
                        name: "FK_UnDeployment_District_DistrictId",
                        column: x => x.DistrictId,
                        principalTable: "District",
                        principalColumn: "DistrictId",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_UnDeployment_Palika_PalikaId",
                        column: x => x.PalikaId,
                        principalTable: "Palika",
                        principalColumn: "PalikaId",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_UnDeployment_State_StateId",
                        column: x => x.StateId,
                        principalTable: "State",
                        principalColumn: "StateId",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Ward",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(nullable: true),
                    Name_En = table.Column<string>(nullable: true),
                    Code = table.Column<string>(nullable: true),
                    IsDefault = table.Column<bool>(nullable: false),
                    Status = table.Column<bool>(nullable: false),
                    PalikaId = table.Column<int>(nullable: false),
                    CreatedBy = table.Column<string>(nullable: true),
                    CreatedDate = table.Column<DateTime>(nullable: false),
                    UpdatedBy = table.Column<string>(nullable: true),
                    UpdatedDate = table.Column<DateTime>(nullable: true),
                    DeletedBy = table.Column<string>(nullable: true),
                    DeletedDate = table.Column<DateTime>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Ward", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Ward_Palika_PalikaId",
                        column: x => x.PalikaId,
                        principalTable: "Palika",
                        principalColumn: "PalikaId",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "AddProject",
                columns: table => new
                {
                    AddProjectId = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    ProjectId = table.Column<int>(nullable: false),
                    ProjectName = table.Column<string>(nullable: true),
                    DeploymentId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AddProject", x => x.AddProjectId);
                    table.ForeignKey(
                        name: "FK_AddProject_Deployment_DeploymentId",
                        column: x => x.DeploymentId,
                        principalTable: "Deployment",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_AddProject_Project_ProjectId",
                        column: x => x.ProjectId,
                        principalTable: "Project",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Requirement",
                columns: table => new
                {
                    RequirementId = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Requirements = table.Column<string>(nullable: true),
                    Result = table.Column<string>(nullable: true),
                    ProjectRequirementId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Requirement", x => x.RequirementId);
                    table.ForeignKey(
                        name: "FK_Requirement_ProjectRequirement_ProjectRequirementId",
                        column: x => x.ProjectRequirementId,
                        principalTable: "ProjectRequirement",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_AddProject_DeploymentId",
                table: "AddProject",
                column: "DeploymentId");

            migrationBuilder.CreateIndex(
                name: "IX_AddProject_ProjectId",
                table: "AddProject",
                column: "ProjectId");

            migrationBuilder.CreateIndex(
                name: "IX_AspNetRoleClaims_RoleId",
                table: "AspNetRoleClaims",
                column: "RoleId");

            migrationBuilder.CreateIndex(
                name: "RoleNameIndex",
                table: "AspNetRoles",
                column: "NormalizedName",
                unique: true,
                filter: "[NormalizedName] IS NOT NULL");

            migrationBuilder.CreateIndex(
                name: "IX_AspNetUserClaims_UserId",
                table: "AspNetUserClaims",
                column: "UserId");

            migrationBuilder.CreateIndex(
                name: "IX_AspNetUserLogins_UserId",
                table: "AspNetUserLogins",
                column: "UserId");

            migrationBuilder.CreateIndex(
                name: "IX_AspNetUserRoles_RoleId",
                table: "AspNetUserRoles",
                column: "RoleId");

            migrationBuilder.CreateIndex(
                name: "EmailIndex",
                table: "AspNetUsers",
                column: "NormalizedEmail");

            migrationBuilder.CreateIndex(
                name: "UserNameIndex",
                table: "AspNetUsers",
                column: "NormalizedUserName",
                unique: true,
                filter: "[NormalizedUserName] IS NOT NULL");

            migrationBuilder.CreateIndex(
                name: "IX_Deployment_DistrictId",
                table: "Deployment",
                column: "DistrictId");

            migrationBuilder.CreateIndex(
                name: "IX_Deployment_PalikaId",
                table: "Deployment",
                column: "PalikaId");

            migrationBuilder.CreateIndex(
                name: "IX_Deployment_ServerId",
                table: "Deployment",
                column: "ServerId");

            migrationBuilder.CreateIndex(
                name: "IX_Deployment_StateId",
                table: "Deployment",
                column: "StateId");

            migrationBuilder.CreateIndex(
                name: "IX_District_StateId",
                table: "District",
                column: "StateId");

            migrationBuilder.CreateIndex(
                name: "IX_ImplementatedSoftwares_DistrictId",
                table: "ImplementatedSoftwares",
                column: "DistrictId");

            migrationBuilder.CreateIndex(
                name: "IX_ImplementatedSoftwares_FiscalYearId",
                table: "ImplementatedSoftwares",
                column: "FiscalYearId");

            migrationBuilder.CreateIndex(
                name: "IX_ImplementatedSoftwares_PalikaId",
                table: "ImplementatedSoftwares",
                column: "PalikaId");

            migrationBuilder.CreateIndex(
                name: "IX_ImplementatedSoftwares_ProjectFinalizedBy",
                table: "ImplementatedSoftwares",
                column: "ProjectFinalizedBy");

            migrationBuilder.CreateIndex(
                name: "IX_ImplementatedSoftwares_ProjectId",
                table: "ImplementatedSoftwares",
                column: "ProjectId");

            migrationBuilder.CreateIndex(
                name: "IX_ImplementatedSoftwares_StateId",
                table: "ImplementatedSoftwares",
                column: "StateId");

            migrationBuilder.CreateIndex(
                name: "IX_Links_DistrictId",
                table: "Links",
                column: "DistrictId");

            migrationBuilder.CreateIndex(
                name: "IX_Links_PalikaId",
                table: "Links",
                column: "PalikaId");

            migrationBuilder.CreateIndex(
                name: "IX_Links_StateId",
                table: "Links",
                column: "StateId");

            migrationBuilder.CreateIndex(
                name: "IX_Ministry_DistrictId",
                table: "Ministry",
                column: "DistrictId");

            migrationBuilder.CreateIndex(
                name: "IX_Ministry_PalikaId",
                table: "Ministry",
                column: "PalikaId");

            migrationBuilder.CreateIndex(
                name: "IX_Ministry_StateId",
                table: "Ministry",
                column: "StateId");

            migrationBuilder.CreateIndex(
                name: "IX_Palika_DistrictId",
                table: "Palika",
                column: "DistrictId");

            migrationBuilder.CreateIndex(
                name: "IX_Project_ProjectTypeId",
                table: "Project",
                column: "ProjectTypeId");

            migrationBuilder.CreateIndex(
                name: "IX_ProjectRequirement_DistrictId",
                table: "ProjectRequirement",
                column: "DistrictId");

            migrationBuilder.CreateIndex(
                name: "IX_ProjectRequirement_PalikaId",
                table: "ProjectRequirement",
                column: "PalikaId");

            migrationBuilder.CreateIndex(
                name: "IX_ProjectRequirement_ProjectId",
                table: "ProjectRequirement",
                column: "ProjectId");

            migrationBuilder.CreateIndex(
                name: "IX_ProjectRequirement_StateId",
                table: "ProjectRequirement",
                column: "StateId");

            migrationBuilder.CreateIndex(
                name: "IX_Requirement_ProjectRequirementId",
                table: "Requirement",
                column: "ProjectRequirementId");

            migrationBuilder.CreateIndex(
                name: "IX_UnDeployment_DistrictId",
                table: "UnDeployment",
                column: "DistrictId");

            migrationBuilder.CreateIndex(
                name: "IX_UnDeployment_PalikaId",
                table: "UnDeployment",
                column: "PalikaId");

            migrationBuilder.CreateIndex(
                name: "IX_UnDeployment_StateId",
                table: "UnDeployment",
                column: "StateId");

            migrationBuilder.CreateIndex(
                name: "IX_Ward_PalikaId",
                table: "Ward",
                column: "PalikaId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "AddProject");

            migrationBuilder.DropTable(
                name: "AspNetRoleClaims");

            migrationBuilder.DropTable(
                name: "AspNetUserClaims");

            migrationBuilder.DropTable(
                name: "AspNetUserLogins");

            migrationBuilder.DropTable(
                name: "AspNetUserRoles");

            migrationBuilder.DropTable(
                name: "AspNetUserTokens");

            migrationBuilder.DropTable(
                name: "Contract");

            migrationBuilder.DropTable(
                name: "Demo");

            migrationBuilder.DropTable(
                name: "DemoLink");

            migrationBuilder.DropTable(
                name: "ImplementatedSoftwares");

            migrationBuilder.DropTable(
                name: "Issues");

            migrationBuilder.DropTable(
                name: "Links");

            migrationBuilder.DropTable(
                name: "Ministry");

            migrationBuilder.DropTable(
                name: "Requirement");

            migrationBuilder.DropTable(
                name: "Support");

            migrationBuilder.DropTable(
                name: "UnDeployment");

            migrationBuilder.DropTable(
                name: "Ward");

            migrationBuilder.DropTable(
                name: "Deployment");

            migrationBuilder.DropTable(
                name: "AspNetRoles");

            migrationBuilder.DropTable(
                name: "AspNetUsers");

            migrationBuilder.DropTable(
                name: "FiscalYear");

            migrationBuilder.DropTable(
                name: "Employee");

            migrationBuilder.DropTable(
                name: "ProjectRequirement");

            migrationBuilder.DropTable(
                name: "Server");

            migrationBuilder.DropTable(
                name: "Palika");

            migrationBuilder.DropTable(
                name: "Project");

            migrationBuilder.DropTable(
                name: "District");

            migrationBuilder.DropTable(
                name: "ProjectType");

            migrationBuilder.DropTable(
                name: "State");
        }
    }
}
