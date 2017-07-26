<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WformMessage.aspx.cs" Inherits="DataAccecs_WformMessage" %>

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
        }
        .auto-style4 {
            color: #FF6600;
        }
        .auto-style5 {
            font-family: 微軟正黑體;
            font-size: small;
        }
        .auto-style6 {
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="text-align: center">ASP.NET 留言範例</td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbASP_demoMsgTable %>" DeleteCommand="DELETE FROM [MsgTable] WHERE [fid] = @fid" InsertCommand="INSERT INTO [MsgTable] ([fDate], [fUser], [fMessage]) VALUES (@fDate, @fUser, @fMessage)" SelectCommand="SELECT * FROM [MsgTable]" UpdateCommand="UPDATE [MsgTable] SET [fDate] = @fDate, [fUser] = @fUser, [fMessage] = @fMessage WHERE [fid] = @fid">
                        <DeleteParameters>
                            <asp:Parameter Name="fid" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="fDate" Type="String" />
                            <asp:Parameter Name="fUser" Type="String" />
                            <asp:Parameter Name="fMessage" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="fDate" Type="String" />
                            <asp:Parameter Name="fUser" Type="String" />
                            <asp:Parameter Name="fMessage" Type="String" />
                            <asp:Parameter Name="fid" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    <div align ="center">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="fid" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                        <Columns>
                            <asp:TemplateField HeaderText="留言內容" SortExpression="fMessage">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("fMessage") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <table class="auto-style1">
                                        <tr class="auto-style4">
                                            <td>
                                                <asp:Label ID="Label4" runat="server" CssClass="auto-style5" Text='<%# Eval("fDate") %>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label6" runat="server" CssClass="auto-style5" Text='<%# Eval("fUser") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr class="auto-style4">
                                            <td class="auto-style6" colspan="2">
                                                <asp:Label ID="Label7" runat="server" style="color: #000080; font-size: large; font-family: 微軟正黑體" Text='<%# Eval("fMessage") %>'></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EmptyDataTemplate>
                            <table class="auto-style1">
                                <tr class="auto-style4">
                                    <td>
                                        <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text='<%# Eval("fDate") %>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text='<%# Eval("fUser") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="Label3" runat="server" style="color: #000080; font-size: large; font-family: 微軟正黑體" Text='<%# Eval("fMessage") %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>
                    </div>
                </td>
            </tr>
        </table>
    
    </div>
        <div align="center">
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="fid" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="319px" style="color: #800000; font-size: medium; font-family: 微軟正黑體" Width="272px">
            <EditItemTemplate>
                fid:
                <asp:Label ID="fidLabel1" runat="server" Text='<%# Eval("fid") %>' />
                <br />
                fDate:
                <asp:TextBox ID="fDateTextBox" runat="server" Text='<%# Bind("fDate") %>' />
                <br />
                fUser:
                <asp:TextBox ID="fUserTextBox" runat="server" Text='<%# Bind("fUser") %>' />
                <br />
                fMessage:
                <asp:TextBox ID="fMessageTextBox" runat="server" Text='<%# Bind("fMessage") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </EditItemTemplate>
            <InsertItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td colspan="2">留言人</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="fUserTextBox" runat="server" Text='<%# Bind("fUser") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="fMessageTextBox" runat="server" Text='<%# Bind("fMessage") %>' TextMode="MultiLine" />
                        </td>
                    </tr>
                </table>
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="送出留言" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>
            <ItemTemplate>
                fid:
                <asp:Label ID="fidLabel" runat="server" Text='<%# Eval("fid") %>' />
                <br />
                fDate:
                <asp:Label ID="fDateLabel" runat="server" Text='<%# Bind("fDate") %>' />
                <br />
                fUser:
                <asp:Label ID="fUserLabel" runat="server" Text='<%# Bind("fUser") %>' />
                <br />
                fMessage:
                <asp:Label ID="fMessageLabel" runat="server" Text='<%# Bind("fMessage") %>' />
                <br />

                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新增" />

            </ItemTemplate>
        </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:dbASP_demoMsgTable %>" DeleteCommand="DELETE FROM [MsgTable] WHERE [fid] = @fid" InsertCommand="INSERT INTO [MsgTable] ([fDate], [fUser], [fMessage]) VALUES (@fDate, @fUser, @fMessage)" SelectCommand="SELECT * FROM [MsgTable]" UpdateCommand="UPDATE [MsgTable] SET [fDate] = @fDate, [fUser] = @fUser, [fMessage] = @fMessage WHERE [fid] = @fid">
                <DeleteParameters>
                    <asp:Parameter Name="fid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="fDate" Type="String" />
                    <asp:Parameter Name="fUser" Type="String" />
                    <asp:Parameter Name="fMessage" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="fDate" Type="String" />
                    <asp:Parameter Name="fUser" Type="String" />
                    <asp:Parameter Name="fMessage" Type="String" />
                    <asp:Parameter Name="fid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
