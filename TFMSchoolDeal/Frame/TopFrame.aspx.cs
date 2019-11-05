using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PersonalCenter
{
    public partial class TopFrame : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!this.IsPostBack){
                RepeaterDataBind();
            }
        }

        private void RepeaterDataBind()
        {
            this.repeaters.DataSource = BLL.UserInfoBLL.SelectUserInfoByNicName(Session["NickName"].ToString());
            this.repeaters.DataBind();
        }
    }
}