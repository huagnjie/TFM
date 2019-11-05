using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TFMSchoolDeal
{
    public partial class Check : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack) {
                if (Request.QueryString["Price"] == null)
                {

                }
                else {
                    string s = Request.QueryString["Price"].ToString();
                    this.lbl_price.Text = s;
                    string Name = Request.QueryString["Name"].ToString();
                    Response.Write("<script>alert('"+Name+"');</script>");
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
    }
}