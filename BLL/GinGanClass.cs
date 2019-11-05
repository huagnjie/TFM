using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class GinGanClass
    {
        /// <summary>
        /// 字符串MD5算法
        /// </summary>
        /// <param name="Text">需要变的字符串</param>
        /// <returns>MD5值</returns>
        public static string GetMD5(string Text)
        {
            StringBuilder sb = new StringBuilder();
            using (MD5 md5 = MD5.Create())
            {
                byte[] by = Encoding.Default.GetBytes(Text);
                byte[] Gate = md5.ComputeHash(by);
                for (int i = 0; i < Gate.Length; i++)
                {
                    sb.Append(Gate[i].ToString("x2"));
                }
            }
            return sb.ToString();
        }
    }
}
