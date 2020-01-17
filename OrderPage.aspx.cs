using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _183pProject
{
    public partial class OrderPage : System.Web.UI.Page
    {
        //NOTE: ARRANGEMENT OF ITEMS ARE CONSIDERED IN THE ARRANGEMENT OF THE VALUES IN THE LIST
        List<int> itemQuantityList = new List<int>() {0,0,0,0,0,0,0};       
        protected void Page_Load(object sender, EventArgs e)
        {
      
        }

        protected void t1_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void btnn1_Click(object sender, EventArgs e)
        {

            /*
            int val = int.Parse(this.label1.Text);
            val = val + 1;

            itemQuantityList[0] = val;
            this.label1.Text = val.ToString();
            */
        }
    }
}