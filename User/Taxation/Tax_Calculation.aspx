<%@ Page Language="C#" MasterPageFile="~/Forms/MasterPage.master" AutoEventWireup="true" CodeFile="Tax_Calculation.aspx.cs" Inherits="Forms_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p><h2 align="center">Tax Calculation&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <img src="middle_car.gif" /></h2>
                <table align="center" border="0" cellpadding="2" cellspacing="0" width="430">
                    <tr>
                        <td height="17" valign="bottom" width="86%">
                            <font face="Arial" size="2"><b>
                            <span style="font-size: 10.0pt; font-family: Arial">
                            <span style="background-color: #FFFFFF">How to <span id="IL_AD1" class="IL_AD">
                calculate</span> the tax</span></span><span style="mso-bidi-font-size: 10.0pt"><o:p></o:p></span></b></font></td>
            <td height="17" width="14%">
                <div align="right">
                </div>
            </td>
        </tr>
    </table>
    <br />
    <table align="center" border="0" cellpadding="2" cellspacing="0" width="430">
        <tr>
            <td>
                <font face="Arial" size="2">A) </font><b style="mso-bidi-font-weight:normal"><u>
                <font face="Arial" size="2"><o:p></o:p></font></u></b>
            </td>
            <td>
                <font face="Arial" size="2">Tax for <span id="IL_AD4" class="IL_AD">transport</span> 
                vehicles</font></td>
        </tr>
        <tr>
            <td width="4%">
            </td>
            <td width="96%">
                <b style="mso-bidi-font-weight:normal"><u>
                <span style="mso-bidi-font-size: 10.0pt"><font face="Arial" size="2"><o:p> 
              </o:p> </font></span></u></b><span style="mso-bidi-font-size: 10.0pt">
                <font face="Arial" size="2">Let annual tax<span style="mso-spacerun: yes">&nbsp;
                </span>= Rs. <b style="mso-bidi-font-weight:
normal">x</b><span style="mso-spacerun: yes">&nbsp;&nbsp; </span><o:p> </o:p> 
                &nbsp;<o:p> 
              </o:p></font></span><font face="Arial" size="2">
                <span style="mso-bidi-font-size: 10.0pt">
                <br />
                <br />
                1)<span style="font-style: normal; font-variant: normal; font-weight: normal">
                </span><b>Quarterly tax</b>&nbsp; =&nbsp; <b style="mso-bidi-font-weight:normal">x</b>/4 + 
                [10 % of <b style="mso-bidi-font-weight:normal">x</b>/4]<o:p> 
              </o:p>
                <br />
                <br />
                2)<span style="font-style: normal; font-variant: normal; font-weight: normal">
                </span><b>Biannul tax / Half yearly tax</b>&nbsp; =&nbsp; 2 x Quaterly tax.<br />
              <o:p> </o:p> 
                <br />
                3)<span style="font-style: normal; font-variant: normal; font-weight: normal">
                </span><b>Two months tax&nbsp;</b> =&nbsp; <b style="mso-bidi-font-weight:normal">x</b>/6 
                + [ 15 % of <b style="mso-bidi-font-weight:normal">x</b>/6 ]<o:p> 
              </o:p>
                <br />
                <br />
                4)<span style="font-style: normal; font-variant: normal; font-weight: normal">
                </span><b>One month tax&nbsp;</b> =&nbsp; <b style="mso-bidi-font-weight:normal">x</b>/12 
                + [ 20 % of <b style="mso-bidi-font-weight:normal">x</b>/12]<o:p> 
                &nbsp; </o:p></span></font>
            </td>
        </tr>
        <tr>
            <td width="4%">
                <font face="Arial" size="2">B)</font></td>
            <td width="96%">
                <font face="Arial" size="2">Calculation of special permit tax</font></td>
        </tr>
        <tr>
            <td width="4%">
            </td>
            <td width="96%">
                <span style="mso-bidi-font-size: 10.0pt"><font face="Arial" size="2"><o:p> 
              </o:p> Let rate of special permit tax = Rs. <b style="mso-bidi-font-weight:normal">
                x</b> <span style="mso-spacerun: yes">&nbsp;&nbsp;</span>per seat per annum,<o:p> </o:p>
                <br />
                <br />
                Let rate of tax against substantive permit = Rs<span style="mso-spacerun: yes">&nbsp;
                </span><b style="mso-bidi-font-weight:normal">y</b> per seat per annum </font>
                </span>
            </td>
        </tr>
        <tr>
            <td width="4%">
            </td>
            <td width="96%">
                <font face="Arial" size="2"><span style="mso-bidi-font-size: 10.0pt"><b>1)</b><span 
                    style="font-style: normal; font-variant: normal; font-weight: normal">&nbsp;</span><b>For
                <span id="IL_AD2" class="IL_AD">vehicles</span> registered in Maharashtra state</b></span></font>
                <p class="MsoNormal" style="margin-left:.25in;text-indent:-.25in;mso-list:l0 level1 lfo4;
tab-stops:list .25in">
                    <span style="mso-bidi-font-size: 10.0pt"><font face="Arial"><font size="2">Tax 
                    per seat per day&nbsp;&nbsp; <span style="mso-spacerun:
yes">&nbsp;</span>=<span style="mso-spacerun: yes">&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <b style="mso-bidi-font-weight:
normal"><u>(x – y ) + </u></b></font><u><font size="2">[ 10 % of (<b style="mso-bidi-font-weight:
normal">x-y)</b> ]<span style="mso-spacerun: yes">&nbsp;&nbsp;&nbsp;<br />
                    </span></font></u></font><font face="Arial" size="2">
                    <span style="mso-spacerun:
yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>360<o:p>&nbsp;&nbsp; </o:p></font></span>
                </p>
            </td>
        </tr>
        <tr>
            <td width="4%">
            </td>
            <td width="96%">
                <font face="Arial" size="2"><span style="mso-bidi-font-size: 10.0pt"><b>2)</b><i><b>
                </b></i><b>For vehicles registered in other states</b></span></font>
                <p class="MsoNormal" style="margin-left:.25in;text-indent:-.25in;mso-list:l0 level1 lfo4;
tab-stops:list .25in">
                    <span style="mso-bidi-font-size: 10.0pt"><font face="Arial"><font size="2">Tax 
                    per seat per day&nbsp;&nbsp;&nbsp; <span style="mso-spacerun:
yes">&nbsp;</span>=<span style="mso-spacerun: yes">&nbsp;&nbsp;&nbsp; </span>
                    <b style="mso-bidi-font-weight:
normal"><u><span style="mso-spacerun: yes">&nbsp;</span>x + </u></b></font><u><font size="2">[ 10 % of (<b 
                        style="mso-bidi-font-weight:normal">x)</b> ]<span style="mso-spacerun: yes">&nbsp;&nbsp;&nbsp;<br />
                    </span></font></u></font><font face="Arial" size="2">
                    <span style="mso-spacerun: yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>360<o:p>&nbsp;&nbsp; </o:p></font></span>
                </p>
            </td>
        </tr>
    </table>
    </p>
</asp:Content>

