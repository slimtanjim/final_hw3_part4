<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="page3_tryIt.aspx.cs" Inherits="final_hw3_part4.page3_tryIt" %>

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
            <h5>Welcome to my 3rd REST service</h5>
        </div>
        <div>

            <div>
                <asp:Label ID="Label1" runat="server" Text="Welcome to the get city and coordinate from zipcode service"></asp:Label>
                <br />
            </div>

            <div>
                <asp:Label ID="Label2" runat="server" Text="Enter zipcode"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Get City" OnClick="Button1_Click" />
                <br />
                <br />
                 <asp:Label ID="Label5" runat="server" Text="To find the City Name please enter the zipcode"></asp:Label>
                <br />
                <asp:Label ID="Label3" runat="server" Text="To find Longitude please enter the zipcode"></asp:Label>
                <br />
                <asp:Label ID="Label4" runat="server" Text="To find the Latitude please enter the zipcode"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
