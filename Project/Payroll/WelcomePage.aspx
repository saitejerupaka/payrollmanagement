<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="WelcomePage.aspx.cs" Inherits="WelcomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Table.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <p>
     Hello
        <asp:Label ID="GuestNamelbl" runat="server"></asp:Label>
        </p>
        <table class="style1" id="Profiletbl" runat="server">
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td rowspan="8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    FirstName:</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    LastName:</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    Email ID:</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    Phone Number:</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    Address:</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    Date Of Birth:</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    Joining Date:</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    <asp:Button ID="Logoutbtn" runat="server" onclick="Logoutbtn_Click" 
        Text="Logout" />
</asp:Content>