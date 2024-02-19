<%@ Page Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true" CodeFile="MyCard.aspx.cs" Inherits="User_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <asp:DataList ID="DataList1" runat="server" DataKeyField="Reg_id" 
        DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <br />
            <table border="1px">
                <tr>
                    <td>
                        Name :</td>
                    <td>
                        <a href="#">
                        <asp:Label ID="Expr1Label" runat="server" Text='<%# Eval("f_name") %>' />
                        </a>&nbsp;<a href="#"><asp:Label ID="Expr2Label" runat="server" 
                            Text='<%# Eval("l_name") %>' />
                        </a>
                    </td>
                    <td rowspan="6">
                        <asp:Image ID="Image1" ImageUrl='<%# "~/photo/"+ Eval("photo") %>' runat="server" Width="100px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;Address :
                    </td>
                    <td>
                        <a href="#">
                        <asp:Label ID="Expr3Label" runat="server" Text='<%# Eval("address") %>' />
                        </a>
                    </td>
                </tr>
                <tr>
                    <td>
                        City :</td>
                    <td>
                        <a href="#">
                        <asp:Label ID="Expr4Label" runat="server" Text='<%# Eval("city") %>' />
                        </a>
                    </td>
                </tr>
                <tr>
                    <td>
                        Mobile :</td>
                    <td>
                        <a href="#">
                        <asp:Label ID="Expr5Label" runat="server" Text='<%# Eval("mobile") %>' />
                        </a>
                    </td>
                </tr>
                <tr>
                    <td>
                        E-mail :</td>
                    <td>
                        <a href="#">
                        <asp:Label ID="Expr6Label" runat="server" Text='<%# Eval("e_mail") %>' />
                        </a>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" 
        SelectCommand="SELECT F_Name, L_Name, Address, City, Mobile, E_mail, photo, Reg_id FROM Registration WHERE (Reg_id = @id)">
        <SelectParameters>
            <asp:SessionParameter Name="id" SessionField="reg_id" DefaultValue="1" />
        </SelectParameters>
    </asp:SqlDataSource>



                        <asp:Label ID="lblScore" runat="server" Font-Bold="False" 
        ForeColor="White"></asp:Label>
            


</asp:Content>

