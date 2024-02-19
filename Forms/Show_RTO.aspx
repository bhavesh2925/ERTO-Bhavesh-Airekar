<%@ Page Language="C#" MasterPageFile="~/Forms/MasterPage.master" AutoEventWireup="true" CodeFile="Show_RTO.aspx.cs" Inherits="Forms_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="q_id" 
        DataSourceID="SqlDataSource1">
        <ItemTemplate>
            q_id:
            <asp:Label ID="q_idLabel" runat="server" Text='<%# Eval("q_id") %>' />
            <br />
            <table style="width:100%;">
                <tr>
                    <td colspan="3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        Que :</td>
                    <td>
                        <asp:Label ID="q_nameLabel" runat="server" Text='<%# Eval("q_name") %>' />
                    </td>
                    <td  rowspan="5">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Admin/Traffic_img/" + Eval("image") %>' Width="62px" />
                        <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="rb1" />
                    </td>
                    <td>
                        <asp:Label ID="opt_1Label" runat="server" Text='<%# Eval("opt_1") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="rb1" />
                    </td>
                    <td>
                        <asp:Label ID="opt_2Label" runat="server" Text='<%# Eval("opt_2") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="rb1" />
                    </td>
                    <td>
                        <asp:Label ID="opt_3Label" runat="server" Text='<%# Eval("opt_3") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Ans :
                    </td>
                    <td>
                        <asp:Label ID="ansLabel" runat="server" Text='<%# Eval("ans") %>' />
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT TOP (15) q_id, q_name, opt_1, opt_2, opt_3, ans, image FROM rto ORDER BY NEWID()">
    </asp:SqlDataSource>
</asp:Content>

