#pragma checksum "H:\Code\Project Management\Project_Management\ProjectManagement\Views\ProjectRequirement\Details.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "19d6ff19aca85f504181570bc7fa19a9ab710716"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_ProjectRequirement_Details), @"mvc.1.0.view", @"/Views/ProjectRequirement/Details.cshtml")]
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
#line 1 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\_ViewImports.cshtml"
using ProjectManagement;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\_ViewImports.cshtml"
using ProjectManagement.Models;

#line default
#line hidden
#nullable disable
#nullable restore
#line 3 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\_ViewImports.cshtml"
using ProjectManagement.Utilities;

#line default
#line hidden
#nullable disable
#nullable restore
#line 4 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\_ViewImports.cshtml"
using ProjectManagement.Data;

#line default
#line hidden
#nullable disable
#nullable restore
#line 5 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\_ViewImports.cshtml"
using HtmlHelpers.BeginCollectionItemCore;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"19d6ff19aca85f504181570bc7fa19a9ab710716", @"/Views/ProjectRequirement/Details.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"837a1b77f77c854d6181b951c47df4ffe0f809f0", @"/Views/_ViewImports.cshtml")]
    public class Views_ProjectRequirement_Details : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<ProjectManagement.Models.ProjectRequirementViewModel>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-controller", "Home", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "Index", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("btn btn-primary pull-left mb-30 mr-1"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
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
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
            WriteLiteral("\r\n");
#nullable restore
#line 4 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\ProjectRequirement\Details.cshtml"
  
    ViewData["Title"] = "Project Requirement Details";

#line default
#line hidden
#nullable disable
            WriteLiteral(@"





<div class=""xs-pd-20-10"">
    <div class=""min-height-200px"">
        <div class=""page-header"">
            <div class=""row"">
                <div class=""col-md-6 col-sm-12"">
                    <div class=""title"">
                        <h4>");
#nullable restore
#line 19 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\ProjectRequirement\Details.cshtml"
                       Write(ViewData["Title"]);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h4>\r\n                    </div>\r\n                    <nav aria-label=\"breadcrumb\" role=\"navigation\">\r\n                        <ol class=\"breadcrumb\">\r\n                            <li class=\"breadcrumb-item\">");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "19d6ff19aca85f504181570bc7fa19a9ab7107165904", async() => {
                WriteLiteral("Home");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Controller = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_1.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("</li>\r\n                            <li class=\"breadcrumb-item active\" aria-current=\"page\">");
#nullable restore
#line 24 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\ProjectRequirement\Details.cshtml"
                                                                              Write(ViewData["Title"]);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>

        <div class=""pd-20 bg-white border-radius-4 box-shadow mb-30"">
            <div class=""form-container"">

                <div class=""row"">
                    <div class=""col-md-3"" style=""text-align: right;"">");
#nullable restore
#line 35 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\ProjectRequirement\Details.cshtml"
                                                                Write(Html.DisplayNameFor(m => m.ClientName));

#line default
#line hidden
#nullable disable
            WriteLiteral(" :</div>\r\n                    <div class=\"col-md-3\" style=\"text-align: left;\">");
#nullable restore
#line 36 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\ProjectRequirement\Details.cshtml"
                                                               Write(Model.ClientName);

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n                    <div class=\"col-md-3\" style=\"text-align: right;\">");
#nullable restore
#line 37 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\ProjectRequirement\Details.cshtml"
                                                                Write(Html.DisplayNameFor(m => m.BsStartDate));

#line default
#line hidden
#nullable disable
            WriteLiteral(" :</div>\r\n                    <div class=\"col-md-3\" style=\"text-align: left;\">");
#nullable restore
#line 38 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\ProjectRequirement\Details.cshtml"
                                                               Write(Model.BsStartDate);

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n                    <div class=\"col-md-3\" style=\"text-align: right;\">");
#nullable restore
#line 39 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\ProjectRequirement\Details.cshtml"
                                                                Write(Html.DisplayNameFor(m => m.PalikaName));

#line default
#line hidden
#nullable disable
            WriteLiteral(" :</div>\r\n                    <div class=\"col-md-3\" style=\"text-align: left;\">");
#nullable restore
#line 40 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\ProjectRequirement\Details.cshtml"
                                                               Write(Model.PalikaName);

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n                    <div class=\"col-md-3\" style=\"text-align: right;\">");
#nullable restore
#line 41 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\ProjectRequirement\Details.cshtml"
                                                                Write(Html.DisplayNameFor(m => m.DistrictName));

#line default
#line hidden
#nullable disable
            WriteLiteral(" :</div>\r\n                    <div class=\"col-md-3\" style=\"text-align: left;\">");
#nullable restore
#line 42 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\ProjectRequirement\Details.cshtml"
                                                               Write(Model.DistrictName);

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n                    <div class=\"col-md-3\" style=\"text-align: right;\">");
#nullable restore
#line 43 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\ProjectRequirement\Details.cshtml"
                                                                Write(Html.DisplayNameFor(m => m.StateName));

#line default
#line hidden
#nullable disable
            WriteLiteral(" :</div>\r\n                    <div class=\"col-md-3\" style=\"text-align: left;\">");
#nullable restore
#line 44 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\ProjectRequirement\Details.cshtml"
                                                               Write(Model.StateName);

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n                    <div class=\"col-md-3\" style=\"text-align: right;\">");
#nullable restore
#line 45 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\ProjectRequirement\Details.cshtml"
                                                                Write(Html.DisplayNameFor(m => m.ProjectAssignedTo));

#line default
#line hidden
#nullable disable
            WriteLiteral(" :</div>\r\n                    <div class=\"col-md-3\" style=\"text-align: left;\">");
#nullable restore
#line 46 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\ProjectRequirement\Details.cshtml"
                                                               Write(Model.EmployeeName);

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n                    <div class=\"col-md-3\" style=\"text-align: right;\">");
#nullable restore
#line 47 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\ProjectRequirement\Details.cshtml"
                                                                Write(Html.DisplayNameFor(m => m.ProjectName));

#line default
#line hidden
#nullable disable
            WriteLiteral(" :</div>\r\n                    <div class=\"col-md-3\" style=\"text-align: left;\">");
#nullable restore
#line 48 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\ProjectRequirement\Details.cshtml"
                                                               Write(Model.ProjectName);

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n                    <div class=\"col-md-3\" style=\"text-align: right;\">");
#nullable restore
#line 49 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\ProjectRequirement\Details.cshtml"
                                                                Write(Html.DisplayNameFor(m => m.Status));

#line default
#line hidden
#nullable disable
            WriteLiteral(" :</div>\r\n                    <div class=\"col-md-3\" style=\"text-align: left;\">");
#nullable restore
#line 50 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\ProjectRequirement\Details.cshtml"
                                                               Write(Model.Status);

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n\r\n");
            WriteLiteral(@"                    <div class=""sifaris-input-form"">
                        <div class=""scroll-table-cover"">
                            <table class=""table"">
                                <thead>
                                    <tr>
                                        <th>Requirement</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>
                                <tbody>
");
#nullable restore
#line 63 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\ProjectRequirement\Details.cshtml"
                                     foreach (var item in Model.RequirementList)
                                    {

#line default
#line hidden
#nullable disable
            WriteLiteral("                                        <tr>\r\n                                            <td>");
#nullable restore
#line 66 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\ProjectRequirement\Details.cshtml"
                                           Write(item.Requirements);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                                            <td>");
#nullable restore
#line 67 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\ProjectRequirement\Details.cshtml"
                                           Write(item.Result);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                                        </tr>\r\n");
#nullable restore
#line 69 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\ProjectRequirement\Details.cshtml"

                                    }

#line default
#line hidden
#nullable disable
            WriteLiteral(@"                                </tbody>

                            </table>

                        </div>
                    </div>




                </div>
                </div>


            <div class=""form-group"">
                ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "19d6ff19aca85f504181570bc7fa19a9ab71071616533", async() => {
                WriteLiteral("Back List");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_1.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>\r\n\r\n\r\n\r\n\r\n\r\n");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<ProjectManagement.Models.ProjectRequirementViewModel> Html { get; private set; }
    }
}
#pragma warning restore 1591
