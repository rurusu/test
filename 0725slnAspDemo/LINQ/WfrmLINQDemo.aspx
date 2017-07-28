<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WfrmLINQDemo.aspx.cs" Inherits="LINQ_WfrmLINQDemo" %>

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
            font-family: "Courier New", Courier, monospace;
            font-size: xx-large;
        }
        .auto-style3 {
            font-family: verdana, Geneva, Tahoma, sans-serif;
            font-size: large;
        }
        .auto-style4 {
            font-family: 微軟正黑體;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">LINQ Demo</td>
            </tr>
            <tr>
                <td class="auto-style4">客戶編號</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="txtID" runat="server" CssClass="auto-style4"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">姓名</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="txtName" runat="server" CssClass="auto-style4"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">電話</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="txtPhone" runat="server" CssClass="auto-style4"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">郵件</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="txtMail" runat="server" CssClass="auto-style4"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">地址</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="txtAddress" runat="server" CssClass="auto-style4"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblShow" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="btnNew" runat="server" OnClick="btnNew_Click" style="font-family: 微軟正黑體; font-size: large" Text="新增" />
                    <asp:Button ID="btnDelete" runat="server" style="font-family: 微軟正黑體; font-size: large" Text="刪除" />
                    <asp:Button ID="btnModify" runat="server" style="font-family: 微軟正黑體; font-size: large" Text="修改" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSelect" runat="server" OnClick="btnSelect_Click" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: large" Text="Select" />
                    <asp:Button ID="btnWhere" runat="server" CssClass="auto-style3" OnClick="btnWhere_Click" Text="Where" />
                    <asp:Button ID="btnForeach" runat="server" CssClass="auto-style3" OnClick="btnForeach_Click" Text="ForEach" />
                    <asp:Button ID="btnWhere2" runat="server" CssClass="auto-style3" Text="where2" OnClick="btnWhere2_Click" />
                    <asp:Button ID="btnOreder" runat="server" CssClass="auto-style3" Text="Order" OnClick="btnOreder_Click" />
                    <asp:Button ID="btnTake" runat="server" CssClass="auto-style3" Text="Take" OnClick="btnTake_Click" />
                    <asp:Button ID="btnSkip" runat="server" CssClass="auto-style3" Text="Skip" OnClick="btnSkip_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
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
