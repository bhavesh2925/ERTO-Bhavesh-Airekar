<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="List_Admin_Master.aspx.cs" Inherits="admin_Default2" Title="Admin_Master List Form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td align="center">
                 <h2>Admin Master List Form</h2></td>
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
                    <asp:ListItem Value="Admin_id   "> ID
                    </asp:ListItem>
                    <asp:ListItem Value="F_Name">First Name</asp:ListItem>
                    <asp:ListItem Value="Mobile">Mobile</asp:ListItem>
                    <asp:ListItem Value="City">City</asp:ListItem>
                    <asp:ListItem Value="Email">E-mail</asp:ListItem>
                    <asp:ListItem>Username</asp:ListItem>
                </asp:DropDownList>
&nbsp;
                <asp:Label ID="Label2" runat="server" Text="search By :"></asp:Label>
&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Show" 
                    onclick="Button1_Click" />
&nbsp;
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="New Entry" />
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" DataKeyNames="Admin_id" 
                    EmptyDataText="There are no data records to display." GridLines="Vertical" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" 
                                    NavigateUrl='<%# Eval ("Admin_id", "~/admin/Entry_Admin Master.aspx?action=del&id={0}") %>'
                                    Text="Delete"></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink2" runat="server" 
                                    NavigateUrl='<%# Eval ("Admin_id","~/admin/Entry_Admin Master.aspx?action=upd&id={0}")%>'
                                    Text="Update"></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Admin_id" HeaderText="Admin_id" ReadOnly="True" 
                            SortExpression="Admin_id" />
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
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
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
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

