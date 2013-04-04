<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 149px;
        }
        .style4
        {
            width: 149px;
            height: 28px;
        }
        .style9
        {
            width: 169px;
            height: 28px;
        }
        .style10
        {
            width: 169px;
        }
        .style11
        {
            width: 142px;
            height: 28px;
        }
        .style12
        {
            width: 142px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table class="style1">
        <tr>
            <td class="style4">
                <asp:Label ID="UserNamelbl" runat="server" Text="User Name:"></asp:Label>
            </td>
            <td class="style11">
                <asp:TextBox ID="UserNametxt" runat="server"></asp:TextBox>
            </td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Passwordlbl" runat="server" Text="Password:"></asp:Label>
            </td>
            <td class="style12">
                <asp:TextBox ID="Passwordtxt" runat="server"></asp:TextBox>
            </td>
            <td class="style10">
                <asp:Label ID="LoginMessagelbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="UserNameOrPasswordErrorlbl" runat="server"></asp:Label>
            </td>
            <td class="style12">
                <asp:Button ID="Loginbtn" runat="server" onclick="Loginbtn_Click" 
                    Text="Login" />
            </td>
            <td class="style10">
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
