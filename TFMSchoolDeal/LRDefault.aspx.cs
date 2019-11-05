using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TFMSchoolDeal
{
    public partial class LRDefault : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                if (Request.QueryString["ZinCin"] != null)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "loginSucess", "<script>$('#login_div').hide();$('#resgin_div').show();</script>");
                }
                if (Session["NickName"] == null) { }
                else
                {
                    (Master.FindControl("lbl_Name") as Label).Text = Session["NickName"].ToString();
                }
            }
        }

        protected void checkbox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RL_btn_login_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('" + Request.Form["login_txt_userName"].ToString() + "!');</script>");
        }

        protected void RL_btn_resgin_Click(object sender, EventArgs e)
        {
            if (this.resgin_txt_userName.Text.Trim() == string.Empty)
            {
                Response.Write("<script>alert('用户名不能为空哦~');</script>");
            }
            else if (this.resgin_txt_passWord.Text.Trim() == "")
            {
                Response.Write("<script>alert('密码不能为空哦~');</script>");
            }
            else if (this.resgin_txt_qinPassWord.Text.Trim() == "")
            {
                Response.Write("<script>alert('确认密码不能为空哦~');</script>");
            }
            else if (this.resgin_txt_passWord.Text.Trim() != this.resgin_txt_qinPassWord.Text.Trim())
            {
                Response.Write("<script>alert('确认密码不一致哦~');</script>");
            }
            else
            {
                if (BLL.UserInfoBLL.SelectUserInfoByNicNameIsBool(this.resgin_txt_userName.Text.Trim()))
                {
                    Response.Write("<script>alert('用户名已存在');</script>");
                }
                else
                {
                    if (BLL.UserInfoBLL.InsertUserInfoByNicNameAndPassWord(this.resgin_txt_userName.Text.Trim(), this.resgin_txt_qinPassWord.Text.Trim()))
                    {
                        Response.Write("<script>alert('注册成功!');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('注册失败!');</script>");
                    }
                }
            }
        }

        protected void RL_btn_login_Click1(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('"+this.TextBox2.Text+"');</script>");
            string NickName = this.login_txt_userName.Text.Trim();
            string pwd = this.login_txt_passWord.Text.Trim();
            if (NickName == string.Empty)
            {
                Response.Write("<script>alert('用户名不能为空哦~');</script>");
            }
            else if (pwd == string.Empty)
            {
                Response.Write("<script>alert('密码不能为空哦~');</script>");
            }
            else if (this.TextBox1.Text.Trim() != "ture")
            {
                Response.Write("<script>alert('请通过验证码哦~');</script>");
            }
            else
            {
                if (BLL.UserInfoBLL.SelectUserInfoByNicNameAndPassWord(NickName, pwd))
                {
                    if (BLL.UserInfoBLL.SelectUserInfoByManager(NickName))
                    {
                        Response.Redirect("Admin.aspx");
                    }
                    else
                    {
                        Session["NickName"] = NickName;
                        Response.Redirect("Index.aspx");
                    }
                }
                else
                {
                    Response.Write("<script>alert('用户名或密码错误~');</script>");
                }
            }

        }
    }
}