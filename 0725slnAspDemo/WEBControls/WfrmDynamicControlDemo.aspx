<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WfrmDynamicControlDemo.aspx.cs" Inherits="WEBControls_WfrmDynamicControlDemo" %>

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
            height: 20px;
            font-size: xx-large;
            font-family: 微軟正黑體;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td id="2j" class="auto-style2">動態產生控制項</td>
            </tr>
            <tr>
                <td>
                    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                </td>
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
