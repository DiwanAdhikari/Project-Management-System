using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Models
{
    public class DashBoardViewModel
    {
        public DashBoardViewModel()
        {
            noticeList = new List<NoticeBoardViewModel>();
        }
        public int ProjectCount { get; set; }
        public int ImplementedProjectCount { get; set; }
        public int EmployeeCount { get; set; }
        public int MantralayeCount { get; set; }

        public List<NoticeBoardViewModel> noticeList { get; set; }
    }

    public class NoticeBoardViewModel
    {
        public string ProjectName { get; set; }
        public int Count { get; set; }
        public string Url { get; set; }
    }
}