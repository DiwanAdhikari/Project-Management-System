using Microsoft.EntityFrameworkCore.Migrations;

namespace ProjectManagement.Migrations
{
    public partial class agl : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "Name",
                table: "PersonalInformation",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AddColumn<string>(
                name: "CurrentScope",
                table: "PersonalInformation",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "FutureScope",
                table: "PersonalInformation",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "CurrentScope",
                table: "PersonalInformation");

            migrationBuilder.DropColumn(
                name: "FutureScope",
                table: "PersonalInformation");

            migrationBuilder.AlterColumn<string>(
                name: "Name",
                table: "PersonalInformation",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string));
        }
    }
}
