using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
  public  class User
    {
        /// <summary>
        /// 学号
        /// </summary>
        public string Stuid { get; set; }
        /// <summary>
        /// 联系电话
        /// </summary>
        public string Phone { get; set; }
        /// <summary>
        /// 身份证号码
        /// </summary>
        public string IDNumber { get; set; }
        /// <summary>
        /// 姓名
        /// </summary>
        public string Name { get; set; }
        /// <summary>
        /// QQ
        /// </summary>
        public string QQ { get; set; }
        /// <summary>
        /// 地址
        /// </summary>
        public string Address { get; set; }
        /// <summary>
        /// 性别
        /// </summary>
        public string Gender { get; set; }
        /// <summary>
        /// 专业
        /// </summary>
        public string Major { get; set; }
        /// <summary>
        /// 院系
        /// </summary>
        public string Department { get; set; }
        ///// <summary>
        ///// 个人首页
        ///// </summary>
        //public string Homeadd { get; set; }
        /// <summary>
        /// 是否是管理员
        /// </summary>
        public string Manager { get; set; }


    }
}
