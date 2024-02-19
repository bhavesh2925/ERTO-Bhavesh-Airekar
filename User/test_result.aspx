<%@ Page Language="C#" MasterPageFile="~/User/MasterPage2.master" AutoEventWireup="true" CodeFile="test_result.aspx.cs" Inherits="User_Default" Title="Test_Result" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <center>
       <asp:Label ID="Label1" runat="server" Text="E-RTO" Font-Bold="True" 
           Font-Size="XX-Large" ForeColor="Fuchsia"></asp:Label><br /><br />
       
    <asp:Image ID="Image1" runat="server" Height="300px" 
        ImageUrl="~/images/loser.png" Width="400px" />
        <br />
        <br />  
        <br />
       <asp:Button ID="Button1" runat="server" Text="Show Result" 
           onclick="Button1_Click"  />
        </center>
</asp:Content>

