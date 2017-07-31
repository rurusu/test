<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WfrmCookieDemo.aspx.cs" Inherits="Statemanagement_WfrmCookieDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-family: 微軟正黑體;
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
        <tr>
                <td class="auto-style1">Cookie</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="tbCookie" runat="server" CssClass="auto-style2" style="font-family: 微軟正黑體; font-size: x-large"></asp:TextBox>
                    <asp:Button ID="btnSetA" runat="server" CssClass="auto-style2" OnClick="btnSetA_Click" Text="setCookie" style="font-family: 微軟正黑體; font-size: x-large" />
                    <asp:Button ID="btnGetA" runat="server" CssClass="auto-style2" OnClick="btnGetA_Click" Text="getCookie" style="font-family: 微軟正黑體; font-size: x-large" />
                    <asp:Label ID="lblCookie" runat="server" CssClass="auto-style2" Text="Label" style="font-family: 微軟正黑體; font-size: x-large"></asp:Label>
                </td>
            </tr>
            </table>
    
    </div>
    </form>
</body>
</html>
