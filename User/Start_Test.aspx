<%@ Page Language="C#" MasterPageFile="~/User/MasterPage2.master" AutoEventWireup="true" CodeFile="Start_Test.aspx.cs" Inherits="User_Default" Title="Start_Test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <center>
    <table cellpadding="5px" >
        <tr>
            <td colspan="3">
                <h3>Welcome To RTO -Test</h3></td>
            
        </tr>
        <tr>
            <td valign="top">
                <h2>Select Language For Test :</h2>
                <asp:Button ID="Button1" runat="server" Text="Gujarati" onclick="Button1_Click" 
                    Width="150px" />
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" Text="English " onclick="Button2_Click" 
                    Width="150px" />
                <br />
                <br />
                <asp:Button ID="Button3" runat="server" Text="Gujarti &amp; English" 
                    onclick="Button3_Click" Width="150px" />
            </td>
            <td style="width:50px"></td>
            <td>
            <img src="../Traffic_img/10_3.png" />
            </td>
            
        </tr>
        <tr>
        
            <td>
                &nbsp;</td>
               <td></td>
               <td></td>
        </tr>
    </table>
    </center>
</asp:Content>

