using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using DAL;

namespace BLL
{
   public  class UsersBLL
    {


        public static List<User> SelectAllUser()
        {
            return DAL.UsersManager.SelectAllUser();
        }


    }
}
