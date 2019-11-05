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
   public  class UsersManager
    {
        //后台管理   个人信息
        public static List<User> SelectAllUser()
        {
            //sql 语句
            string sql = string.Format("select * from UserInfo");
            DataTable dt = DBHelper.Instance().GetDataTableBySql(sql);
            List<User> users = new List<User>();
            if (dt != null && dt.Rows.Count >= 1)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    User user = new User();
                    
                    if (dr["Stuid"].ToString() == string.Empty)
                    {
                        user.Stuid = "0";
                    }
                    else {
                        user.Stuid = dr["Stuid"].ToString();
                    }

                    user.Name = dr["Nickname"].ToString();
                    if (dr["IDNumber"].ToString() == string.Empty)
                    {
                        user.IDNumber = "无";
                    }
                    else {
                        user.IDNumber = dr["IDNumber"].ToString();
                    }
                    if (dr["Phone"].ToString() == string.Empty)
                    {
                        user.Phone = "无";
                    }
                    else {
                        user.Phone = dr["Phone"].ToString();
                    }
                    if (dr["QQ"].ToString() == string.Empty)
                    {
                        user.QQ = "无";
                    }
                    else
                    {
                        user.QQ = dr["QQ"].ToString();
                    }
                    user.Gender = dr["Gender"].ToString();
                    if (dr["Major"].ToString() == string.Empty)
                    {
                        user.Major = "无";
                    }
                    else
                    {
                        user.Major = dr["Major"].ToString();
                    }
                    if (dr["Department"].ToString() == string.Empty)
                    {
                        user.Department = "无";
                    }
                    else
                    {
                        user.Department = dr["Department"].ToString();
                    }
                    if (dr["Address"].ToString() == string.Empty)
                    {
                        user.Address = "无";
                    }
                    else
                    {
                        user.Address = dr["Address"].ToString();
                    }
                    if (dr["Manager"].ToString() == string.Empty)
                    {
                        user.Manager = "无";
                    }
                    else
                    {
                        user.Manager = "是";
                    }
                    users.Add(user);


                }
                return users;
            }

            return null;

        }



    }
}
