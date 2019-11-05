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
    public class UseresDAL
    {
        public static bool Updateuser(Useres user)
        {
            string sql = string.Format("update userInfo set Address='{0}',"
           +"Department='{1}',QQ='{2}',Name='{3}',Autograph='{4}',major='{5}',Image='{6}'where Nickname='{7}'",user.Address,user.Department,user.QQ,user.Name,user.Autograph,user.Major,user.Image,user.Nickname);
            return DBHelper.Instance().ExcuteSql(sql);
        }

        public static DataTable SelectuserInfo()
        {
            string sql = string.Format("select * from  UserInfo");
            return DBHelper.Instance().GetDataTableBySql(sql);           
        }

        public static DataTable SelectuserInfoByName(string NickName)
        {
            string sql = string.Format("select * from UserInfo where NickName='{0}'",NickName);
            return DBHelper.Instance().GetDataTableBySql(sql);
        }         
    }
}
