using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
namespace silogcent
{
    public class Item
    {
        public string name;
        public string desc;
        public string code;
        public int id;
        public float price;


        public static List<Item> fillItemList(ref List<Item> itmList)
        {
           
            return itmList;
        }
    }

    
}