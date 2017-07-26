<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WfrmShoppingAddToCart.aspx.cs" Inherits="DataAccecs_WfrmShoppingAddToCart" %>

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
            font-family: "微軟正黑體 Light";
            font-size: large;
        }
        .auto-style4 {
            height: 24px;
        }
        .auto-style5 {
            font-family: 微軟正黑體;
            font-size: medium;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">加入購物車</td>
            </tr>
            <tr>
                <td class="auto-style3">請輸入購買量</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style5"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style5" OnClick="Button1_Click" Text="Button" />
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
        </table>
    
    </div>
    </form>
</body>
</html>
