<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="List Download.aspx.cs" Inherits="admin_Default2" Title="Download List Form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td align="center" >
                <h2>Download List Form</h2></td>
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
                    <asp:ListItem Value="D_id">D_id</asp:ListItem>
                    <asp:ListItem Value="Title_Eng">Title_Eng</asp:ListItem>
                    <asp:ListItem Value="Title_Guj">Title_Guj</asp:ListItem>
                    <asp:ListItem>Category</asp:ListItem>
                </asp:DropDownList>
&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Search By :"></asp:Label>
&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Show" />
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
                    CellPadding="3" DataKeyNames="D_id" 
                    EmptyDataText="There are no data records to display." GridLines="Vertical">
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" 
                                    NavigateUrl='<%# Eval ("D_id", "~/admin/Entry_Download.aspx?action=del&id={0}") %>' Text="Delete">
                                    </asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink2" runat="server" 
                                    NavigateUrl='<%# Eval ("D_id", "~/admin/Entry_Download.aspx?action=upd&id={0}") %>' Text="Update">
                                    </asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="D_id" HeaderText="D_id" ReadOnly="True" 
                            SortExpression="D_id" />
                        <asp:BoundField DataField="Title_Eng" HeaderText="Title_Eng" 
                            SortExpression="Title_Eng" />
                        <asp:BoundField DataField="Title_Guj" HeaderText="Title_Guj" 
                            SortExpression="Title_Guj" />
                        <asp:BoundField DataField="File_Name_Eng" HeaderText="File_Name_Eng" 
                            SortExpression="File_Name_Eng" />
                        <asp:BoundField DataField="File_Name_Guj" HeaderText="File_Name_Guj" 
                            SortExpression="File_Name_Guj" />
                        <asp:BoundField DataField="Category" HeaderText="Category" 
                            SortExpression="Category" />
                        <asp:BoundField DataField="Details" HeaderText="Details" 
                            SortExpression="Details" />
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

