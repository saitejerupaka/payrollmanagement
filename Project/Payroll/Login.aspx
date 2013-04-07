<%@ Page Title="" Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Login.aspx.cs" Inherits="Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Table.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style4
        {
            width: 168px;
        }
        .style5
        {
            width: 259px;
        }
        .style6
        {
            width: 159px;
            height: 75px;
        }
        .style7
        {
            height: 75px;
        }
        .style8
        {
            width: 259px;
            height: 75px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <table class="style1">
        <tr>
            <td class="style4">
                <asp:Label ID="UserNamelbl" runat="server" Text="User Name:"></asp:Label>
            </td>
            <td class="style11">
                <asp:TextBox ID="UserNametxt" runat="server"></asp:TextBox>
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Passwordlbl" runat="server" Text="Password:"></asp:Label>
            </td>
            <td class="style12">
                <asp:TextBox ID="Passwordtxt" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:Label ID="LoginMessagelbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
                </td>
            <td class="style7">
                <asp:Button ID="Loginbtn" runat="server" onclick="Loginbtn_Click" 
                    Text="Login" />
            </td>
            <td class="style8">
                </td>
        </tr>
    </table>
</asp:Content>