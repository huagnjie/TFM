using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using DAL;
using System.Data;
using System.Data.SqlClient;
namespace BLL
{
    public class goodsBLL
    {
        public static DataTable SelectGoods(string NickName)
        {
            return DAL.GoodsDAL.SelectGoods(NickName);
        }

        public static List<goods> SelectAllGoodsByGoodsnumer(int Goodsnumer) {
            return DAL.goodsManager.SelectAllGoodsByGoodsnumer(Goodsnumer);
        }

        public static List<goods> SelectAllGoods()
        {
            return DAL.goodsManager.SelectAllGoods();
        }

        public static List<goods> SelectAllGoods(int Numbers)
        {
            return DAL.goodsManager.SelectAllGoods(Numbers);
        }

        public static bool InsertGoodsByg(goods g)
        {
            return DAL.goodsManager.InsertGoodsByg(g);
        }

        public static bool DeleteGoodsByNickName(string NickName)
        {
            return DAL.goodsManager.DeleteGoodsByNickName(NickName);
        }

        public static object SelectAllGoods(int Categortid, int Goodsnumber)
        {
            return DAL.goodsManager.SelectAllGoods(Categortid,Goodsnumber);
        }

        public static List<goods> SelectAllGoodsByCategorid(int Categortid)
        {
            if (Categortid == 0)
            {
                return DAL.goodsManager.SelectAllGoods();
            }
            else {

                return DAL.goodsManager.SelectAllGoodsByCategorid(Categortid);
            }
        }

        public static List<goods> SelectAllGoodsByTradename(string Tradename)
        {
            return DAL.goodsManager.SelectAllGoodsByTradename(Tradename);            
        }

        public static List<dynamic> SelectAllPage(int PageSize)
        {
            return DAL.goodsManager.SelectAllPage(PageSize);
        }

        public static List<goods> SelectAllGoodsPageSize(int PageSize, string PageIndex)
        {
            return DAL.goodsManager.SelectAllGoodsPageSize(PageSize, PageIndex);
        }
    }
}
