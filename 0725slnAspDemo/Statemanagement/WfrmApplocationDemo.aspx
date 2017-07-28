<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WfrmApplocationDemo.aspx.cs" Inherits="Statemanagement_WfrmApplocationDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-family: 微軟正黑體;
            font-size: xx-large;
        }
        .auto-style3 {
            font-family: 微軟正黑體;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Application Demo</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style3"></asp:TextBox>
                    <asp:Button ID="btnSet" runat="server" CssClass="auto-style3" OnClick="btnSet_Click" Text="setApplication" />
                    <asp:Button ID="btnGet" runat="server" CssClass="auto-style3" OnClick="btnGet_Click" Text="getApplication" />
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
