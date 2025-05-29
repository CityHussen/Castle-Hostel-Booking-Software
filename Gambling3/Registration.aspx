<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Registration.aspx.vb" Inherits="Gambling3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Castle Hostels </title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 151px;
        }
        .auto-style3 {
            width: 279px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <h1 style="font-family: Arial, Helvetica, sans-serif">Castle Hostels</h1>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="ImgLogo2" runat="server" Height="207px" ImageUrl="~/Castle.jpg" Width="374px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="ImgLogo1" runat="server" CssClass="auto-style4" Height="208px" ImageUrl="~/Castle2.jpg" Width="310px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
        <p></p>
        <p style="font-family: Arial, Helvetica, sans-serif">
            In the hot Summer with a beautiful swimming area ,our hotel retreats provides modern comfort with genuine resort elegance.Offering the sites and sound of nature and relaxation.</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Name </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtName" runat="server" Width="242px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="*Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email Address</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtEmail" runat="server" Width="240px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Enter Valid Email" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Error in email Format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Tent Selection</td>
                <td class="auto-style3">
                    <asp:CheckBox ID="ChkEdinburgh" runat="server" Text="Edinburgh($17)" />
                    <br />
                    <asp:CheckBox ID="ChkFlorence" runat="server" Text="Florence($23)" />
                    <br />
                    <asp:CheckBox ID="ChkBarcelona" runat="server" Text="Barcelona($28)" />
                </td>
                <td>
                    <asp:Label ID="lblCityError" runat="server" ForeColor="Red" Text="*Select a city" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Night(s)</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="ddlNights" runat="server">
                        <asp:ListItem Value="1"></asp:ListItem>
                        <asp:ListItem Value="2"></asp:ListItem>
                        <asp:ListItem Value="3"></asp:ListItem>
                        <asp:ListItem Value="4"></asp:ListItem>
                        <asp:ListItem Value="5"></asp:ListItem>
                        <asp:ListItem Value="6"></asp:ListItem>
                        <asp:ListItem Value="7"></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Check In Date</td>
                <td class="auto-style3">
                    <asp:Calendar ID="cldArrival" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                        <OtherMonthDayStyle ForeColor="#CC9966" />
                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                        <SelectorStyle BackColor="#FFCC66" />
                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                    </asp:Calendar>
                </td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
                    <br />
                    <asp:Label ID="lblCalendarError" runat="server" ForeColor="Red" Text="*Select a valid Date"></asp:Label>
                    <br />
                    <asp:Label ID="lblReservations" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
