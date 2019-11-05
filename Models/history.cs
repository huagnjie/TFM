using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    /// <summary>
    /// 历史状态表
    /// </summary>
    public class history
    {
        public int Historical_state { get; set; }
        public int Goodsnumbe { get; set; }
        public string  Nickname { get; set; }
        public int Stateid { get; set; }
        public string Mode { get; set; }
        public DateTime State_time { get; set; }
    }
}
