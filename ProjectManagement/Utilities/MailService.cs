using MailKit.Security;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity.UI.Services;
using Microsoft.Extensions.Options;
using MimeKit;
using ProjectManagement.Data;
using ProjectManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ProjectManagement.Utilities
{
    public class MailService : IMailService
    {
        private readonly ApplicationDbContext _context;
        private readonly MailSettings _mailSettings;
        private readonly IUtility _utility;
        private readonly IHttpContextAccessor _httpContextAccessor;

        public MailService(IOptions<MailSettings> mailSettings, ApplicationDbContext context, IUtility utility, IHttpContextAccessor httpContextAccessor)
        {
            _context = context;
            _mailSettings = mailSettings.Value;
            _utility = utility;
            _httpContextAccessor = httpContextAccessor;
        }

        public async Task SendEmailAsync(MailRequest mailRequest)
        {
            var email = new MimeMessage();
           // _mailSettings.DisplayName == "ProjectManagement";
            email.From.Add(new MailboxAddress(_mailSettings.DisplayName, _mailSettings.Mail));
            email.To.Add(MailboxAddress.Parse(mailRequest.ToEmail));
            email.Subject = mailRequest.Subject;
            var builder = new BodyBuilder();
            builder.HtmlBody = mailRequest.Body;
            email.Body = builder.ToMessageBody();
            using (var smtp = new MailKit.Net.Smtp.SmtpClient())
            {
                await smtp.ConnectAsync(_mailSettings.Host, _mailSettings.Port, SecureSocketOptions.StartTls);
                await smtp.AuthenticateAsync(_mailSettings.Mail, _mailSettings.Password);
                await smtp.SendAsync(email);
                smtp.Disconnect(true);
            }
        }

       

        //private async Task SendEmail(MailRequest mailRequest)
        //{
        //    var email = new MimeMessage();
        //    email.From.Add(new MailboxAddress(_mailSettings.DisplayName, _mailSettings.Mail));
        //    email.To.Add(MailboxAddress.Parse(mailRequest.ToEmail));
        //    email.Subject = mailRequest.Subject;
        //    var builder = new BodyBuilder();

        //    #region File Attachment
        //    //if (mailRequest.Attachments != null)
        //    //{
        //    //    byte[] fileBytes;
        //    //    foreach (var file in mailRequest.Attachments)
        //    //    {
        //    //        if (file.Length > 0)
        //    //        {
        //    //            using (var ms = new MemoryStream())
        //    //            {
        //    //                file.CopyTo(ms);
        //    //                fileBytes = ms.ToArray();
        //    //            }
        //    //            builder.Attachments.Add(file.FileName, fileBytes, ContentType.Parse(file.ContentType));
        //    //        }
        //    //    }
        //    //} 
        //    #endregion

        //    builder.HtmlBody = mailRequest.Body;
        //    email.Body = builder.ToMessageBody();
        //    using (var smtp = new MailKit.Net.Smtp.SmtpClient())
        //    {
        //        await smtp.ConnectAsync(_mailSettings.Host, _mailSettings.Port, SecureSocketOptions.StartTls);
        //        await smtp.AuthenticateAsync(_mailSettings.Mail, _mailSettings.Password);
        //        await smtp.SendAsync(email);
        //        smtp.Disconnect(true);
        //    }
        //}
    }



    public class SystemSendMail : IEmailSender
    {
        private readonly IMailService _mail;
        public SystemSendMail(IMailService mail)
        {
            _mail = mail;
        }
        public async Task SendEmailAsync(string email, string subject, string htmlMessage)
        {
            await _mail.SendEmailAsync(new MailRequest() { ToEmail = email, Subject = subject, Body = htmlMessage });
        }
    }
}
