using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TFMSchoolDeal
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RepeatersDataBind();
            if (!this.IsPostBack) {
                if (Request.QueryString["Indexppp"] == null) { } else {
                    Response.Write("<style>.Indexppp{background-color:#27e919}</style>");
                }
            }
        }
        /// <summary>
        /// 控制母版页的控件
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void Page_LoadComplete(Object sender, EventArgs e)
        {
            if (Session["NickName"] == null) { }
            else
            {
                (Master.FindControl("lbl_Name") as Label).Text = Session["NickName"].ToString();
            }
        }

        private void RepeatersDataBind()
        {
            this.Repeaters.DataSource = BLL.goodsBLL.SelectAllGoods(8);
            this.Repeaters.DataBind();
            this.ResPinDe.DataSource = BLL.goodsBLL.SelectAllGoods(3,8);
            this.ResPinDe.DataBind();
            this.Rep_ConPamTer.DataSource = BLL.goodsBLL.SelectAllGoods(4, 8);
            this.Rep_ConPamTer.DataBind();
            this.Rep_ReYinPan.DataSource = BLL.goodsBLL.SelectAllGoods(8, 8);
            this.Rep_ReYinPan.DataBind();
        }

        protected void text_D_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("Details.aspx?Goodsnumber=" + e.CommandArgument.ToString());
        }
    }
}