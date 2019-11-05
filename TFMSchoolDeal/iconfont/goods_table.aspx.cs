using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Models;
using BLL;
namespace TFMSchoolDeal.iconfont
{
    public partial class goodsinfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack) {
                RepeaterDataBind();
            }
        }

        private void RepeaterDataBind()
        {
            this.repeater_yonhu.DataSource = BLL.goodsBLL.SelectAllGoods();
            this.repeater_yonhu.DataBind();
        }

        protected void link_delete_Command(object sender, CommandEventArgs e)
        {
            if (BLL.goodsBLL.DeleteGoodsByNickName(e.CommandArgument.ToString()))
            {
                Response.Write("<script>alert('删除成功!');</script>");
                Response.Redirect("goods_table.aspx");
            }
            else {
                Response.Write("<script>alert('删除失败!');</script>");
            }
        }
    }
}