#pragma checksum "H:\Code\Project Management\Project_Management\ProjectManagement\Views\Issue\Details.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "63585f8c9fa632fe7169cb16baf196ca3c933e85"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Issue_Details), @"mvc.1.0.view", @"/Views/Issue/Details.cshtml")]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"63585f8c9fa632fe7169cb16baf196ca3c933e85", @"/Views/Issue/Details.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"837a1b77f77c854d6181b951c47df4ffe0f809f0", @"/Views/_ViewImports.cshtml")]
    public class Views_Issue_Details : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<ProjectManagement.Models.IssuesViewModel>
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
#line 4 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\Issue\Details.cshtml"
  
    ViewData["Title"] = "Issue Details";

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n<div class=\"xs-pd-20-10\">\r\n    <div class=\"min-height-200px\">\r\n        <div class=\"page-header\">\r\n            <div class=\"row\">\r\n                <div class=\"col-md-6 col-sm-12\">\r\n                    <div class=\"title\">\r\n                        <h4>");
#nullable restore
#line 14 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\Issue\Details.cshtml"
                       Write(ViewData["Title"]);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h4>\r\n                    </div>\r\n                    <nav aria-label=\"breadcrumb\" role=\"navigation\">\r\n                        <ol class=\"breadcrumb\">\r\n                            <li class=\"breadcrumb-item\">");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "63585f8c9fa632fe7169cb16baf196ca3c933e855790", async() => {
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
#line 19 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\Issue\Details.cshtml"
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
#line 28 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\Issue\Details.cshtml"
                                                                Write(Html.DisplayNameFor(m => m.OrganizationName));

#line default
#line hidden
#nullable disable
            WriteLiteral(" :</div>\r\n                    <div class=\"col-md-3\" style=\"text-align: left;\">");
#nullable restore
#line 29 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\Issue\Details.cshtml"
                                                               Write(Model.OrganizationName);

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n                    <div class=\"col-md-3\" style=\"text-align: right;\">");
#nullable restore
#line 30 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\Issue\Details.cshtml"
                                                                Write(Html.DisplayNameFor(m => m.ProjectName));

#line default
#line hidden
#nullable disable
            WriteLiteral(" :</div>\r\n                    <div class=\"col-md-3\" style=\"text-align: left;\">");
#nullable restore
#line 31 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\Issue\Details.cshtml"
                                                               Write(Model.ProjectName);

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n                    <div class=\"col-md-3\" style=\"text-align: right;\">");
#nullable restore
#line 32 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\Issue\Details.cshtml"
                                                                Write(Html.DisplayNameFor(m => m.Email));

#line default
#line hidden
#nullable disable
            WriteLiteral(" :</div>\r\n                    <div class=\"col-md-3\" style=\"text-align: left;\">");
#nullable restore
#line 33 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\Issue\Details.cshtml"
                                                               Write(Model.Email);

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n                    <div class=\"col-md-3\" style=\"text-align: right;\">");
#nullable restore
#line 34 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\Issue\Details.cshtml"
                                                                Write(Html.DisplayNameFor(m => m.Description));

#line default
#line hidden
#nullable disable
            WriteLiteral(" :</div>\r\n                    <div class=\"col-md-3\" style=\"text-align: left;\">");
#nullable restore
#line 35 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\Issue\Details.cshtml"
                                                               Write(Model.Description);

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n                    <div class=\"col-md-3\" style=\"text-align: right;\">");
#nullable restore
#line 36 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\Issue\Details.cshtml"
                                                                Write(Html.DisplayNameFor(m => m.ContactNumber));

#line default
#line hidden
#nullable disable
            WriteLiteral(" :</div>\r\n                    <div class=\"col-md-3\" style=\"text-align: left;\">");
#nullable restore
#line 37 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\Issue\Details.cshtml"
                                                               Write(Model.ContactNumber);

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n                    <div class=\"col-md-3\" style=\"text-align: right;\">");
#nullable restore
#line 38 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\Issue\Details.cshtml"
                                                                Write(Html.DisplayNameFor(m => m.PalikaName));

#line default
#line hidden
#nullable disable
            WriteLiteral(" :</div>\r\n                    <div class=\"col-md-3\" style=\"text-align: left;\">");
#nullable restore
#line 39 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\Issue\Details.cshtml"
                                                               Write(Model.PalikaName);

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n                    <div class=\"col-md-3\" style=\"text-align: right;\">");
#nullable restore
#line 40 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\Issue\Details.cshtml"
                                                                Write(Html.DisplayNameFor(m => m.DistrictName));

#line default
#line hidden
#nullable disable
            WriteLiteral(" :</div>\r\n                    <div class=\"col-md-3\" style=\"text-align: left;\">");
#nullable restore
#line 41 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\Issue\Details.cshtml"
                                                               Write(Model.DistrictName);

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n                    <div class=\"col-md-3\" style=\"text-align: right;\">");
#nullable restore
#line 42 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\Issue\Details.cshtml"
                                                                Write(Html.DisplayNameFor(m => m.StateName));

#line default
#line hidden
#nullable disable
            WriteLiteral(" :</div>\r\n                    <div class=\"col-md-3\" style=\"text-align: left;\">");
#nullable restore
#line 43 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\Issue\Details.cshtml"
                                                               Write(Model.StateName);

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n                    <div class=\"col-md-3\" style=\"text-align: right;\">");
#nullable restore
#line 44 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\Issue\Details.cshtml"
                                                                Write(Html.DisplayNameFor(m => m.Issue));

#line default
#line hidden
#nullable disable
            WriteLiteral(" :</div>\r\n                    <div class=\"col-md-3\" style=\"text-align: left;\">");
#nullable restore
#line 45 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\Issue\Details.cshtml"
                                                               Write(Model.Issue);

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n                </div>\r\n            </div>\r\n\r\n\r\n            <div class=\"form-group\">\r\n                ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "63585f8c9fa632fe7169cb16baf196ca3c933e8514930", async() => {
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
            WriteLiteral("\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>\r\n\r\n\r\n");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<ProjectManagement.Models.IssuesViewModel> Html { get; private set; }
    }
}
#pragma warning restore 1591
