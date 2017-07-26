<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WformDataSourceDemo.aspx.cs" Inherits="DataAccecs_WformDataSourceDemo" %>

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
            text-align: center;
        }
        .auto-style3 {
            font-size: large;
            font-family: 微軟正黑體;
        }
        .auto-style4 {
            font-size: x-large;
            font-family: 微軟正黑體;
        }
        .auto-style5 {
            font-size: x-large;
            font-family: 微軟正黑體;
        }
    </style>
</head>
<body style="font-family: 微軟正黑體; font-size: xx-large">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">DataSource使用範例</td>
            </tr>
            <tr>
                <td class="auto-style3">客戶編號</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtID" runat="server" CssClass="auto-style3"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">姓名</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtName" runat="server" CssClass="auto-style3"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">電話</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtPhone" runat="server" CssClass="auto-style3"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">郵件</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtMail" runat="server" CssClass="auto-style3"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">地址</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtAddress" runat="server" CssClass="auto-style3"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnAdd" runat="server" CssClass="auto-style5" OnClick="btnAdd_Click" Text="Add" />
                    <asp:Button ID="btnDelete" runat="server" CssClass="auto-style4" OnClick="btnDelete_Click" Text="Delete" />
                    <asp:Button ID="btnModify" runat="server" CssClass="auto-style4" OnClick="btnModify_Click" Text="Modify" />
                    <asp:Button ID="btnQuerry" runat="server" CssClass="auto-style4" OnClick="btnQuerry_Click" Text="Querry" />
                </td>
            </tr>
        </table>
    <div>
    
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" style="font-size: medium">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
