using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using System.Data;
using System.Data.SqlClient;
namespace DAL
{
    /// <summary>
    /// 商品信息管理类
    /// </summary>
    public class goodsManager
    {
        public static List<goods> SelectAllGoodsByGoodsnumer(int Goodsnumer)
        {
            List<goods> list = new List<goods>();
            string sql = string.Format("select * from goods,goodstype,UserInfo where goods.Categortid = goodstype.Categortid and goods.Nickname=UserInfo.Nickname and Goodsnumer='{0}'", Goodsnumer);
            DataTable dt = DBHelper.Instance().GetDataTableBySql(sql);
            try
            {
                foreach (DataRow dr in dt.Rows)
                {
                    goods good = new goods();
                    good.Nickname = new UserInfo();
                    good.Categortid = new goodstype();
                    good.Goodsnumber = int.Parse(dr["Goodsnumer"].ToString());
                    good.Tradename = dr["Tradename"].ToString();
                    good.Cost_price = int.Parse(dr["Cost_price"].ToString());
                    good.Conversion = int.Parse(dr["Conversion"].ToString());
                    good.Categortid.Categort = dr["Categort"].ToString();
                    good.New = int.Parse(dr["New"].ToString());
                    if (dr["Phone"].ToString() == string.Empty)
                    {
                        good.Nickname.Phone = "该小伙伴没有留下手机号呢~";
                    }
                    else
                    {
                        good.Nickname.Phone = dr["Phone"].ToString();
                    }
                    if (dr[25].ToString() == string.Empty)
                    {
                        good.Nickname.QQ = "该小伙伴没有留下QQ号呢~";
                    }
                    else
                    {
                        good.Nickname.QQ = dr[25].ToString();
                    }
                    if (dr["Department"].ToString() == string.Empty)
                    {
                        good.Nickname.Department = "永州职业技术学院";
                    }
                    else
                    {
                        good.Nickname.Department = dr["Department"].ToString();
                    }
                    good.Information = dr[3].ToString();
                    good.Feel = dr["Feel"].ToString();
                    good.Pictures = dr["Pictures"].ToString();
                    list.Add(good);
                }
                return list;
            }
            catch (Exception)
            {
                return null;
            }
        }

        public static List<goods> SelectAllGoods()
        {
            List<goods> list = new List<goods>();
            string sql = string.Format("select * from goods");
            DataTable dt = DBHelper.Instance().GetDataTableBySql(sql);
            try
            {
                foreach (DataRow dr in dt.Rows)
                {
                    goods good = new goods();
                    good.Nickname = new UserInfo();
                    good.Categortid = new goodstype();
                    good.Goodsnumber = int.Parse(dr["Goodsnumer"].ToString());
                    good.Tradename = dr["Tradename"].ToString();
                    good.Cost_price = int.Parse(dr["Cost_price"].ToString());
                    good.Conversion = int.Parse(dr["Conversion"].ToString());
                    good.Number = int.Parse(dr["Number"].ToString());
                    good.New = int.Parse(dr["New"].ToString());
                    good.Nickname.Nickname = dr["Nickname"].ToString();
                    good.Information = dr[3].ToString();
                    good.Feel = dr["Feel"].ToString();
                    good.Pictures = dr["Pictures"].ToString();
                    list.Add(good);
                }
                return list;
            }
            catch (Exception)
            {
                return null;
            }
        }

        public static List<goods> SelectAllGoods(int Goodsnumber)
        {
            List<goods> list = new List<goods>();
            string sql = string.Format("select top {0} * from goods order by Goodsnumer desc", Goodsnumber);
            DataTable dt = DBHelper.Instance().GetDataTableBySql(sql);
            try
            {
                foreach (DataRow dr in dt.Rows)
                {
                    goods good = new goods();
                    good.Nickname = new UserInfo();
                    good.Categortid = new goodstype();
                    good.Goodsnumber = int.Parse(dr["Goodsnumer"].ToString());
                    good.Tradename = dr["Tradename"].ToString();
                    good.Cost_price = int.Parse(dr["Cost_price"].ToString());
                    good.Conversion = int.Parse(dr["Conversion"].ToString());
                    good.Number = int.Parse(dr["Number"].ToString());
                    good.New = int.Parse(dr["New"].ToString());
                    good.Nickname.Nickname = dr["Nickname"].ToString();
                    good.Information = dr[3].ToString();
                    good.Feel = dr["Feel"].ToString();
                    good.Pictures = dr["Pictures"].ToString();
                    list.Add(good);
                }
                return list;
            }
            catch (Exception)
            {
                return null;
            }
        }

        public static bool InsertGoodsByg(goods g)
        {
            string sql = string.Format("insert goods values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}','{13}')", g.Tradename, g.Categortid.Categortid, g.Information, g.New, g.Number, g.Cost_price, g.Conversion, g.Browse, g.Recent_editors, g.Pictures, g.Nickname.Name, g.Sale, g.Feel, g.Barter);
            return DBHelper.Instance().ExcuteSql(sql);
        }

        public static bool DeleteGoodsByNickName(string NickName)
        {
            string sql = string.Format("delete goods where Goodsnumber='{0}'", NickName);
            return DBHelper.Instance().ExcuteSql(sql);
        }

        public static object SelectAllGoods(int Categortid, int Goodsnumber)
        {
            List<goods> list = new List<goods>();
            string sql = string.Format(" select top {0} * from goods where Categortid={1} order by Goodsnumer desc", Goodsnumber, Categortid);
            DataTable dt = DBHelper.Instance().GetDataTableBySql(sql);
            try
            {
                foreach (DataRow dr in dt.Rows)
                {
                    goods good = new goods();
                    good.Nickname = new UserInfo();
                    good.Categortid = new goodstype();
                    good.Goodsnumber = int.Parse(dr["Goodsnumer"].ToString());
                    good.Tradename = dr["Tradename"].ToString();
                    good.Cost_price = int.Parse(dr["Cost_price"].ToString());
                    good.Conversion = int.Parse(dr["Conversion"].ToString());
                    good.Number = int.Parse(dr["Number"].ToString());
                    good.New = int.Parse(dr["New"].ToString());
                    good.Nickname.Nickname = dr["Nickname"].ToString();
                    good.Information = dr[3].ToString();
                    good.Feel = dr["Feel"].ToString();
                    good.Pictures = dr["Pictures"].ToString();
                    list.Add(good);
                }
                return list;
            }
            catch (Exception)
            {
                return null;
            }
        }

        public static List<goods> SelectAllGoodsByCategorid(int Categortid)
        {
            List<goods> list = new List<goods>();
            string sql = string.Format("select * from goods where Categortid = {0}", Categortid);
            DataTable dt = DBHelper.Instance().GetDataTableBySql(sql);
            try
            {
                foreach (DataRow dr in dt.Rows)
                {
                    goods good = new goods();
                    good.Nickname = new UserInfo();
                    good.Categortid = new goodstype();
                    good.Goodsnumber = int.Parse(dr["Goodsnumer"].ToString());
                    good.Tradename = dr["Tradename"].ToString();
                    good.Cost_price = int.Parse(dr["Cost_price"].ToString());
                    good.Conversion = int.Parse(dr["Conversion"].ToString());
                    good.Number = int.Parse(dr["Number"].ToString());
                    good.New = int.Parse(dr["New"].ToString());
                    good.Nickname.Nickname = dr["Nickname"].ToString();
                    good.Information = dr[3].ToString();
                    good.Feel = dr["Feel"].ToString();
                    good.Pictures = dr["Pictures"].ToString();
                    list.Add(good);
                }
                return list;
            }
            catch (Exception)
            {
                return null;
            }
        }

        public static List<goods> SelectAllGoodsByTradename(string Tradename)
        {
            List<goods> list = new List<goods>();
            string sql = string.Format("select * from goods where Tradename like '%{0}%'",Tradename);
            DataTable dt = DBHelper.Instance().GetDataTableBySql(sql);
            try
            {
                foreach (DataRow dr in dt.Rows)
                {
                    goods good = new goods();
                    good.Nickname = new UserInfo();
                    good.Categortid = new goodstype();
                    good.Goodsnumber = int.Parse(dr["Goodsnumer"].ToString());
                    good.Tradename = dr["Tradename"].ToString();
                    good.Cost_price = int.Parse(dr["Cost_price"].ToString());
                    good.Conversion = int.Parse(dr["Conversion"].ToString());
                    good.Number = int.Parse(dr["Number"].ToString());
                    good.New = int.Parse(dr["New"].ToString());
                    good.Nickname.Nickname = dr["Nickname"].ToString();
                    good.Information = dr[3].ToString();
                    good.Feel = dr["Feel"].ToString();
                    good.Pictures = dr["Pictures"].ToString();
                    list.Add(good);
                }
                return list;
            }
            catch (Exception)
            {
                return null;
            }
        }

        public static List<dynamic> SelectAllPage(int PageSize)
        {
            string sql = string.Format("select CEILING(count(*)*1.0 / {0}) from goods", PageSize);
            List<dynamic> list = new List<dynamic>();
            DataTable dt = DBHelper.Instance().GetDataTableBySql(sql);
            try
            {
                int Index = Convert.ToInt32(dt.Rows[0][0]);
                for (int i = 1; i <= Index; i++)
                {
                    int repeaterASP = i;
                    list.Add(new { pageId = i.ToString()});
                }
                return list;
            }
            catch (Exception)
            {
                return null;
            }
        }

        public static List<goods> SelectAllGoodsPageSize(int PageSize, string PageIndex)
        {
            List<goods> list = new List<goods>();
            SqlParameter[] paras = new SqlParameter[] { 
                 new SqlParameter("@PageSize",PageSize),
                 new SqlParameter("@PapeIndex",PageIndex)
            };
            DataTable dt = DBHelper.Instance().GetDataTableByProcedure("asp_GetAspx_NewsByPage", paras);
            try
            {
                foreach (DataRow dr in dt.Rows)
                {
                    goods good = new goods();
                    good.Nickname = new UserInfo();
                    good.Categortid = new goodstype();
                    good.Goodsnumber = int.Parse(dr["Goodsnumer"].ToString());
                    good.Tradename = dr["Tradename"].ToString();
                    good.Cost_price = int.Parse(dr["Cost_price"].ToString());
                    good.Conversion = int.Parse(dr["Conversion"].ToString());
                    good.Number = int.Parse(dr["Number"].ToString());
                    good.New = int.Parse(dr["New"].ToString());
                    good.Nickname.Nickname = dr["Nickname"].ToString();
                    good.Information = dr[3].ToString();
                    good.Feel = dr["Feel"].ToString();
                    good.Pictures = dr["Pictures"].ToString();
                    list.Add(good);
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
