<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WformNewsList.aspx.cs" Inherits="DataAccecs_WformNewsList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            text-align: center;
            font-family: 微軟正黑體;
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div class="auto-style3">
            ASP.NET新聞公告範例</div>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbASP_NEWs %>" DeleteCommand="DELETE FROM [News] WHERE [fid] = @fid" InsertCommand="INSERT INTO [News] ([fSubject], [fDate], [fContent]) VALUES (@fSubject, @fDate, @fContent)" SelectCommand="SELECT * FROM [News] WHERE ([fid] = @fid)" UpdateCommand="UPDATE [News] SET [fSubject] = @fSubject, [fDate] = @fDate, [fContent] = @fContent WHERE [fid] = @fid">
                        <DeleteParameters>
                            <asp:Parameter Name="fid" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="fSubject" Type="String" />
                            <asp:Parameter Name="fDate" Type="String" />
                            <asp:Parameter Name="fContent" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:QueryStringParameter Name="fid" QueryStringField="nid" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="fSubject" Type="String" />
                            <asp:Parameter Name="fDate" Type="String" />
                            <asp:Parameter Name="fContent" Type="String" />
                            <asp:Parameter Name="fid" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="fid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField ConvertEmptyStringToNull="False" HeaderText="fDate" SortExpression="fDate">
                                <EditItemTemplate>
                                    <asp:DynamicControl ID="DynamicControl1" runat="server" DataField="fDate" Mode="Edit" />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:DynamicControl ID="DynamicControl1" runat="server" DataField="fDate" Mode="ReadOnly" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="新聞標題" SortExpression="fContent">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("fContent") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("fContent") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="新聞內容" ShowHeader="False">
                                <ItemTemplate>
                                    <a href="WformNewsContent.aspx">觀看</a>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
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
                </td>
            </tr>
            <tr>
                <td>
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="fid" DataSourceID="SqlDataSource1" DefaultMode="Insert">
                        <EditItemTemplate>
                            fid:
                            <asp:Label ID="fidLabel1" runat="server" Text='<%# Eval("fid") %>' />
                            <br />
                            fSubject:
                            <asp:TextBox ID="fSubjectTextBox" runat="server" Text='<%# Bind("fSubject") %>' />
                            <br />
                            fDate:
                            <asp:TextBox ID="fDateTextBox" runat="server" Text='<%# Bind("fDate") %>' />
                            <br />
                            fContent:
                            <asp:TextBox ID="fContentTextBox" runat="server" Text='<%# Bind("fContent") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <table class="auto-style1">
                                <tr>
                                    <td>預計發布日期</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="fDateTextBox" runat="server" Text='<%# Bind("fDate") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td>新聞標題</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="fSubjectTextBox" runat="server" Text='<%# Bind("fSubject") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="fContentTextBox" runat="server" Height="265px" Text='<%# Bind("fContent") %>' TextMode="MultiLine" Width="212px" />
                                    </td>
                                </tr>
                            </table>
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="發布新聞" />
                            &nbsp;
                        </InsertItemTemplate>
                        <ItemTemplate>
                            fid:
                            <asp:Label ID="fidLabel" runat="server" Text='<%# Eval("fid") %>' />
                            <br />
                            fSubject:
                            <asp:Label ID="fSubjectLabel" runat="server" Text='<%# Bind("fSubject") %>' />
                            <br />
                            fDate:
                            <asp:Label ID="fDateLabel" runat="server" Text='<%# Bind("fDate") %>' />
                            <br />
                            fContent:
                            <asp:Label ID="fContentLabel" runat="server" Text='<%# Bind("fContent") %>' />
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新增" />
                        </ItemTemplate>
                    </asp:FormView>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
