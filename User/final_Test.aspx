<%@ Page Language="C#" MasterPageFile="~/User/MasterPage2.master" AutoEventWireup="true" CodeFile="final_Test.aspx.cs" Inherits="User_Default4" Title="Final_Test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 
 <script language="javascript">
{
 javascript:window.history.forward(1);
 }
 </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
<%--
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    
    --%>
 <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="False" 
                                DataKeyNames="q_id" Visible="False" >
                                <Columns>
                                    <asp:BoundField DataField="q_id" HeaderText="q_id" InsertVisible="False" 
                                        ReadOnly="True" SortExpression="q_id" />
                                    <asp:BoundField DataField="q_name" HeaderText="q_name" 
                                        SortExpression="q_name" />
                                    <asp:BoundField DataField="opt_1" HeaderText="opt_1" SortExpression="opt_1" />
                                    <asp:BoundField DataField="opt_2" HeaderText="opt_2" SortExpression="opt_2" />
                                    <asp:BoundField DataField="opt_3" HeaderText="opt_3" SortExpression="opt_3" />
                                    <asp:BoundField DataField="ans" HeaderText="ans" SortExpression="ans" />
                                    <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                                </Columns>
                            </asp:GridView>
    



    
    <div>
        <asp:ListBox ID="ListBox1" runat="server" Width="74px" Visible="False">
            <asp:ListItem>-1</asp:ListItem>
            <asp:ListItem>-1</asp:ListItem>
            <asp:ListItem>-1</asp:ListItem>
            <asp:ListItem>-1</asp:ListItem>
            <asp:ListItem>-1</asp:ListItem>
            <asp:ListItem>-1</asp:ListItem>
            <asp:ListItem>-1</asp:ListItem>
            <asp:ListItem>-1</asp:ListItem>
            <asp:ListItem>-1</asp:ListItem>
            <asp:ListItem>-1</asp:ListItem>
            <asp:ListItem>-1</asp:ListItem>
            <asp:ListItem>-1</asp:ListItem>
            <asp:ListItem>-1</asp:ListItem>
            <asp:ListItem>-1</asp:ListItem>
            <asp:ListItem>-1</asp:ListItem>
            <asp:ListItem>-1</asp:ListItem>
        </asp:ListBox>
    </div>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <br />
    <table style="width: 600px;">
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="3" align="center">
               <table id="Table_01" width="864" height="720" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td>
			<img src="img/r1_01.gif" width="78" height="42" alt=""></td>
		<td colspan="8">
			<img src="img/r1_02.gif" width="713" height="42" alt=""></td>
		<td>
			<img src="img/r1_03.png" width="73" height="42" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="img/r1_04.gif" width="78" height="54" alt=""></td>
		<td colspan="8">
			<img src="img/r1_05.gif" width="713" height="54" alt=""></td>
		<td>
			<img src="img/r1_06.gif" width="73" height="54" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="img/r1_07.gif" width="78" height="52" alt=""></td>
		<td colspan="8" style="background-image:url(img/r1_08.gif);width:713px;height:52px">
            <table style="width:100%;">
                <tr>
                    <td align="center"><asp:Label ID="L1" runat="server" Text="1" Height="30px" 
                            Width="40px" Font-Bold="True" Font-Size="Large" ForeColor="#000066"></asp:Label></td>
                    <td align="center"><asp:Label ID="L2" runat="server" Text="2" Height="30px" Width="40px" Font-Bold="True" Font-Size="Large" ForeColor="#000066"></asp:Label></td>
                    <td align="center"><asp:Label ID="L3" runat="server" Text="3" Height="30px" Width="40px" Font-Bold="True" Font-Size="Large" ForeColor="#000066"></asp:Label></td>
                    <td align="center"><asp:Label ID="L4" runat="server" Text="4" Height="30px" Width="40px" Font-Bold="True" Font-Size="Large" ForeColor="#000066"></asp:Label></td>
                    <td align="center"><asp:Label ID="L5" runat="server" Text="5" Height="30px" Width="40px" Font-Bold="True" Font-Size="Large" ForeColor="#000066"></asp:Label></td>
                    
                    <td align="center"><asp:Label ID="L6" runat="server" Text="6" Height="30px" Width="40px" Font-Bold="True" Font-Size="Large" ForeColor="#000066"></asp:Label></td>
                    <td align="center"><asp:Label ID="L7" runat="server" Text="7" Height="30px" Width="40px" Font-Bold="True" Font-Size="Large" ForeColor="#000066"></asp:Label></td>
                    <td align="center"><asp:Label ID="L8" runat="server" Text="8" Height="30px" Width="40px" Font-Bold="True" Font-Size="Large" ForeColor="#000066"></asp:Label></td>
                    <td align="center"><asp:Label ID="L9" runat="server" Text="9" Height="30px" Width="40px" Font-Bold="True" Font-Size="Large" ForeColor="#000066"></asp:Label></td>
                    <td align="center"><asp:Label ID="L10" runat="server" Text="10" Height="30px" Width="40px" Font-Bold="True" Font-Size="Large" ForeColor="#000066"></asp:Label></td>
                    
                    <td align="center"><asp:Label ID="L11" runat="server" Text="11" Height="30px" Width="40px" Font-Bold="True" Font-Size="Large" ForeColor="#000066"></asp:Label></td>
                    <td align="center"><asp:Label ID="L12" runat="server" Text="12" Height="30px" Width="40px" Font-Bold="True" Font-Size="Large" ForeColor="#000066"></asp:Label></td>
                    <td align="center"><asp:Label ID="L13" runat="server" Text="13" Height="30px" Width="40px" Font-Bold="True" Font-Size="Large" ForeColor="#000066"></asp:Label></td>
                    <td align="center"><asp:Label ID="L14" runat="server" Text="14" Height="30px" Width="40px" Font-Bold="True" Font-Size="Large" ForeColor="#000066"></asp:Label></td>
                    <td align="center"><asp:Label ID="L15" runat="server" Text="15" Height="30px" Width="40px" Font-Bold="True" Font-Size="Large" ForeColor="#000066"></asp:Label></td>
                    
                </tr>
                
            </table>
        </td>
		<td>
			<img src="img/r1_09.gif" width="73" height="52" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="img/r1_10.gif" width="78" height="296" alt=""></td>
		<td colspan="8" style="background-image:url(img/r1_11.gif); width:713px; height:296px" valign="middle"  align="center">
		<table style="width:580px; border="0px" cellpadding="5" >
                    <tr>
                    <td colspan=4 style="color:White;">
                    <asp:RadioButton ID="opteng" runat="server" GroupName="lang" Text="English" 
                                Font-Bold="True" Checked="true"  
                            oncheckedchanged="opteng_CheckedChanged" Visible="False" 
                                />
                            &nbsp;
                            <asp:RadioButton ID="optguj" runat="server" GroupName="lang" Text="Gujarati" 
                                Font-Bold="True"  
                                oncheckedchanged="optguj_CheckedChanged" 
                            Visible="False"  />
                            
                            <asp:RadioButton ID="optboth" runat="server" GroupName="lang" Text="Both" 
                                Font-Bold="True"  oncheckedchanged="optboth_CheckedChanged" Visible="False" 
                                 />
                                
                                 
                        </td>
                        <caption>
                    </caption>
        </td>
                        <caption>
                            &nbsp;</caption>
            </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Que." Font-Bold="True" 
                                Font-Size="Medium" ForeColor="Green"></asp:Label></td>
                        <td colspan="3" align="left">
                            <asp:Label ID="lbl_que" runat="server" Font-Bold="True" Font-Size="Medium" 
                                ForeColor="Green" Text="The Following sign represent"></asp:Label>
                                <br />
                            <asp:Label ID="lbl_que_g" runat="server" Font-Bold="True" Font-Size="Medium" 
                                ForeColor="Green" Text="The Following sign represent"></asp:Label>
                        </td>
                        
                    </tr>
                    <tr>
                        <td colspan="3" align="center">
                            &nbsp;</td>
                        <td align="center">
                        



                        <div id="myCounter"> 
</div>
</td>
                    </tr>
                    <tr>
                        <td align="center" valign="middle" style="color:White;">
                            1</td>
                        <td style="color:White;">
                            <asp:Label ID="lbl_ans1" runat="server" Text="stop"></asp:Label>
                            <br />
                            <asp:Label ID="lbl_ans1_g" runat="server"  Text="stop" 
                                Font-Names="Arial" ForeColor="White"></asp:Label>
                            
                        </td>
                        <td align="center" style="color:White;">
                            <asp:RadioButton ID="opt1" runat="server" GroupName="opt"  />
                        </td>
                        <td rowspan="3" align="center" style="color:White;">
                            
                           <asp:Image ID="Image1" runat="server" Height="100px" 
                    ImageUrl="~/Traffic_img/1_1.png" Width="100px" /> 
                        </td>
                    </tr>
                    <tr>
                        <td align="center" valign="middle" style="color:White;">
                            2</td>
                        <td  style="color:White;">
                            <asp:Label ID="lbl_ans2" runat="server" Text="No Parking"></asp:Label>
                             <br />
                            <asp:Label ID="lbl_ans2_g" runat="server" Text="stop"></asp:Label>
                        </td>
                        <td align="center" style="color:White;">
                            <asp:RadioButton ID="opt2" runat="server" GroupName="opt" />
                        </td>
                    </tr>
                    <tr>
                        <td align="center" valign="middle" style="color:White;">
                            3</td>
                        <td style="color:White;">
                            <asp:Label ID="lbl_ans3" runat="server" Text="Hospital ahead"></asp:Label>
                             <br />
                            <asp:Label ID="lbl_ans3_g" runat="server" Text="stop"></asp:Label>
                        </td>
                        <td align="center" style="color:White;">
                            <asp:RadioButton ID="opt3" runat="server" GroupName="opt" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="lbl_c_ans" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    
                    <tr>
                        <td colspan="3" align="center">
                            &nbsp;</td>
                        <td align="center">
                            <asp:Label ID="lbl_no_of_que" runat="server" Text="0" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    
                    <tr>
                        <td colspan="4" align="center" style="color:White;">
                           
                            <asp:Label ID="lbl_tot_que" runat="server" Font-Size="Large" Text="Label"></asp:Label>
                           
                            &nbsp;<br />
                        </td>
                    </tr>
                    
                    <tr>
                        <td colspan="4" align="center" style="color:White;">
                           
                            <asp:Label ID="lblTime" runat="server" Font-Bold="True" Font-Size="Medium" 
                                Text="40" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    
                </table>
		
		</td>
		<td>
			<img src="img/r1_12.gif" width="73" height="296" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="img/r1_13.gif" width="78" height="83" alt=""></td>
		<td colspan="8" style="background-image:url(img/r1_14.gif);width:713;height:83px;">
		<table width="100%">
		<tr>
		<td></td>
		<td></td>
		<td align="right">
            <asp:ImageButton ID="ImageButton1" runat="server" 
                ImageUrl="~/User/img/next_btn.png" onclick="ImageButton1_Click" />
            </td>
		</tr>
		</table>
		</td>
		<td>
			<img src="img/r1_15.gif" width="73" height="83" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="img/r1_16.gif" width="78" height="193" alt=""></td>
		<td>
			<img src="img/r1_17.gif" width="96" height="193" alt=""></td>
		<td>
			<img src="img/r1_18.gif" width="95" height="193" alt=""></td>
		<td>
			<img src="img/r1_19.gif" width="83" height="193" alt=""></td>
		<td>
			<img src="img/r1_20.gif" width="98" height="193" alt=""></td>
		<td>
			<img src="img/r1_21.gif" width="95" height="193" alt=""></td>
		<td>
			<img src="img/r1_22.gif" width="76" height="193" alt=""></td>
		<td>
			<img src="img/r1_23.gif" width="89" height="193" alt=""></td>
		<td>
			<img src="img/r1_24.gif" width="81" height="193" alt=""></td>
		<td>
			<img src="img/r1_25.gif" width="73" height="193" alt=""></td>
	</tr>
</table>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
    <br />
  
 
    
<script type="text/javascript">
   window.onload=function(){ 
   var counter = 40;
   var interval = setInterval(function() {
   counter--;
   $("#ctl00_ContentPlaceHolder1_lblTime").text(counter);
     if (counter == 0) 
     {
             
         clearInterval(interval);
       redirect();
     }
    }, 1000);
};

function redirect() {


      document.aspnetForm.submit();
   
    
}
</script>    

<%--</ContentTemplate>--%>
   <%-- </asp:UpdatePanel>--%>
    
</asp:Content>

