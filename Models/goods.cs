using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    /// <summary>
    /// 商品信息表
    /// </summary>
    public class goods
    {
        /// <summary>
        /// 商品编号
        /// </summary>
        public int Goodsnumber { get; set; }
        /// <summary>
        /// 商品名称
        /// </summary>
        public string Tradename { get; set; }
        /// <summary>
        /// 商品类别编号
        /// </summary>
        public goodstype Categortid { get; set; }
        /// <summary>
        /// 商品信息
        /// </summary>
        public string Information { get; set; }
        /// <summary>
        /// 几成新
        /// </summary>
        public int New { get; set; }
        /// <summary>
        /// 数量
        /// </summary>
        public int Number { get; set; }
        /// <summary>
        /// 被浏览次数
        /// </summary>
        public int Browse { get; set; }

        /// <summary>
        /// 原价
        /// </summary>
        public int Cost_price { get; set; }

        /// <summary>
        /// 转让价
        /// </summary>
        public int Conversion { get; set; }

        /// <summary>
        /// 最近编辑
        /// </summary>
        public string Recent_editors { get; set; }
        /// <summary>
        /// 商品图片
        /// </summary>
        public string Pictures { get; set; }
        /// <summary>
        /// 用户昵称
        /// </summary>
        public UserInfo Nickname { get; set; }
        /// <summary>
        /// 是否在卖
        /// </summary>
        public string Sale { get; set; }
        /// <summary>
        /// 使用感受
        /// </summary>
        public string Feel { get; set; }
        /// <summary>
        /// 是否支持换物
        /// </summary>
        public string Barter { get; set; }
    }
}
