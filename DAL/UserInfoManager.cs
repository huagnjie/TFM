using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Models;

namespace DAL
{
    public class UserInfoManager
    {
        //后台管理   个人信息
        public static List<UserInfo> SelectAllUserInfo()
        {
            //sql 语句
            string sql = string.Format("select * from UserInfo");
            DataTable dt = DBHelper.Instance().GetDataTableBySql(sql);
            List<UserInfo> userinfos = new List<UserInfo>();
            if (dt != null && dt.Rows.Count >= 1)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    UserInfo userinfo = new UserInfo();
                    // userinfo.Id =int.Parse( dr["Id"].ToString());
                    userinfo.Nickname = dr["Nickname"].ToString();
                    userinfo.PassWord = dr["PassWord"].ToString();
                    if (dr["Stuid"].ToString() == string.Empty)
                    {
                        userinfo.Stuid = 0;
                    }
                    else
                    {
                        userinfo.Stuid = int.Parse(dr["Stuid"].ToString());
                    }
                    //if(dr["J"
                    userinfo.Joindate = DateTime.Parse(dr["Joindate"].ToString());
                    userinfo.Image = dr["Image"].ToString();
                    userinfo.Autograph = dr["Autograph"].ToString();
                    userinfos.Add(userinfo);


                }
                return userinfos;
            }
            return null;

        }

        public static bool InsertUserInfoByNicNameAndPassWord(string NicName, string PassWord)
        {
            string sql = string.Format("insert into userinfo(Nickname,PassWord) values ('{0}','{1}')", NicName, PassWord);
            return DBHelper.Instance().ExcuteSql(sql);
        }

        public static UserInfo SelectUserInfoByNicNameIsBool(string NicName)
        {
            string sql = "select * from UserInfo where Nickname='" + NicName + "'";
            DataTable dt = DBHelper.Instance().GetDataTableBySql(sql);
            try
            {
                UserInfo user = new UserInfo();
                user.Nickname = dt.Rows[0]["NickName"].ToString();
                return user;
            }
            catch (Exception)
            {
                return null;
            }
        }

        public static UserInfo SelectUserInfoByNicNameAndPassWord(string NicName, string PassWord)
        {
            string sql = "select * from UserInfo where Nickname='" + NicName + "' and PassWord='" + PassWord + "'";
            DataTable dt = DBHelper.Instance().GetDataTableBySql(sql);
            try
            {
                UserInfo user = new UserInfo();
                user.Nickname = dt.Rows[0]["NickName"].ToString();
                user.PassWord = dt.Rows[0]["PassWord"].ToString();
                return user;
            }
            catch (Exception)
            {
                return null;
            }
        }

        public static bool DeleteUserInfoByName(string Name)
        {
            string sql = "delete UserInfo where NickName='" + Name + "'";
            return DBHelper.Instance().ExcuteSql(sql);
        }

        public static bool SelectUserInfoByManager(string NickName)
        {
            string sql = string.Format("select * from UserInfo where NickName='{0}'", NickName);
            DataTable dt = DBHelper.Instance().GetDataTableBySql(sql);
            try
            {
                if (dt.Rows[0]["Manager"].ToString() == null) { return false; }
                else
                {
                    if (dt.Rows[0]["Manager"].ToString() == "True")
                    {
                        return true;
                    }
                    else {
                        return false;
                    }
                }
            }
            catch (Exception)
            {
                return false;
            }
        }

        public static DataTable SelectUserInfoByNickName(string NickName)
        {
            string sql = "select * from userinfo where NickName='"+NickName+"'";
            return DAL.DBHelper.Instance().GetDataTableBySql(sql);
        }
    }
}
