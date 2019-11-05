using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using DAL;
using System.Data;

namespace BLL
{
    public class UseresBLL
    {

        public static bool Updateuser(Useres user)
        {
            return DAL.UseresDAL.Updateuser(user);
        }
        //个人资料显示全部
        public static DataTable SelectuserInfo()
        {
            return DAL.UseresDAL.SelectuserInfo();
        }
        //显示单个个人资料
        public static DataTable SelectuserInfoByName(string NickName)
        {
            string sql = string.Format("select * from UserInfo where NickName='{0}'", NickName);
            return DBHelper.Instance().GetDataTableBySql(sql);
        }
    }
}
