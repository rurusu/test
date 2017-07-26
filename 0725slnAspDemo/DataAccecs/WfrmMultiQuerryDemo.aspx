<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WfrmMultiQuerryDemo.aspx.cs" Inherits="DataAccecs_WfrmMultiQuerryDemo" %>

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
            font-size: xx-large;
            text-align: center;
        }
        .auto-style3 {
            font-size: large;
        }
        .auto-style4 {
            font-size: large;
            font-family: "微軟正黑體 Light";
        }
        .auto-style5 {
            font-family: 微軟正黑體;
            font-size: large;
        }
    </style>
</head>
<body style="font-family: 微軟正黑體">
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">多重條件查詢範例</td>
            </tr>
            <tr>
                <td><span class="auto-style3">編號</span><asp:TextBox ID="txtNumFirst" runat="server" CssClass="auto-style4" Width="40px"></asp:TextBox>
                    -<asp:TextBox ID="txtNumLast" runat="server" CssClass="auto-style4" Width="49px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><span class="auto-style3">姓名</span><asp:TextBox ID="txtName" runat="server" CssClass="auto-style4"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td id="txtPhone"><span class="auto-style3">電話</span><asp:TextBox ID="txtPhone" runat="server" CssClass="auto-style4"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td id="txtEmail"><span class="auto-style3">郵件</span><asp:TextBox ID="txtEmail" runat="server" CssClass="auto-style4"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td id="txtEmail">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSelect" runat="server" CssClass="auto-style3" OnClick="btnSelect_Click" Text="Querry" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtSingleQueery" runat="server" CssClass="auto-style5"></asp:TextBox>
                    <asp:Button ID="btnSingleQureey" runat="server" CssClass="auto-style5" OnClick="btnSingleQureey_Click" Text="SingleQureey" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
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
        </table>
    </form>
</body>
</html>
