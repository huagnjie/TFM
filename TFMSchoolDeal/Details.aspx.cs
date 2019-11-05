using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Models;
using System.Data;
using System.Data.SqlClient;

namespace TFMSchoolDeal
{
    public partial class Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack) {
                if (Request.QueryString["Goodsnumber"] == null)
                {

                }
                else {
                    ReaperBind();
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

        private void ReaperBind()
        {
            int Goodsnumber = int.Parse(Request.QueryString["Goodsnumber"].ToString());
            List<goods> list = BLL.goodsBLL.SelectAllGoodsByGoodsnumer(Goodsnumber);
            this.repeaters_Details.DataSource = list;
            this.repeaters_Details.DataBind();
            this.images_left.ImageUrl = "~/Images/" + list[0].Pictures;
            //this.images111.HRef = "~/Images/" + list[0].Pictures;
            //this.images222.Src = "~/Images/" + list[0].Pictures;
            this.image1.ImageUrl = "~/Images/" + list[0].Pictures;
            //this.image2.ImageUrl = "~/Images/" + list[0].Pictures;
            //this.image3.ImageUrl = "~/Images/" + list[0].Pictures;
            //this.image4.ImageUrl = "~/Images/" + list[0].Pictures;
        }
    }
}