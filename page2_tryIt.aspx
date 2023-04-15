<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="page2_tryIt.aspx.cs" Inherits="final_hw3_part4.page2_tryIt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div>
            <a href="Default.aspx">Home</a>
        </div>
        <div>
            <asp:Label ID="Label1" runat="server" Text="welcome to my 1st REST service"></asp:Label>
        </div>

        <div>
            <div>
                <asp:Label ID="Label2" runat="server" Text="Welcome. Find Temperatiure and wind speed of any given city"></asp:Label>
                <br />
                <br />
            </div>

            <div> 
                <asp:Label ID="Label3" runat="server" Text="Enter City"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            </div>

            <div>
                <asp:Label ID="Label4" runat="server" Text=" Enter city name to find Temperature:"></asp:Label>
                <br />
                <asp:Label ID="Label5" runat="server" Text="Enter city name to find Wind Speed"></asp:Label>
            </div>
        </div>


    </form>
</body>
</html>
