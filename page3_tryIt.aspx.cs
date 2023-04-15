using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using static System.Net.WebRequestMethods;

namespace final_hw3_part4
{
    public partial class page3_tryIt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string zipCode = TextBox1.Text;
            //string url = "http://localhost:52177/Service1.svc/GetLocation/" + zipCode;
            string url = "http://webstrar19.fulton.asu.edu/page9/Service1.svc/GetLocation/" + zipCode;

            //call the GetLocation and get the JSON string
            string json = new System.Net.WebClient().DownloadString(url);

            //Pasrse the JSON and get the city and longitude and latitude
            /*
            string city = json.Substring(json.IndexOf("City") + 7, json.IndexOf("Longitude") - json.IndexOf("City") - 9);
            string longitude = json.Substring(json.IndexOf("Longitude") + 12, json.IndexOf("Latitude") - json.IndexOf("Longitude") - 14);
            string latitude = json.Substring(json.IndexOf("Latitude") + 11, json.IndexOf("}") - json.IndexOf("Latitude") - 12);
            */

            string my_json = "{\"City\":\"San Juan Bautista\",\"Latitude\":36.8463,\"Longitude\":-121.5346}";
            dynamic data = JsonConvert.DeserializeObject(json);
            string city = data.City;
            double lat = data.Latitude;
            double lon = data.Longitude;


            string longitude = lon.ToString();
            string latitude = lat.ToString();

            //Display the result
            //Label1.Text = "City: " + city + " Longitude: " + longitude + " Latitude: " + latitude;
            Label3.Text = $"Longitude coordinade for {city} is {longitude}";
            Label4.Text = $"latitude coordinate for {city} is {latitude}";
            Label5.Text = $"City name is: {city}";
        }
    }
}