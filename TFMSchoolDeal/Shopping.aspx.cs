using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TFMSchoolDeal
{
    public partial class Shopping : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!this.IsPostBack) {
            //    if (Session["Name"] == null) {
            //        ClientScript.RegisterStartupScript(this.GetType(),"loginSucess","<script>alert('请先注册哦~');</script>");
            //        Response.Redirect("LRDefault.aspx?ZinCin=1");
            //    }
            //}
            //LRDefault.aspx?ZinCin=1
        }

        protected void btn_OK_Click(object sender, EventArgs e)
        {
            //Response.Redirect("Check.aspx?Price="+this.lbl_price.Text);
            Response.Write("<script>alert('666');</script>");
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
    }
}