<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WfrmCalenderTesting.aspx.cs" Inherits="WEBControls_WfrmCalenderTesting" %>

<%@ Register src="WUCtlCalemdaBox.ascx" tagname="WUCtlCalemdaBox" tagprefix="uc1" %>

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
            height: 24px;
            text-align: center;
        }
        .auto-style3 {
            font-size: large;
            text-align: center;
        }
        .auto-style4 {
            height: 57px;
        }
        .auto-style5 {
            text-align: center;
        }
    </style>
</head>
<body style="font-family: 微軟正黑體">
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">使用者控制項範例</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <uc1:WUCtlCalemdaBox ID="WUCtlCalemdaBox1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblShow" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btnOK" runat="server" OnClick="btnOK_Click" Text="OK" />
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
        </table>
    
    </div>
    </form>
</body>
</html>
