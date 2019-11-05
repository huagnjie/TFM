using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using System.Data.SqlClient;
using System.Data;
namespace DAL
{
    public class goodstypeDAL
    {
        public static List<goodstype> SelectAllListByNickName(string NickName)
        {
            string sql = "select * from goodstype";
            DataTable dt = DBHelper.Instance().GetDataTableBySql(sql);
            List<goodstype> list = new List<goodstype>();
            try
            {
                foreach (DataRow dr in dt.Rows)
                {
                    goodstype gt = new goodstype();
                    gt.Categortid = int.Parse(dr["Categortid"].ToString());
                    gt.Categort = dr["Categort"].ToString();
                    gt.Typeid = int.Parse(dr["Typeid"].ToString());
                    list.Add(gt);
                }
                return list;
            }
            catch (Exception)
            {
                return null;
            }
        }
    }
}
