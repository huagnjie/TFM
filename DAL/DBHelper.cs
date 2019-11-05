using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;
namespace DAL
{
    public class DBHelper
    {
        //连接字符串  
        private static string DBConnectString = System.Configuration.ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
        private static SqlConnection conn;
        private static SqlDataAdapter da;
        private static SqlCommand cmd;
        private static DBHelper dBHelper;

        public DBHelper()
        {
            conn = new SqlConnection(DBConnectString);
        }
        /// <summary>
        /// 实例化DBHelper对象
        /// </summary>
        /// <returns></returns>
        public static DBHelper Instance()
        {
            if (dBHelper == null)
            {
                dBHelper = new DBHelper();
            }
            return dBHelper;
        }
        /// <summary>
        /// 打开数据库连接
        /// </summary>
        void DBOpen()
        {
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
        }
        /// <summary>
        /// 关闭数据库连接
        /// </summary>
        void DBClose()
        {
            if (conn.State == ConnectionState.Open) {
                conn.Close();
            }
        }
        /// <summary>
        /// 执行SQL语句获取数据集
        /// </summary>
        /// <param name="sql">sql语句</param>
        /// <returns>DataTable数据集</returns>
        public DataTable GetDataTableBySql(string sql)
        {
            DBOpen();
            DataTable dt = new DataTable();
            da = new SqlDataAdapter(sql, conn);
            try
            {
                da.Fill(dt);
                return dt;
            }
            catch
            {
                return null;
            }
            finally
            {
                DBClose();
            }
        }
        /// <summary>
        /// 执行SQL语句
        /// </summary>
        /// <param name="sql">SQL语句</param>
        /// <returns>是否执行成功</returns>
        public bool ExcuteSql(string sql)
        {
            DBOpen();
            cmd = new SqlCommand(sql, conn);
            try
            {
                cmd.ExecuteNonQuery();
                return true;
            }
            catch
            {
                return false;
            }
            finally
            {
                DBClose();
            }
        }
        /// <summary>
        /// 执行存储过程
        /// </summary>
        /// <param name="proName">存储过程名称</param>
        /// <param name="paras">存储过程参数</param>
        /// <returns>是否执行成功</returns>
        public bool ExcuteProcedure(string proName, SqlParameter[] paras)
        {
            DBOpen();
            cmd = new SqlCommand(proName, conn);
            cmd.CommandType = CommandType.StoredProcedure;

            for (int i = 0; i < paras.Length; i++)
            {
                cmd.Parameters.Add(paras[i]);
            }
            try
            {
                cmd.ExecuteNonQuery();
                return true;
            }
            catch
            {
                return false;
            }
            finally
            {
                DBClose();
            }

        }
        /// <summary>
        /// 执行存储过程获得数据集
        /// </summary>
        /// <param name="proName">存储过程名</param>
        /// <param name="paras">存储过程参数</param>
        /// <returns>DataTable数据集</returns>
        public DataTable GetDataTableByProcedure(string proName, SqlParameter[] paras)
        {
            DBOpen();
            cmd = new SqlCommand(proName, conn);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            for (int i = 0; i < paras.Length; i++)
            {
                cmd.Parameters.Add(paras[i]);
            }
            try
            {
                da.Fill(dt);
                return dt;
            }
            catch
            {
                return null;
            }
            finally
            {
                DBClose();
            }

        }

    }
}
