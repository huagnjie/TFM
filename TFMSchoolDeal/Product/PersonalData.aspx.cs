using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Models;
using BLL;

namespace PersonalCenter
{
    public partial class PersonalData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BinshowByshuju();
            }

        }

        private void BinshowByshuju()
        {

        }

        protected void butUpload_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string fileName = FileUpload1.FileName;
                string fileFix = fileName.Substring(fileName.LastIndexOf(".") + 1).ToLower();
                if (fileFix != "jpg" && fileFix != "jpeg" && fileFix != "png" && fileFix != "gif")
                {
                    this.lblMessage.Text = "不支持该类型图片";
                }
                else
                {
                    FileUpload1.SaveAs(Server.MapPath("../") + "//Images//" + fileName);
                    this.ImagePic.ImageUrl = "~/Images/" + fileName;
                    this.lblMessage.Text = "上传成功！";
                }
            }
        }

        protected void Btnxiugai_Click(object sender, EventArgs e)
        {
            Models.Useres user = new Useres();
            if (this.txtNickname.Text.Trim() == string.Empty)
            {
                Response.Write("<script>alert('昵称不能为空！');</script>");
            }
            else if (this.txtAddress.Text.Trim() == string.Empty)
            {
                Response.Write("<script>alert('家庭住址不能为空！');</script>");
            }
            else if (this.txtDepartment.Text.Trim() == string.Empty)
            {
                Response.Write("<script>alert('院系不能为空！');</script>");
            }
            else if (this.txtqq.Text.Trim() == string.Empty)
            {
                Response.Write("<script>alert('QQ不能为空！');</script>");
            }
            else if (this.txtname.Text.Trim() == string.Empty)
            {
                Response.Write("<script>alert('姓名不能为空！');</script>");
            }
            else if (this.txtAutograph.Text.Trim() == string.Empty)
            {
                Response.Write("<script>alert('个性签名不能为空！');</script>");
            }
            else if (this.txtMajor.Text.Trim() == string.Empty)
            {
                Response.Write("<script>alert('专业不能为空！');</script>");
            }
            else if (this.ImagePic.ImageUrl.Substring(ImagePic.ImageUrl.LastIndexOf("/") + 1) == string.Empty)
            {
                Response.Write("<script>alert('头像不能为空！');</script>");
            }
            else
            {
                user.Nickname = this.txtNickname.Text;
                user.Address = this.txtAddress.Text;
                user.Department = this.txtDepartment.Text;
                user.QQ = int.Parse(this.txtqq.Text);
                user.Name = this.txtname.Text;
                user.Autograph = this.txtAutograph.Text;
                user.Major = this.txtMajor.Text;
                user.Image = this.ImagePic.ImageUrl.Substring(ImagePic.ImageUrl.LastIndexOf("/") + 1);
                if (BLL.UseresBLL.Updateuser(user))
                {
                    Response.Write("<script>alert('修改成功！')</script>");
                }
                else
                {
                    Response.Write("<script>alert('修改失败！')</script>");
                }
            }

        }
    }
}