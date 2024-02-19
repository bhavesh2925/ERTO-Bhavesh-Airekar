<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="Entry_Registration.aspx.cs" Inherits="admin_Default6" Title="Registration Entry Form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <center>
    <table>
        <tr>
            <td colspan="3" align="center">
                <h2>Registration Entry Form</h2></td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Regi Id :</td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                UserName :</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter username.">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Password :
                </td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Enter Password.">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>First Name :</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Enter First Name.">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Last Name :</td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox10" ErrorMessage="Enter Last Name.">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Address :</td>
            <td>
                <asp:TextBox ID="TextBox11" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox11" ErrorMessage="Enter Address.">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>City :</td>
            <td>
                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBox12" ErrorMessage="Enter City.">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Mobile No :</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Enter Mobile No..">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Plz Enter Valid Mobile no." 
                    MaximumValue="9999999999" MinimumValue="0000000000">*</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td>E-mail :</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="Enter E-mail Address.">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="Plz.Enter Valid E-mail Address." 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>Security Que :</td>
            <td>
                <asp:DropDownList ID="DropDownList4" runat="server">
                    <asp:ListItem>what is your favourite author?</asp:ListItem>
                    <asp:ListItem Value="what is your favourite song?">what is your favourite song?</asp:ListItem>
                    <asp:ListItem>who are your favourite scientist?</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>Security Ans :</td>
            <td>
                <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="TextBox13" ErrorMessage="Enter Sequrity Answer">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Status :</td>
            <td>
                <asp:DropDownList ID="DropDownList5" runat="server">
                    <asp:ListItem>YES</asp:ListItem>
                    <asp:ListItem>NO</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3"; align="center" style="margin-left: 40px">
                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />    
                &nbsp;    
                <asp:Button ID="Button2" runat="server" Text="Reset" onclick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="3"; align="center" style="margin-left: 40px">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
    </table>
    </center>
</asp:Content>

