#pragma checksum "H:\Code\Project Management\Project_Management\ProjectManagement\Views\Links\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "3ba962c68ed90446d415cd3d6a061cf9fcd988e3"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Links_Index), @"mvc.1.0.view", @"/Views/Links/Index.cshtml")]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"3ba962c68ed90446d415cd3d6a061cf9fcd988e3", @"/Views/Links/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"837a1b77f77c854d6181b951c47df4ffe0f809f0", @"/Views/_ViewImports.cshtml")]
    public class Views_Links_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<IEnumerable<ProjectManagement.Models.LinksViewModel>>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/lib/jquery/dist/jquery.js"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
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
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 3 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\Links\Index.cshtml"
   
    var i = 1;

#line default
#line hidden
#nullable disable
            WriteLiteral(@"
<div class=""xs-pd-20-10"">
    <div class=""min-height-200px"">
        <div class=""page-header"">
            <div class=""row"">
                <div class=""col-md-6 col-sm-12"">
                    <div class=""title"" style=""margin-top:-35px"">
                        <h1>High Priority List</h1>
                    </div>

                </div>
            </div>
        </div>

");
            WriteLiteral("        <br />\r\n");
            WriteLiteral(@"
        <div class=""pb-20"" id=""search"">
            <table class=""data-table table stripe hover nowrap "" id=""dataTable"">
                <thead>
                    <tr>
                        <th>S.N.</th>
                        <th>
                            ");
#nullable restore
#line 34 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\Links\Index.cshtml"
                       Write(Html.DisplayNameFor(model => model.Name));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                        </th>\r\n");
            WriteLiteral("                        <th>\r\n                            ");
#nullable restore
#line 47 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\Links\Index.cshtml"
                       Write(Html.DisplayNameFor(model => model.PhoneNumber));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                        </th>\r\n                        <th>\r\n                            ");
#nullable restore
#line 50 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\Links\Index.cshtml"
                       Write(Html.DisplayNameFor(model => model.WebSite));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                        </th>\r\n");
            WriteLiteral("                    </tr>\r\n                </thead>\r\n                <tbody>\r\n");
#nullable restore
#line 59 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\Links\Index.cshtml"
                     foreach (var item in Model)
                    {

#line default
#line hidden
#nullable disable
            WriteLiteral("                        <tr>\r\n                            <td>\r\n                                ");
#nullable restore
#line 63 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\Links\Index.cshtml"
                           Write(i);

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                            </td>\r\n                            <td>\r\n                                ");
#nullable restore
#line 66 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\Links\Index.cshtml"
                           Write(Html.DisplayFor(modelItem => item.Name));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                            </td>\r\n");
            WriteLiteral("                            <td>\r\n                                ");
#nullable restore
#line 79 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\Links\Index.cshtml"
                           Write(Html.DisplayFor(modelItem => item.PhoneNumber));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                            </td>\r\n                            <td>\r\n");
#nullable restore
#line 82 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\Links\Index.cshtml"
                                   var site = item.WebSite;

#line default
#line hidden
#nullable disable
            WriteLiteral("                                <a");
            BeginWriteAttribute("href", " href=\"", 3351, "\"", 3371, 2);
            WriteAttributeValue("", 3358, "https://", 3358, 8, true);
#nullable restore
#line 83 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\Links\Index.cshtml"
WriteAttributeValue("", 3366, site, 3366, 5, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(" target=\"_blank\">");
#nullable restore
#line 83 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\Links\Index.cshtml"
                                                                   Write(Html.DisplayFor(modelItem => item.WebSite));

#line default
#line hidden
#nullable disable
            WriteLiteral("</a>\r\n                            </td>\r\n");
            WriteLiteral("\r\n");
            WriteLiteral("\r\n                        </tr>\r\n");
#nullable restore
#line 97 "H:\Code\Project Management\Project_Management\ProjectManagement\Views\Links\Index.cshtml"
                        i++;
                    }

#line default
#line hidden
#nullable disable
            WriteLiteral("                </tbody>\r\n            </table>\r\n        </div>\r\n    </div>\r\n\r\n</div>\r\n");
            DefineSection("Scripts", async() => {
                WriteLiteral("\r\n    ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("script", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "3ba962c68ed90446d415cd3d6a061cf9fcd988e39499", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_0);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral("\r\n    <script>\r\n        $(document).ready(function () {\r\n            $(\'#dataTable\').DataTable();\r\n        });\r\n    </script>\r\n    ");
            }
            );
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public IUtility _Utility { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<IEnumerable<ProjectManagement.Models.LinksViewModel>> Html { get; private set; }
    }
}
#pragma warning restore 1591
