<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WfrmUploadDemo.aspx.cs" Inherits="WEBControls_WfrmUploadDemo" %>

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
        }
        .auto-style3 {
            font-size: xx-large;
        }
    </style>
</head>
<body style="font-family: 微軟正黑體; font-size: large">
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">FileUpLoad</td>
            </tr>
            <tr>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="30px" Width="174px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="圖片敘述"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="*" ForeColor="#FF0066"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbDescription" ErrorMessage="圖片描述尚未填寫" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="tbDescription" runat="server" Height="90px" TextMode="MultiLine" Width="160px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="開始上傳" />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="查看照片" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DataList ID="DataList1" runat="server" DataKeyField="PID" DataSourceID="LinqDataSource1" RepeatColumns="5" RepeatDirection="Horizontal">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("PDate") %>'></asp:Label>
                            <br />
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("PPath") %>' Width="300px" />
                            <br />
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("PDescription") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DbDemoDataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="Albumn">
                    </asp:LinqDataSource>
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
        </table>
    
    </div>
    </form>
</body>
</html>
