using System;
using System.Net;
using System.Net.Mail;

namespace YourApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            try
            {
                // 1. Create the Mail Message
                MailMessage mail = new MailMessage();
                mail.From = new MailAddress(txtFrom.Text);
                mail.To.Add(txtTo.Text);
                mail.Subject = txtSubject.Text;
                mail.Body = txtBody.Text;
                mail.IsBodyHtml = false;

                // 2. Configure SMTP Client
                // Note: If using Gmail, use smtp.gmail.com and port 587
                SmtpClient smtp = new SmtpClient("suresh.smtp.server.com");
                smtp.Port = 587;
                smtp.Credentials = new NetworkCredential("suresh.sma17@gmail.com", "s9885512978");
                smtp.EnableSsl = true;

                // 3. Send the Mail
                smtp.Send(mail);

                lblStatus.Text = "Mail sent successfully!";
                lblStatus.ForeColor = System.Drawing.Color.Green;
            }
            catch (Exception ex)
            {
                lblStatus.Text = "Error: " + ex.Message;
                lblStatus.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}