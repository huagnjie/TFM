﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using DAL;
namespace BLL
{
    public class goodstypeBLL
    {
        public static List<goodstype> SelectAllListByNickName(string NickName)
        {
            return DAL.goodstypeDAL.SelectAllListByNickName(NickName);
        }
    }
}
