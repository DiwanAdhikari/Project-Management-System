using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Models
{
    public class MailSettings
    {
        public string Mail { get; set; }
        public string DisplayName { get; set; }
        public string Password { get; set; }
        public string Host { get; set; }
        public int Port { get; set; }
    }

    public class MailRequest
    {
        public string ToEmail { get; set; } = "alokkumar1158@gmail.com";
        public string Subject { get; set; } = "test";
        public string Body { get; set; } = "<h1>Hello Alok</h1>";
    }
}