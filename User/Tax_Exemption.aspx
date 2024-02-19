<%@ Page Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true" CodeFile="Tax_Exemption.aspx.cs" Inherits="User_Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<p ><h2 align="center">Tax Exemption&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <img src="middle_car.gif" /></h2>
                <p >
                    <table align="center" border="0" cellpadding="2" cellspacing="0" width="430" >
                        <tr >
                            <td height="17" valign="bottom" width="86%">
                                <font face="Arial" size="2"><b>
                                <span style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Arial">
                                <font color="#000000"><b style="mso-bidi-font-weight:normal"><span style="color:White">V</span></b><b 
                        
                                    style="mso-bidi-font-weight: normal; font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Arial; color: #FFFFFF;"><span style="color:White">ehicles</span></b><b 
                        style="mso-bidi-font-weight:normal"> </b>
                    <b style="mso-bidi-font-weight: normal; font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Arial;">
                    <span style="color:White">exempted</span></b><b style="mso-bidi-font-weight:normal; "> </b>
                    <b style="mso-bidi-font-weight: normal; font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Arial">
                    <span style="color:White">from</span></b><b style="mso-bidi-font-weight:normal"> </b>
                    <b style="mso-bidi-font-weight: normal; font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Arial">
                    <span style="color:White">payment</span></b><b style="mso-bidi-font-weight:normal"> </b>
                    <b style="mso-bidi-font-weight: normal; font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Arial">
                    <span style="color:White">of</span></b><b style="mso-bidi-font-weight:normal"><span style="color:White"> BMV</span> </b>
                    <b style="mso-bidi-font-weight: normal; font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Arial">
                    <span style="color:White">taxes</span></b><b style="mso-bidi-font-weight:normal"><br />
                    <span style="color:White">( BMV </span></b>
                    <b style="mso-bidi-font-weight: normal; font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Arial">
                    <span style="color:White">Tax</span></b><b style="mso-bidi-font-weight:normal"> </b>
                    <b style="mso-bidi-font-weight: normal; font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Arial">
                    <span style="color:White">Act,</span></b><b style="mso-bidi-font-weight:normal"> <span style="color:White">S</span></b><b 
                        style="mso-bidi-font-weight: normal; font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Arial"><span style="color:White">ec</span>
                    </b><b style="mso-bidi-font-weight:normal"><span style="color:White">13 )</span> </b></font></span>
                    <span style="mso-bidi-font-size: 10.0pt"><o:p></o:p></span></b></font>
                </td>
                <td height="17" width="14%">
                    <div align="right">
                    </div>
                </td>
            </tr>
        </table>
        <br />
        <table align="center" bgcolor="white" border="0" cellpadding="2" 
            cellspacing="1" width="429" border="2px">
            <tr >
                <td align="center" height="19" valign="top" width="47">
                    <h1>
                        <font <%--color="#000000"--%>>
                        <span style="font-family: Arial; mso-bidi-font-weight: normal; mso-bidi-font-size: 12.0pt; font-size: 10.0pt">
                        <span style="color:White">Sr.No</span><o:p> 
                </o:p></span></font>
                    </h1>
                </td>
                <td align="center" height="19" valign="top" width="186">
                    <p align="center" class="MsoNormal" style="text-align:center">
                        <font color="#000000">
                        <span style="font-size:10.0pt;mso-bidi-font-size:
  12.0pt;font-family:Arial">
                        <b style="mso-bidi-font-weight: normal; font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Arial">
                        <span style="color:White">Type of vehicle</span><o:p> </o:p></b></span></font>
                    </p>
                </td>
                <td align="center" height="19" valign="top" width="184">
                    <h1>
                        <font color="#000000">
                        <span style="font-family: Arial; mso-bidi-font-weight: normal; mso-bidi-font-size: 12.0pt; font-size: 10.0pt">
                        <span style="color:White">Rate of tax exemption</span><o:p> </o:p></span></font>
                    </h1>
                </td>
            </tr>
            <tr>
                <td height="13" valign="top" width="47">
                    <p align="center" class="MsoNormal" style="text-align:center">
                        <span style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Arial">1<o:p> 
                </o:p></span>
                    </p>
                </td>
                <td  height="13" valign="top" width="186">
                    <p class="MsoNormal">
                        <span style="font-size:10.0pt;mso-bidi-font-size:12.0pt;
  font-family:Arial"><span id="IL_AD2" class="IL_AD"><span style="color:White">Vehicles</span></span> <span style="color:White">belonging to state govt, local self 
                        govt, municipal corporation .</span><o:p> </o:p></span>
                    </p>
                </td>
                <td align="center" height="13" valign="top" width="184">
                    <span style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Arial">100 %<o:p> </o:p>
                    </span>
                </td>
            </tr>
            <tr>
                <td height="35" valign="top" width="47">
                    <p align="center" class="MsoNormal" style="text-align:center">
                        <span style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Arial">2<o:p> 
                </o:p></span>
                    </p>
                </td>
                <td  height="35" valign="top" width="186">
                    <p class="MsoNormal">
                        <span style="font-size:10.0pt;mso-bidi-font-size:12.0pt;
  font-family:Arial"><span id="IL_AD3" class="IL_AD">Ambulances</span> working on no loss no profit 
                        bases <o:p> </o:p> 
                        </span>
                    </p>
                </td>
                <td align="center" height="35" valign="top" width="184">
                    <span style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Arial">100 %<o:p> </o:p>
                    </span>
                </td>
            </tr>
            <tr>
                <td  valign="top" width="47">
                    <p align="center" class="MsoNormal" style="text-align:center">
                        <span style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Arial">3<o:p> 
                </o:p></span>
                    </p>
                </td>
                <td  valign="top" width="186">
                    <p class="MsoNormal">
                        <span style="font-size:10.0pt;mso-bidi-font-size:12.0pt;
  font-family:Arial">Invalid carriage <o:p> </o:p> </span>
                    </p>
                </td>
                <td align="center" valign="top" width="184">
                    <span style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Arial">100 %<o:p> </o:p>
                    </span>
                </td>
            </tr>
            <tr>
                <td  valign="top" width="47">
                    <p align="center" class="MsoNormal" style="text-align:center">
                        <span style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Arial">4<o:p> 
                </o:p></span>
                    </p>
                </td>
                <td  valign="top" width="186">
                    <p class="MsoNormal">
                        <span style="font-size:10.0pt;mso-bidi-font-size:12.0pt;
  font-family:Arial">Vehicles solely used for transportation of <span id="IL_AD1" class="IL_AD">school 
                        children</span> and owned by <span id="IL_AD4" class="IL_AD">school</span> or 
                        private person<o:p> </o:p></span>
                    </p>
                </td>
                <td align="center" valign="top" width="184">
                    <span style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Arial">2/3 
                    of annual rate<o:p> </o:p></span>
                </td>
            </tr>
            <tr>
                <td valign="top" width="47">
                    <p align="center" class="MsoNormal" style="text-align:center">
                        <span style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Arial">5<o:p> 
                </o:p></span>
                    </p>
                </td>
                <td  valign="top" width="186">
                    <p class="MsoNormal">
                        <span style="font-size:10.0pt;mso-bidi-font-size:12.0pt;
  font-family:Arial">Vehicles belonging to Orchestra, Tamasha Mandal, Drama Theatre, etc. </span>
                    </p>
                </td>
                <td align="center"  valign="top" width="184">
                    <span style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Arial">2/3 
                    of annual rate<o:p> </o:p></span>
                </td>
            </tr>
            <tr>
                <td valign="top" width="47">
                    <p align="center" class="MsoNormal" style="text-align:center">
                        <span style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Arial">6<o:p> 
                </o:p></span>
                    </p>
                </td>
                <td  valign="top" width="186">
                    <p class="MsoNormal">
                        <span style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Arial">
                        Vechiles used to carry school children and other contracts, </span>
                        <span style="font-size:10.0pt;mso-bidi-font-size:12.0pt;
  font-family:Arial">owned by private person </span>
                    </p>
                </td>
                <td align="center" valign="top" width="184">
                    <span style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Arial">1/3 
                    of annual rate<o:p> </o:p></span>
                </td>
            </tr>
            <tr>
                <td height="2" valign="top" width="47">
                    <p align="center" class="MsoNormal" style="text-align:center">
                        <span style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Arial">7<o:p> 
                </o:p></span>
                    </p>
                </td>
                <td  height="2" valign="top" width="186">
                    <p class="MsoNormal">
                        <span style="font-size:10.0pt;mso-bidi-font-size:12.0pt;
  font-family:Arial">Vehicles under non use<o:p> </o:p></span>
                    </p>
                </td>
                <td align="center"  height="2" valign="top" width="184">
                    <span style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Arial">100 %<o:p> </o:p>
                    </span>
                </td>
            </tr>
            <tr>
                <td  valign="top" width="47">
                    <p align="center" class="MsoNormal" style="text-align:center">
                        <span style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Arial">8<o:p> 
                </o:p></span>
                    </p>
                </td>
                <td  valign="top" width="186">
                    <p class="MsoNormal">
                        <span style="font-size:10.0pt;mso-bidi-font-size:12.0pt;
  font-family:Arial">Tractors and traliors used fopr agr. purpose<o:p> </o:p></span>
                    </p>
                </td>
                <td align="center"  valign="top" width="184">
                    <span style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Arial">100 %</span></td>
            </tr>
        </table>
    </p>


</asp:Content>

