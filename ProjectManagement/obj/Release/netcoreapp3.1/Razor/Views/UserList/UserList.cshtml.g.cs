#pragma checksum "E:\SANJAY\Project Management\ProjectManagement\ProjectManagement\ProjectManagement\Views\UserList\UserList.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "cbc216f459a9acf47b0b36ddeb62d750aae8c7b0"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_UserList_UserList), @"mvc.1.0.view", @"/Views/UserList/UserList.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "E:\SANJAY\Project Management\ProjectManagement\ProjectManagement\ProjectManagement\Views\_ViewImports.cshtml"
using ProjectManagement;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "E:\SANJAY\Project Management\ProjectManagement\ProjectManagement\ProjectManagement\Views\_ViewImports.cshtml"
using ProjectManagement.Models;

#line default
#line hidden
#nullable disable
#nullable restore
#line 3 "E:\SANJAY\Project Management\ProjectManagement\ProjectManagement\ProjectManagement\Views\_ViewImports.cshtml"
using ProjectManagement.Utilities;

#line default
#line hidden
#nullable disable
#nullable restore
#line 4 "E:\SANJAY\Project Management\ProjectManagement\ProjectManagement\ProjectManagement\Views\_ViewImports.cshtml"
using ProjectManagement.Data;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"cbc216f459a9acf47b0b36ddeb62d750aae8c7b0", @"/Views/UserList/UserList.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"eb86f851288fda293f71713cd594c2f277bbf1a7", @"/Views/_ViewImports.cshtml")]
    public class Views_UserList_UserList : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<IEnumerable<ProjectManagement.Models.UserListViewModel>>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-area", "Identity", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-page", "/Account/Register", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("mb-2 btn btn-info btn-create"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.SelectTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_SelectTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.OptionTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_OptionTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 3 "E:\SANJAY\Project Management\ProjectManagement\ProjectManagement\ProjectManagement\Views\UserList\UserList.cshtml"
  
    ViewData["Title"] = "UserList";
    Layout = "~/Views/Shared/_Layout.cshtml";

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n<div class=\"main-card mb-2 card\">\r\n    <div class=\"card-body\">\r\n        <h1 class=\"page-title\">User List</h1>\r\n    </div>\r\n</div>\r\n\r\n<div class=\"main-card mb-3 card\">\r\n    <div class=\"card-body\">\r\n        <p>\r\n            ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "cbc216f459a9acf47b0b36ddeb62d750aae8c7b05465", async() => {
                WriteLiteral("<i class=\"fa fa-plus\"></i>Create New User");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Area = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Page = (string)__tagHelperAttribute_1.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral(@"
            <div class=""table-responsive"">
                <table class=""mb-0 table table-hover"">
                    <thead>
                        <tr>
                            <th>S.N</th>
                            <th>
                                ");
#nullable restore
#line 24 "E:\SANJAY\Project Management\ProjectManagement\ProjectManagement\ProjectManagement\Views\UserList\UserList.cshtml"
                           Write(Html.DisplayNameFor(model => model.Name));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                            </th>\r\n                            <th>\r\n                                ");
#nullable restore
#line 27 "E:\SANJAY\Project Management\ProjectManagement\ProjectManagement\ProjectManagement\Views\UserList\UserList.cshtml"
                           Write(Html.DisplayNameFor(model => model.UserName));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                            </th>\r\n                            <th>\r\n                                ");
#nullable restore
#line 30 "E:\SANJAY\Project Management\ProjectManagement\ProjectManagement\ProjectManagement\Views\UserList\UserList.cshtml"
                           Write(Html.DisplayNameFor(model => model.Role));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                            </th>\r\n                            <th>\r\n                                ");
#nullable restore
#line 33 "E:\SANJAY\Project Management\ProjectManagement\ProjectManagement\ProjectManagement\Views\UserList\UserList.cshtml"
                           Write(Html.DisplayNameFor(model => model.SubOffice));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                            </th>\r\n                            <th>\r\n                                ");
#nullable restore
#line 36 "E:\SANJAY\Project Management\ProjectManagement\ProjectManagement\ProjectManagement\Views\UserList\UserList.cshtml"
                           Write(Html.DisplayNameFor(model => model.Active));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                            </th>\r\n                            <th></th>\r\n                        </tr>\r\n                    </thead>\r\n                    <tbody>\r\n");
#nullable restore
#line 42 "E:\SANJAY\Project Management\ProjectManagement\ProjectManagement\ProjectManagement\Views\UserList\UserList.cshtml"
                         foreach (var item in Model)
                        {
                            var color = item.Active ? "green" : "red";
                            var isActive = item.Active ? "Active" : "InActive";
                            var isChecked = item.Active ? "checked" : "";

#line default
#line hidden
#nullable disable
            WriteLiteral("                            <tr");
            BeginWriteAttribute("style", " style=\"", 1943, "\"", 1964, 2);
            WriteAttributeValue("", 1951, "color:", 1951, 6, true);
#nullable restore
#line 47 "E:\SANJAY\Project Management\ProjectManagement\ProjectManagement\ProjectManagement\Views\UserList\UserList.cshtml"
WriteAttributeValue(" ", 1957, color, 1958, 6, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(">\r\n                                <td>\r\n                                    ");
#nullable restore
#line 49 "E:\SANJAY\Project Management\ProjectManagement\ProjectManagement\ProjectManagement\Views\UserList\UserList.cshtml"
                                Write($"{Model.ToList().IndexOf(item) + 1}");

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                                </td>\r\n                                <td>\r\n                                    ");
#nullable restore
#line 52 "E:\SANJAY\Project Management\ProjectManagement\ProjectManagement\ProjectManagement\Views\UserList\UserList.cshtml"
                               Write(Html.DisplayFor(modelItem => item.Name));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                                </td>\r\n                                <td>\r\n                                    ");
#nullable restore
#line 55 "E:\SANJAY\Project Management\ProjectManagement\ProjectManagement\ProjectManagement\Views\UserList\UserList.cshtml"
                               Write(Html.DisplayFor(modelItem => item.UserName));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                                </td>\r\n                                <td>\r\n                                    ");
#nullable restore
#line 58 "E:\SANJAY\Project Management\ProjectManagement\ProjectManagement\ProjectManagement\Views\UserList\UserList.cshtml"
                               Write(Html.DisplayFor(modelItem => item.Role));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                                </td>\r\n                                <td>\r\n                                    ");
#nullable restore
#line 61 "E:\SANJAY\Project Management\ProjectManagement\ProjectManagement\ProjectManagement\Views\UserList\UserList.cshtml"
                               Write(Html.DisplayFor(modelItem => item.SubOffice));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                                </td>\r\n\r\n                                <td>\r\n                                    ");
#nullable restore
#line 65 "E:\SANJAY\Project Management\ProjectManagement\ProjectManagement\ProjectManagement\Views\UserList\UserList.cshtml"
                               Write(isActive);

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                                </td>\r\n                                <td>\r\n                                    <a href=\"#\" title=\"Reset Password\"");
            BeginWriteAttribute("onclick", " onclick=\"", 2986, "\"", 3041, 7);
            WriteAttributeValue("", 2996, "ResetPassword(this,", 2996, 19, true);
            WriteAttributeValue(" ", 3015, "\'", 3016, 2, true);
#nullable restore
#line 68 "E:\SANJAY\Project Management\ProjectManagement\ProjectManagement\ProjectManagement\Views\UserList\UserList.cshtml"
WriteAttributeValue("", 3017, item.Id, 3017, 8, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 3025, "\',", 3025, 2, true);
            WriteAttributeValue(" ", 3027, "\'", 3028, 2, true);
#nullable restore
#line 68 "E:\SANJAY\Project Management\ProjectManagement\ProjectManagement\ProjectManagement\Views\UserList\UserList.cshtml"
WriteAttributeValue("", 3029, item.Name, 3029, 10, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 3039, "\')", 3039, 2, true);
            EndWriteAttribute();
            WriteLiteral("><i class=\"fa fa-unlock-alt\"></i></a> |\r\n                                    <input type=\"checkbox\" ");
#nullable restore
#line 69 "E:\SANJAY\Project Management\ProjectManagement\ProjectManagement\ProjectManagement\Views\UserList\UserList.cshtml"
                                                      Write(isChecked);

#line default
#line hidden
#nullable disable
            WriteLiteral(" onchange=\"IsApprovedOrNot(this, \'");
#nullable restore
#line 69 "E:\SANJAY\Project Management\ProjectManagement\ProjectManagement\ProjectManagement\Views\UserList\UserList.cshtml"
                                                                                                  Write(item.Id);

#line default
#line hidden
#nullable disable
            WriteLiteral("\')\" style=\"\" data-toggle=\"toggle\" data-on=\"Activate\" data-off=\"DeActivate\" data-onstyle=\"success\" data-offstyle=\"danger\" data-size=\"xs\" />\r\n");
#nullable restore
#line 70 "E:\SANJAY\Project Management\ProjectManagement\ProjectManagement\ProjectManagement\Views\UserList\UserList.cshtml"
                                     if (User.IsInRole("Administrator"))
                                    {

#line default
#line hidden
#nullable disable
            WriteLiteral("                                        ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("select", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "cbc216f459a9acf47b0b36ddeb62d750aae8c7b015357", async() => {
                WriteLiteral("\r\n                                            ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("option", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "cbc216f459a9acf47b0b36ddeb62d750aae8c7b015662", async() => {
                    WriteLiteral("Select Role");
                }
                );
                __Microsoft_AspNetCore_Mvc_TagHelpers_OptionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.OptionTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_OptionTagHelper);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral("\r\n                                        ");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_SelectTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.SelectTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_SelectTagHelper);
#nullable restore
#line 72 "E:\SANJAY\Project Management\ProjectManagement\ProjectManagement\ProjectManagement\Views\UserList\UserList.cshtml"
__Microsoft_AspNetCore_Mvc_TagHelpers_SelectTagHelper.For = ModelExpressionProvider.CreateModelExpression(ViewData, __model => item.Role);

#line default
#line hidden
#nullable disable
            __tagHelperExecutionContext.AddTagHelperAttribute("asp-for", __Microsoft_AspNetCore_Mvc_TagHelpers_SelectTagHelper.For, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
#nullable restore
#line 72 "E:\SANJAY\Project Management\ProjectManagement\ProjectManagement\ProjectManagement\Views\UserList\UserList.cshtml"
__Microsoft_AspNetCore_Mvc_TagHelpers_SelectTagHelper.Items = await _utility.GetSelectListRoles();

#line default
#line hidden
#nullable disable
            __tagHelperExecutionContext.AddTagHelperAttribute("asp-items", __Microsoft_AspNetCore_Mvc_TagHelpers_SelectTagHelper.Items, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            BeginAddHtmlAttributeValues(__tagHelperExecutionContext, "onchange", 7, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            AddHtmlAttributeValue("", 3574, "ChangeRole(this,", 3574, 16, true);
            AddHtmlAttributeValue(" ", 3590, "\'", 3591, 2, true);
#nullable restore
#line 72 "E:\SANJAY\Project Management\ProjectManagement\ProjectManagement\ProjectManagement\Views\UserList\UserList.cshtml"
AddHtmlAttributeValue("", 3592, item.Id, 3592, 8, false);

#line default
#line hidden
#nullable disable
            AddHtmlAttributeValue("", 3600, "\',", 3600, 2, true);
            AddHtmlAttributeValue(" ", 3602, "\'", 3603, 2, true);
#nullable restore
#line 72 "E:\SANJAY\Project Management\ProjectManagement\ProjectManagement\ProjectManagement\Views\UserList\UserList.cshtml"
AddHtmlAttributeValue("", 3604, item.Name, 3604, 10, false);

#line default
#line hidden
#nullable disable
            AddHtmlAttributeValue("", 3614, "\')", 3614, 2, true);
            EndAddHtmlAttributeValues(__tagHelperExecutionContext);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n");
#nullable restore
#line 75 "E:\SANJAY\Project Management\ProjectManagement\ProjectManagement\ProjectManagement\Views\UserList\UserList.cshtml"
                                    }

#line default
#line hidden
#nullable disable
            WriteLiteral("                                </td>\r\n                            </tr>\r\n");
#nullable restore
#line 78 "E:\SANJAY\Project Management\ProjectManagement\ProjectManagement\ProjectManagement\Views\UserList\UserList.cshtml"
                        }

#line default
#line hidden
#nullable disable
            WriteLiteral("                    </tbody>\r\n                </table>\r\n            </div>\r\n    </div>\r\n</div>\r\n\r\n<link href=\"https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/css/bootstrap4-toggle.min.css\" rel=\"stylesheet\">\r\n");
            DefineSection("Scripts", async() => {
                WriteLiteral(@"
    <script src=""https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/js/bootstrap4-toggle.min.js""></script>
    <script>
        function ResetPassword(a, id, name) {
            $.confirm({
                title: 'Reset Password?',
                content: `Are you sure User Name ${name}`,
                autoClose: 'cancelAction|5000',
                buttons: {
                    resetPassword: {
                        text: 'Reset',
                        btnClass: 'btn-green',
                        action: function() {
                            $.ajax({
                                url: '");
#nullable restore
#line 100 "E:\SANJAY\Project Management\ProjectManagement\ProjectManagement\ProjectManagement\Views\UserList\UserList.cshtml"
                                 Write(Url.Action("ResetPassword"));

#line default
#line hidden
#nullable disable
                WriteLiteral(@"',
                                type: 'get',
                                data: { id: id },
                                success: function (result) {
                                    if (result === true) {
                                        Notification('New Password is - NewPass@123');
                                    } else {
                                        Notification('Please try again!');
                                    }
                                },
                                error: function() {
                                    $.alert('error in calling ajax !!');
                                }
                            });
                        }
                    },
                    cancelAction: function() {
                    }
                }
            });
        }
    </script>
    <script>
        var i = 1;
        function IsApprovedOrNot(a, id, name) {
            debugger;
            var value = $(a).is");
                WriteLiteral("(\":checked\");\r\n            if (i > 1) {\r\n                i = 1;\r\n                return;\r\n            }\r\n            $.ajax({\r\n                type: \'GET\',\r\n                contentType: \"application/json; charset=utf-8\",\r\n                url: \'");
#nullable restore
#line 134 "E:\SANJAY\Project Management\ProjectManagement\ProjectManagement\ProjectManagement\Views\UserList\UserList.cshtml"
                 Write(Url.Action("UserActivateOrDeactivate"));

#line default
#line hidden
#nullable disable
                WriteLiteral(@"',
                data: { id: id },
                success: function (data) {
                    debugger;
                    if (data === 1) {
                        i = 2;
                        $(a).bootstrapToggle('on');
                        $(a).closest('tr').attr('style', 'color: green;');
                        $(a).closest('tr').find('.status').html('Active');
                    } else if (data === 2) {
                        i = 3;
                        $(a).bootstrapToggle('off');
                        $(a).closest('tr').attr('style', 'color: red;');
                        $(a).closest('tr').find('.status').html('InActive');
                    } else {
                        i = 4;
                        value ? $(a).bootstrapToggle('off') : $(a).bootstrapToggle('on');
                        value ? $(a).closest('tr').attr('style', 'color: red;') : $(a).closest('tr').attr('style', 'color: green;');
                        value ? $(a).closest('tr').find('.statu");
                WriteLiteral(@"s').html('InActive') : $(a).closest('tr').find('.status').html('Active');
                    }
                }
            });
        }
    </script>
    <script>
        function ChangeRole(a, id, name) {
            var role = $(a).val();
            $.confirm({
                title: 'Change Role?',
                content: `Are you sure User Name ${name}`,
                autoClose: 'cancelAction|8000',
                buttons: {
                    resetPassword: {
                        text: 'Change Role',
                        btnClass: 'btn-green',
                        action: function () {
                            $.ajax({
                                url: '");
#nullable restore
#line 171 "E:\SANJAY\Project Management\ProjectManagement\ProjectManagement\ProjectManagement\Views\UserList\UserList.cshtml"
                                 Write(Url.Action("ChangeRole"));

#line default
#line hidden
#nullable disable
                WriteLiteral(@"',
                                type: 'get',
                                data: { id: id, role: role },
                                success: function (result) {
                                    if (result === true) {
                                        $(a).closest('tr').find('.Roles').html(role);
                                    } else {
                                        $.alert('Please try again!');
                                    }
                                },
                                error: function () {
                                    $.alert('error in calling ajax !!');
                                }
                            });
                        }
                    },
                    cancelAction: function () {
                    }
                }
            });
        }
    </script>
");
            }
            );
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public IUtility _utility { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<IEnumerable<ProjectManagement.Models.UserListViewModel>> Html { get; private set; }
    }
}
#pragma warning restore 1591