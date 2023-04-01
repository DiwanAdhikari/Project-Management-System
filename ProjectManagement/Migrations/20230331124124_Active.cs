using Microsoft.EntityFrameworkCore.Migrations;

namespace ProjectManagement.Migrations
{
    public partial class Active : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<bool>(
                name: "IsActive",
                table: "PersonalInformation",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<string>(
                name: "Reference",
                table: "PersonalInformation",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Remarks",
                table: "PersonalInformation",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "IsActive",
                table: "PersonalInformation");

            migrationBuilder.DropColumn(
                name: "Reference",
                table: "PersonalInformation");

            migrationBuilder.DropColumn(
                name: "Remarks",
                table: "PersonalInformation");
        }
    }
}
