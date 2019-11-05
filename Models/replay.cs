using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    /// <summary>
    /// 用户回复贴信息表
    /// </summary>
    public class replay
    {
        public int Replay { get; set; }
        public int Articleid { get; set; }
        public string Nickname { get; set; }
        public string Message { get; set; }
        public DateTime Time { get; set; }        
    }
}
