<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Wfrm ComtrlValiadationDemo.aspx.cs" Inherits="WEBControls_Wfrm_ComtrlValiadationDemo" %>

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
            font-size: medium;
        }
        .auto-style3 {
            font-size: medium;
        }
        .auto-style4 {
            height: 44px;
        }
    </style>
</head>
<body style="font-family: 微軟正黑體; font-size: xx-large">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>驗證控制項使用範例</td>
            </tr>
            <tr>
                <td class="auto-style3">帳號<asp:Label ID="Label2" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtAccount" runat="server" CssClass="auto-style2"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequireAccount" runat="server" ControlToValidate="txtAccount" CssClass="auto-style3" ErrorMessage="帳號不可空白" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">姓名</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtName" runat="server" CssClass="auto-style2"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">密碼</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:TextBox ID="txtCode" runat="server" CssClass="auto-style2"></asp:TextBox>
                    <asp:CompareValidator ID="CompareCode" runat="server" ControlToCompare="txtConfirm" ControlToValidate="txtCode" CssClass="auto-style3" Display="Dynamic" ErrorMessage="密碼與確認不符" ForeColor="Red"></asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequireCode" runat="server" ControlToValidate="txtCode" ErrorMessage="密碼不可空白" ForeColor="Red" style="font-size: medium"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomCode" runat="server" ControlToValidate="txtCode" Display="Dynamic" ErrorMessage="至少含有一個非數字字元" ForeColor="Red" OnServerValidate="CustomCode_ServerValidate" style="font-size: medium"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">確認</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtConfirm" runat="server" CssClass="auto-style2"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">年齡</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                    <asp:RangeValidator ID="RangeAge" runat="server" ControlToValidate="txtAge" ErrorMessage="年齡必須介於0~200" ForeColor="#FF0066" MaximumValue="200" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">電話</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style2"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">郵件</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="auto-style2"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="電子郵件格式不符" ForeColor="#CC0000" style="font-size: medium" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">地址</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style2"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblShow" runat="server" CssClass="auto-style3" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
    <div>
    
        <asp:Button ID="Button1" runat="server" CssClass="auto-style2" OnClick="Button1_Click" Text="確認" />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" style="font-size: medium" />
    
    </div>
    </form>
</body>
</html>
