using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace final_hw3_part4
{
    public partial class page2_tryIt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cityName = TextBox1.Text;
            //string url = "http://localhost:59752/Service1.svc/winddata/" + cityName;
            string url = "http://webstrar19.fulton.asu.edu/page8/Service1.svc/winddata/" + cityName;

            // Call the winddata service and get the XML response
            WebClient client = new WebClient();
            string xmlString = client.DownloadString(url);

            // Parse the XML response to get the JSON data
            XmlDocument xmlDoc = new XmlDocument();
            xmlDoc.LoadXml(xmlString);
            XmlNamespaceManager namespaceManager = new XmlNamespaceManager(xmlDoc.NameTable);
            namespaceManager.AddNamespace("ns", "http://schemas.microsoft.com/2003/10/Serialization/");
            XmlNode stringNode = xmlDoc.SelectSingleNode("//ns:string/text()", namespaceManager);
            string jsonString = stringNode.Value;

            // Parse the JSON data into a dynamic object
            dynamic jsonObject = Newtonsoft.Json.JsonConvert.DeserializeObject(jsonString);

            // Set the label text to display the wind data
            string windSpeed = $"Current wind speed in {jsonObject.name}: {jsonObject.wind.speed} meters per second";
            //string temperature_k = $"Temperature: {jsonObject.main.temp}°K";

            string temp_kelvin = jsonObject.main.temp;
            double temp = Double.Parse(temp_kelvin);
            double temp_1 = temp - 273.15;
            double temp_C = temp_1 * 1.8 + 32;

            string temperature_Celcius = temp_C.ToString();
            string city_temperature = $"Current temperature in {jsonObject.name}: {temperature_Celcius}°Celcius";

            // Label3.Text = temperature_k;
            Label4.Text = city_temperature;

            Label5.Text = windSpeed;
        }
    }
}