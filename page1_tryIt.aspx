<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="page1_tryIt.aspx.cs" Inherits="final_hw3_part4.page1_tryIt" %>

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
            <asp:Label ID="Label1" runat="server" Text="Welcome to my 1st SOAP service"></asp:Label>
            <div>
            <div>
                <asp:Label ID="Label2" runat="server" Text="Find the average Solar index"></asp:Label>
                <br />
                <br />
            </div>
            <div>
                <asp:Label ID="Label3" runat="server" Text="Longitude: "></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                <br />

                <asp:Label ID="Label4" runat="server" Text="Latitude:"></asp:Label>
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

                <br />
            </div>

            <div>
                <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
                <br />
                <asp:Label ID="Label5" runat="server" Text="Press button to find solar index"></asp:Label>
            </div>

        </div>
        </div>
    </form>
</body>
</html>
