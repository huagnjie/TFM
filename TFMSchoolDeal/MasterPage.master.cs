using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["NickName"] == null)
        {
            Response.Write("<style>.yhm{ display:none; } .dlzc{display:block;}</style>");
        }
        else
        {
            Response.Write("<style>.dlzc{ display:none; } .yhm{display:block;} </style>");
        }

    }

    protected void search_text_TextChanged(object sender, EventArgs e)
    {
        TextBox text = (TextBox)sender;
        string strSearchtext = text.Text;
        Response.Redirect("Product.aspx?Tradename="+strSearchtext+"");
    }

    //public static string strSearchtext = string.Empty;

    //void Page_LoadComplete(Object sender, EventArgs e)
    //{
    //   strSearchtext =  (Master.FindControl("search_text") as TextBox).Text;

    //}

    protected void btn_searchs_Click(object sender, EventArgs e)
    {

    }

}
