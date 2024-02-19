<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="List Registration.aspx.cs" Inherits="admin_Default2" Title="Registration List Form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td align="center" >
                <h2>Registration List Form</h2></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Search On :"></asp:Label>
&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="Reg_id                 ">Id
                    </asp:ListItem>
                    <asp:ListItem Value="Username">Name</asp:ListItem>
                    <asp:ListItem Value="F_Name">First Name</asp:ListItem>
                    <asp:ListItem>City</asp:ListItem>
                    <asp:ListItem>Mobile</asp:ListItem>
                    <asp:ListItem Value="E_mail">E_mail</asp:ListItem>
                </asp:DropDownList>
&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Search By :"></asp:Label>
&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Show" onclick="Button1_Click" 
                    style="height: 26px" />
&nbsp;
                <asp:Button ID="Button2" runat="server" Text="New Entry" 
                    onclick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" DataKeyNames="Reg_id" 
                    EmptyDataText="There are no data records to display." GridLines="Vertical">
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" 
                                    NavigateUrl='<%# Eval ("Reg_id","~/admin/Entry_Registration.aspx?action=del&id={0}") %>' Text="delete">
                                    </asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink2" runat="server" 
                                    NavigateUrl='<%# Eval ("Reg_id","~/admin/Entry_Registration.aspx?action=upd&id={0}" ) %>' 
                                    Text="update"></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Reg_id" HeaderText="Reg_id" ReadOnly="True" 
                            SortExpression="Reg_id" />
                        <asp:BoundField DataField="Username" HeaderText="Username" 
                            SortExpression="Username" />
                        <asp:BoundField DataField="Password" HeaderText="Password" 
                            SortExpression="Password" />
                        <asp:BoundField DataField="F_Name" HeaderText="F_Name" 
                            SortExpression="F_Name" />
                        <asp:BoundField DataField="L_Name" HeaderText="L_Name" 
                            SortExpression="L_Name" />
                        <asp:BoundField DataField="Address" HeaderText="Address" 
                            SortExpression="Address" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="Mobile" HeaderText="Mobile" 
                            SortExpression="Mobile" />
                        <asp:BoundField DataField="E_mail" HeaderText="E_mail" 
                            SortExpression="E_mail" />
                        <asp:BoundField DataField="Sec_Que" HeaderText="Sec_Que" 
                            SortExpression="Sec_Que" />
                        <asp:BoundField DataField="Sec_Ans" HeaderText="Sec_Ans" 
                            SortExpression="Sec_Ans" />
                        <asp:BoundField DataField="Status" HeaderText="Status" 
                            SortExpression="Status" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

