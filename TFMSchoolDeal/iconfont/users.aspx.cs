using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TFMSchoolDeal.iconfont
{
    public partial class users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)
            {
                Bindrepeater_yonhuinfo();
            }



        }

        private void Bindrepeater_yonhuinfo()
        {
            this.repeater_yonhuinfo.DataSource = BLL.UsersBLL.SelectAllUser();
            this.repeater_yonhuinfo.DataBind();

        }

        protected void link_delete_Command(object sender, CommandEventArgs e)
        {
            if (BLL.UserInfoBLL.DeleteUserInfoByName(e.CommandArgument.ToString()))
            {
                Response.Write("<script>alert('删除成功!');</script>");
                Bindrepeater_yonhuinfo();
            }
            else {
                Response.Write("<script>alert('删除失败!');</script>");
            }
        }
    }
}