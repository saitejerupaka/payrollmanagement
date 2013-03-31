<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmployeeRegisteration.aspx.cs" Inherits="EmployeeRegisteration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <strong>Employee Registration</strong></td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="FirstNamelbl" runat="server" Text="First Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="FirstNametxt" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="FirstNametxt" ErrorMessage="Required"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LastNamelbl" runat="server" Text="LastName:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="LastNametxt" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="LastNametxt" ErrorMessage="Required"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="PhoneNumberlbl" runat="server" Text="Phone Number:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="PhoneNumbertxt" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="PhoneNumbertxt" ErrorMessage="Required"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="EmailIdlbl" runat="server" Text="Email Id:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="EmailIdtxt" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="EmailIdtxt" ErrorMessage="Required"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="UserNamelbl" runat="server" Text="User Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="UserNametxt" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="UserNametxt" ErrorMessage="Required"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Passwordlbl" runat="server" Text="Password:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Passwordtxt" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="Passwordtxt" ErrorMessage="Required"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="ConfirmPasswordlbl" runat="server" Text="Confirm Password:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="ConfirmPasswordtxt" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="ConfirmPasswordtxt" ErrorMessage="Required"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="Passwordtxt" ControlToValidate="ConfirmPasswordtxt" 
                    ErrorMessage="Password does not match."></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Addresslbl" runat="server" Text="Address:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Addresstxt" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="Addresstxt" ErrorMessage="Required"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="DateOfBirthlbl" runat="server" Text="Date of birth:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="DateOfBirthtxt" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="DateOfBirthtxt" ErrorMessage="Required"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="JoiningDatelbl" runat="server" Text="Joining Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="JoiningDatetxt" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="JoiningDatetxt" ErrorMessage="Required"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="errorlbl" runat="server" Text="Error" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Registerbtn" runat="server" onclick="Registerbtn_Click" 
                    Text="Register" />
            </td>
            <td>
                <asp:Button ID="Resetbtn" runat="server" Text="Reset" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
