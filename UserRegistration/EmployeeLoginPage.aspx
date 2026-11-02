
<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" 
AutoEventWireup="true"
CodeFile="Default2.aspx.cs" Inherits="Default2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<style type="text/css">
.style2
{
font-size: large;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<div>
<h2 style="color: Green">
Login in ASP.NET 4, C#
</h2>
<asp:Login ID="Login1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" 
BorderPadding="4"
BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em"
ForeColor="#333333" Height="192px" Style="font-size: medium" Width="308px" 
onauthenticate="Login1_Authenticate">
<InstructionTextStyle Font-Italic="True" ForeColor="Black" />
<LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" 
BorderWidth="1px"
Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
<TextBoxStyle Font-Size="0.8em" />
<TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" 
ForeColor="White" />
</asp:Login>
</div>
</asp:Content>
--%>






<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="EmployeeLoginPage.aspx.cs" Inherits="EmployeeLoginPage" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="StyleSheet.css" rel="stylesheet" type="text/css" />   
    <title></title> 
    <style type="text/css">
        .style2
        {
            font-weight: bold;
            font-family: Verdana;
            color: #000000;
            font-size: 8pt;
            text-align: center;
        }
    </style>
</head>
<body style="margin: 0px">
    <form id="form1" runat="server">
    <div>
       
    <table border="1" cellpadding="1" cellspacing="1" style="width: 60%" align="center" class="Table">
            <tr>
                <td colspan="2" class="style2" bgcolor="#993300">
                   <h2>Employee Login Form</h2></td>
                   
       
        <asp:HyperLink ID="RegisterHyperLink" runat="server" EnableViewState="false"><h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Human Resource Management System</h1></asp:HyperLink> 
                                    
            </tr>
            <tr>
                <td colspan="2" valign="top">
                    <table style="width: 100%">
                        <tr>
                            <td align="left" width="30%" style="height: 26px" class="FieldCaptionTD">
                                UserName:</td>
                            <td align="left" width="50%" style="height: 26px">
                                <asp:TextBox ID="txtUserName" runat="server" MaxLength="12" CssClass="TextinputText"></asp:TextBox></td>
                            <td align="left" width="20%" style="height: 26px">
                                <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtUserName"
                                    ErrorMessage="UserName can't be left blank" SetFocusOnError="True">*</asp:RequiredFieldValidator></td>
                        </tr>
                         <tr>
                            <td align="left" width="30%" class="FieldCaptionTD">
                                Password:</td>
                            <td align="left" width="50%">
                                <asp:TextBox ID="txtPwd" runat="server" MaxLength="15" CssClass="TextinputText" 
                                    TextMode="Password"></asp:TextBox></td>
                            <td align="left" width="20%">
                                <asp:RequiredFieldValidator ID="rfvPwd" runat="server" ControlToValidate="txtPwd"
                                    ErrorMessage="Password can't be left blank" SetFocusOnError="True">*</asp:RequiredFieldValidator></td>
                                 </tr>
                        </table>
                           </td>
                          </tr>
                         <tr>
                <td colspan="2">
                    <table style="width: 100%" class="Table">
                        <tr>
                            <td>
                                <asp:Label ID="lblMsg" runat="server" CssClass="Label" Font-Bold="True" 
                                    ForeColor="Red"></asp:Label></td>
                            <td>
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                                    ShowSummary="False" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" colspan="2">
                                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="Button" 
                                    onclick="btnLogin_Click" /></td>
                        </tr>
                    </table>
                </td>
            </tr>

        </table>
        <div class='short_explanation'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; New Employee?Please 
<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="EmployeeRegiatration.aspx">SignUp !</asp:HyperLink></div>     
    </div>
    </form>
</body>
</html>

