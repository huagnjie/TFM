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
    public partial class FinBinShopping : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                if (Session["NickName"] == null) { }
                else
                {
                    DDPListDataBind(Session["NickName"].ToString());
                }
            }
        }

        private void DDPListDataBind(string NickName)
        {
            this.ddpList.DataSource = BLL.goodstypeBLL.SelectAllListByNickName(NickName);
            this.ddpList.DataTextField = "Categort";
            this.ddpList.DataValueField = "Categortid";
            this.ddpList.DataBind();
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            string fileName = this.file.FileName;
            string filefex = fileName.Substring(fileName.LastIndexOf(".") + 1);
            if (filefex != "jpg" && filefex != "png" && filefex != "jpeg" && filefex != "gif")
            {
                //this.lbl_Message.Text = "请上传图片类型文件";
                Response.Write("<script>alert('请上传图片类型文件!');</script>");
            }
            else
            {
                int r = new Random().Next(1000, 100000);
                this.file.SaveAs(MapPath(".") + "//Images//" + r + fileName);
                this.images.ImageUrl = "~/Images/" + r + fileName;
                this.lblGind.Text = r + fileName;
                //this.lbl_Message.Text = "上传成功";
                //Response.Write("<script>alert('sc!');</script>");
            }
        }

        protected void btn_SinCin_Click(object sender, EventArgs e)
        {
            goods g = new goods();
            g.Nickname = new UserInfo();
            g.Categortid = new goodstype();
            g.Nickname.Name = Session["NickName"].ToString();
            g.Tradename = this.txt_title.Text.Trim();
            g.Information = this.txt_Dintitle.Text.Trim();
            g.Feel = this.txt_desc.Text.Trim();
            g.Pictures = this.lblGind.Text;
            g.Categortid.Categortid = int.Parse(this.ddpList.SelectedValue.ToString());
            g.Conversion = int.Parse(this.txt_price.Text.Trim());
            g.New = int.Parse(this.ddpXin.SelectedValue);
            double price=  g.Conversion + (g.Conversion * (10 - g.New) * 0.1);
            g.Cost_price = Convert.ToInt32(price);
            g.Number = 1;
            g.Browse = 0;
            g.Recent_editors = "0";
            g.Sale = "1";
            g.Barter = "0";
            if (BLL.goodsBLL.InsertGoodsByg(g))
            {
                Response.Write("<script>alert('发布成功~');</script>");
            }
            else {
                Response.Write("<script>alert('发布失败~');</script>");
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