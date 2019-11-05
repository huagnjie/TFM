using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using System.Data;


namespace DAL
{
   public class GoodsDAL
    {
       public static DataTable SelectGoods(string NickName)
       {
           string sql = string.Format("select * from goods g,goodstype gt,UserInfo ui where g.Categortid=gt.Categortid and g.Nickname=ui.Nickname and g.Nickname='"+NickName+"' ");
           return DBHelper.Instance().GetDataTableBySql(sql);
       }
    }
}
