<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="final_hw3_part4.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <style>
                    table {
                        border-collapse: collapse;
                        border: 1px solid black;
                    }
                    th, td {
                        border: 1px solid black;
                        padding: 8px;
                        text-align: left;
                    }
                    th {
                        background-color: #f2f2f2;
                    }
                </style>
            </div>

            <div>
                <table>
                    <tr>  
                        <th colspan="4">Service Directory</th>   
                    </tr>
                    <tr>
                        <td colspan="4">This project is developed by: Tanjim Haque.</td>
                    </tr>
                  <tr>
                    <th>Service name, with input and output types</th>
                    <th>TryIt link</th>
                    <th>Service description</th>
                    <th>APIs/Web Service Methods</th>
                  </tr>
                  <tr>
                    <td>
                        Name: Solar Index (SOAP)<br /> 
                        Input: Longitude (Double), Latitude (Double) <br /> 
                        Output: Average Annual Soalr Index
                    </td>
                    <td><a href="page1_tryIt.aspx">Try it</a> </td>
                    <td> Users enter longitude and latitude data after which teh services <br />
                        collects solar index data from the National Solar Radiation Database <br />
                        and returns the average annual solar index.<br />
                        http://webstrar19.fulton.asu.edu/Page7/Service1.svc?wsdl 
                    </td>
                    <td>string GetWeather(string lat, string lon)</td>
                  </tr>
                  <tr>
                    <td>
                        Name: Temperature and Wind (REST)<br /> 
                        Input: City Name(String)  <br /> 
                        Output: Json object of Temperature, Wind Speed 
                    </td>
                    <td><a href="page2_tryIt.aspx">Try it</a></td>
                    <td> 
                        Users can input any city name and receive the current Local <br />
                        Temperature in C and wind speed in meters per second <br />
                        http://webstrar19.fulton.asu.edu/page8/Service1.svc/winddata/{cityName}
                    </td>
                    <td>string GetWindData(string cityName)</td>
                  </tr>
                   <tr>
                        <td>Name: City name and Coordinate Finder (REST)<br /> 
                        Input: zipcode (Integer)<br /> 
                        Output: JSON object of City name and Coordinate</td>
                        <td><a href="page3_tryIt.aspx">Try it</a></td>
                        <td>Users can input any zipxcode and the sercvice will return the correct city <br />
                            name along with the latitude and longitude coordinates of the city.
                            http://webstrar19.fulton.asu.edu/page9/Service1.svc/GetLocation/{zipcode}
                        </td>
                        <td>Location GetLocation(string zip)</td>
                </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
