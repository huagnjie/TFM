using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Models;
namespace TFMSchoolDeal
{
    public partial class Product : System.Web.UI.Page
    {
        public static string PageIndex = string.Empty;
        public static int PageIndexMax = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                PageIndex = "1";
                if (Request.QueryString["Shopping"] == null)
                {
                    if (Request.QueryString["Tradename"] == null) { }
                    else
                    {
                        Response.Write("<style>.XinZinShopping{background-color:#27e919}</style>");
                        RepeatersDataBindByTradename();
                        RespeaterDataBindByrepeaterASP();

                    }
                }
                else
                {
                    Response.Write("<style>.XinZinShopping{background-color:#27e919}</style>");
                    RepeatersDataBind();
                    RespeaterDataBindByrepeaterASP();
                }
            }
        }

        private void RespeaterDataBindByrepeaterASP()
        {
            List<dynamic> list = BLL.goodsBLL.SelectAllPage(16);
            PageIndexMax = list.Count;
            this.repeaterASP.DataSource = list;
            this.repeaterASP.DataBind();
            if (Request.QueryString["Tradename"] == null && int.Parse(Request.QueryString["Shopping"]) == 0)
            {
                PageLink();
            }

        }

        private void RepeatersDataBindByTradename()
        {
            string Tradename = Request.QueryString["Tradename"];
            this.Repeaters.DataSource = BLL.goodsBLL.SelectAllGoodsByTradename(Tradename);
            this.Repeaters.DataBind();
        }

        private void RepeatersDataBind()
        {
            int Categortid = int.Parse(Request.QueryString["Shopping"]);
            this.Repeaters.DataSource = BLL.goodsBLL.SelectAllGoodsByCategorid(Categortid);
            this.Repeaters.DataBind();
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

        protected void text_D_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("Details.aspx?Goodsnumber=" + e.CommandArgument.ToString());
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            PageIndex = ((LinkButton)sender).CommandArgument.ToString();
            PageLink();
        }

        protected void LinkUp_Click(object sender, EventArgs e)
        {
            int Link = Convert.ToInt32(PageIndex);
            if (Link == 1)
            {
                Response.Write("<script>alert('这已经是第一页了呢o(￣︶￣)n');</script>");
            }
            else
            {
                PageIndex = (Link - 1).ToString();
                PageLink();
            }
        }

        protected void LinkDown_Click(object sender, EventArgs e)
        {
            int Link = Convert.ToInt32(PageIndex);
            if (Link == PageIndexMax)
            {
                Response.Write("<script>alert('这已经是最后一页了呢o(￣︶￣)n');</script>");
            }
            else
            {
                PageIndex = (Link + 1).ToString();
                PageLink();
            }
        }
        public void PageLink()
        {
            this.Repeaters.DataSource = BLL.goodsBLL.SelectAllGoodsPageSize(16, PageIndex);
            this.Repeaters.DataBind();
        }
    }
}