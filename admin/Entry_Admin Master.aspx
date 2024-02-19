<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="Entry_Admin Master.aspx.cs" Inherits="admin_Default2" Title="Admin Master Entry Form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

<center>
    <table>
        <tr>
            <td colspan="3" align="center">
                <h2>Admin Master Entry Form</h2></td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Admin Id:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                UserName:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="plz enter user name" ControlToValidate="TextBox2">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Password:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="plz enter your password ." ControlToValidate="TextBox4">*</asp:RequiredFieldValidator>
                                    </td>
        </tr>
        <tr>
            <td>
                First Name:</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Enter First Name">*</asp:RequiredFieldValidator>
                                    </td>
        </tr>
        <tr>
            <td>
                Last Name:</td>
            <td style="margin-left: 560px">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="Enter Last Name" ControlToValidate="TextBox6">*</asp:RequiredFieldValidator>
                                    </td>
        </tr>
        <tr>
            <td>
                Address:</td>
            <td style="margin-left: 320px">
                <asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="Enter Address">*</asp:RequiredFieldValidator>
                                    </td>
        </tr>
        <tr>
            <td>
                City:</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox8" ErrorMessage="Enter City">*</asp:RequiredFieldValidator>
                                    </td>
        </tr>
        <tr>
            <td>
                Mobile :</td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ErrorMessage="Enter Mobile no." ControlToValidate="TextBox10">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="TextBox10" ErrorMessage="Enter Mobile No." 
                    MaximumValue="9999999999" MinimumValue="0000000000" Type="Double">*</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td >
                E-mail:</td>
            <td >
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                </td>
            <td >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ErrorMessage="Plz Enter E-mail Address." ControlToValidate="TextBox11">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox11" ErrorMessage="Enter Valid E-mail add..." 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                Security Que:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>What is Your Favourite author?</asp:ListItem>
                    <asp:ListItem>What is your pets name?</asp:ListItem>
                    <asp:ListItem>What is your Fevourite hobby?</asp:ListItem>
                    <asp:ListItem>What is name of your primary school?
                    </asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Security Ans:</td>
            <td>
                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ErrorMessage="Enter Sequrity ans.." ControlToValidate="TextBox12">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Status:</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>YES</asp:ListItem>
                    <asp:ListItem>NO</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" /> 
                &nbsp; 
                <asp:Button ID="Button2" runat="server" Text="Reset" onclick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
    </table>
    </center>
</asp:Content>

