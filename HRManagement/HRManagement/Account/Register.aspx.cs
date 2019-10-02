using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using HRManagement.Models;


using System.Net.Mail;
using System.Net;

namespace HRManagement.Account
{
    public partial class Register : Page
    {
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            //var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser() { UserName = txtUserName.Text, Email = Email.Text };
            IdentityResult result = manager.Create(user, Password.Text);

            if (result.Succeeded)
            {
                // For more information on how to enable account confirmation and password reset please visit https://go.microsoft.com/fwlink/?LinkID=320771
                string code = manager.GenerateEmailConfirmationToken(user.Id);
                string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
                //manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");




                MailMessage m = new MailMessage(new MailAddress("shsohel.api@gmail.com", "IDB-BISEW 39 Registration Confirmation "), new MailAddress(user.Email));

                m.Subject = "Email Confirmation";
                m.Body = "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.";
         

                SmtpClient smtp = new SmtpClient("smtp.gmail.com");
                smtp.Credentials = new NetworkCredential("shsohel.api@gmail.com", "shs275653#@2");
                smtp.EnableSsl = true;
                smtp.Send(m);

                Response.Redirect("/Account/EmailConfirm");

                //signInManager.SignIn( user, isPersistent: false, rememberBrowser: false);
                //IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            }
            else
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }
        }
    }
}