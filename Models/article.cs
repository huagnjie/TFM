using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    /// <summary>
    /// 论坛表
    /// </summary>
    public class article
    {
        /// <summary>
        /// 
        /// </summary>
        public int Articleid { get; set; }
        public int Post_type { get; set; }
        public string Title { get; set; }
        public string Nickname { get; set; }
        public DateTime Time { get; set; }
        public string Coutext { get; set; }
        public int Readnum { get; set; }
        public int Replaynum { get; set; }
    }
}
