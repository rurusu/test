<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WfrmApplicationAndSession.aspx.cs" Inherits="Statemanagement_WfrmApplicationAndSession" %>

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
            font-size: x-large;
        }
        .auto-style3 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Application</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="tbApplication" runat="server" CssClass="auto-style2"></asp:TextBox>
                    <asp:Button ID="btnSetA" runat="server" CssClass="auto-style2" OnClick="btnSetA_Click" Text="setApplication" />
                    <asp:Button ID="btnGetA" runat="server" CssClass="auto-style2" OnClick="btnGetA_Click" Text="getApplication" />
                    <asp:Label ID="lblApplication" runat="server" CssClass="auto-style2" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Session</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="tbSession" runat="server" CssClass="auto-style2"></asp:TextBox>
                    <asp:Button ID="btnSetS" runat="server" CssClass="auto-style2" OnClick="btnSetS_Click" Text="setSession" />
                    <asp:Button ID="btnGetS" runat="server" CssClass="auto-style2" OnClick="btnGetS_Click" Text="getSession" />
                    <asp:Label ID="lblSession" runat="server" CssClass="auto-style2" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">ViewState</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="tbViewState" runat="server" ></asp:TextBox>
                    <asp:Button ID="btnSetV" runat="server" CssClass="auto-style2"  Text="setViewState" OnClick="btnSetV_Click"  />
                    <asp:Button ID="btnGetV" runat="server" CssClass="auto-style2" Text="GetViewState" OnClick="btnGetV_Click" />
                    <asp:Label ID="lblViewState" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
