using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PersonalCenter
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            //Response.Redirect("~/LRDefault.aspx", false);//跳转到登录页面
            Response.Write(" <script> parent.window.location.href= '../LRDefault.aspx' </script> ");
        }
    }
}