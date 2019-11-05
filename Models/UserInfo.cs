using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    /// <summary>
    /// 用户表
    /// </summary>
    public class UserInfo
    {
        /// <summary>
        /// 编号
        /// </summary>
        public int Id { get; set; }
        /// <summary>
        /// 学号
        /// </summary>
        public int Stuid { get; set; }
        /// <summary>
        /// 密码
        /// </summary>
        public string PassWord { get; set; }
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
        /// 昵称
        /// </summary>
        public string Nickname { get; set; }
        public string QQ { get; set; }
        /// <summary>
        /// 地址
        /// </summary>
        public string  Address { get; set; }
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
        /// <summary>
        /// 个人首页
        /// </summary>
        public string Homeadd { get; set; }
        /// <summary>
        /// 是否是管理员
        /// </summary>
        public string Manager { get; set; }
        /// <summary>
        /// 注册时间
        /// </summary>
        public DateTime Joindate { get; set; }
        /// <summary>
        /// 头像
        /// </summary>
        public string Image { get; set; }
        /// <summary>
        /// 个性签名
        /// </summary>
        public string Autograph { get; set; }
    }
}
