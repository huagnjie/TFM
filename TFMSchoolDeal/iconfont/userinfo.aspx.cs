using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TFMSchoolDeal.iconfont
{
    public partial class userinfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //显示所有用户
                Bindrepeater_yonhu();
               
            }



        }

       
        


        private void Bindrepeater_yonhu()
        {
            this.repeater_yonhu.DataSource = BLL.UserInfoBLL.SelectAllUserInfo();
            this.repeater_yonhu.DataBind();

        }

        protected void link_delete_Command(object sender, CommandEventArgs e)
        {
            if (BLL.UserInfoBLL.DeleteUserInfoByName(e.CommandArgument.ToString()))
            {
                Response.Write("<script>alert('删除成功!');</script>");
                Bindrepeater_yonhu();
            }
            else
            {
                Response.Write("<script>alert('删除失败!');</script>");
            }
        }


    }
}