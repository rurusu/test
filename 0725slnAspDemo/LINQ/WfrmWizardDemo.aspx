<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WfrmWizardDemo.aspx.cs" Inherits="LINQ_WfrmWizardDemo" %>

<%@ Register src="WUCtlCount.ascx" tagname="WUCtlCount" tagprefix="uc1" %>

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
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td>Wizard 使用範例</td>
            </tr>
            <tr>
                <td>
                    <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="3" Height="276px" OnFinishButtonClick="Wizard1_FinishButtonClick" Width="625px">
                        <WizardSteps>
                            <asp:WizardStep runat="server" title="設定行程">
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                    <asp:ListItem>琵琶湖八天七夜</asp:ListItem>
                                    <asp:ListItem>哈爾濱繽紛世界五天六夜</asp:ListItem>
                                    <asp:ListItem>墨爾本十天九夜</asp:ListItem>
                                    <asp:ListItem>高雄澳門周末遊</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" title="預算">
                                <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                                    <asp:ListItem>35000以下</asp:ListItem>
                                    <asp:ListItem>35000~50000</asp:ListItem>
                                    <asp:ListItem>50000~80000</asp:ListItem>
                                    <asp:ListItem>80000以上</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" Title="人數">
                                <table class="auto-style1">
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblAdult0" runat="server" Text="大人"></asp:Label>
                                            <uc1:WUCtlCount ID="WUCtlCountAdult" runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblChild0" runat="server" Text="小孩"></asp:Label>
                                            <uc1:WUCtlCount ID="WUCtlCountChild" runat="server" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" Title="結果">
                                <asp:Label ID="lblMessage" runat="server"></asp:Label>
                            </asp:WizardStep>
                        </WizardSteps>
                    </asp:Wizard>
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
            <tr>
                <td class="auto-style2"></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
