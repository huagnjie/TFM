using Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class UserInfoBLL
    {
        //后台管理   个人信息
        public static List<UserInfo> SelectAllUserInfo()
        {
            return DAL.UserInfoManager.SelectAllUserInfo();
        }

        public static bool InsertUserInfoByNicNameAndPassWord(string NicName, string PassWord) {
            return DAL.UserInfoManager.InsertUserInfoByNicNameAndPassWord(NicName, GinGanClass.GetMD5(PassWord));
        }

        public static bool SelectUserInfoByNicNameIsBool(string NicName)
        {
            return DAL.UserInfoManager.SelectUserInfoByNicNameIsBool(NicName) != null;
        }

        public static bool SelectUserInfoByNicNameAndPassWord(string NicName, string PassWord)
        {
            return DAL.UserInfoManager.SelectUserInfoByNicNameAndPassWord(NicName, GinGanClass.GetMD5(PassWord)) != null;
        }

        public static bool DeleteUserInfoByName(string Name)
        {
            return DAL.UserInfoManager.DeleteUserInfoByName(Name);
        }

        public static bool SelectUserInfoByManager(string NickName)
        {
            return DAL.UserInfoManager.SelectUserInfoByManager(NickName);
        }

        public static DataTable SelectUserInfoByNicName(string NickName)
        {
            return DAL.UserInfoManager.SelectUserInfoByNickName(NickName);
        }
    }
}
