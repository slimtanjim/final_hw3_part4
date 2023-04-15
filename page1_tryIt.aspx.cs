using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace final_hw3_part4
{
    public partial class page1_tryIt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string lat = TextBox2.Text;
            string lon = TextBox1.Text;

            using (var client = new ServiceReference1_GetWeather.Service1Client())
            {
                string result = client.GetWeather(lat, lon);
                Label5.Text = result;
            }
        }
    }
}