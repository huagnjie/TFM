using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Models;
using System.Data;

namespace PersonalCenter.Product
{
    public partial class PersonalOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                BindRpt();
            }
        }
        void BindRpt()
        {
            string NickName = Session["NickName"].ToString();
            this.Repeater1.DataSource = BLL.goodsBLL.SelectGoods(NickName);
            this.Repeater1.DataBind();
        }
    }
}