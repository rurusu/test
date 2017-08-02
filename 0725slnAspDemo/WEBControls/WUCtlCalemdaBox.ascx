<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WUCtlCalemdaBox.ascx.cs" Inherits="WEBControls_WUCtlCalemdaBox" %>
<style type="text/css">
    .WUCtlCalemdaBox-style1 {
        width: 62%;
    }
</style>

<table align="center" class="WUCtlCalemdaBox-style1">
    <tr>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server">
            </asp:DropDownList>
            <asp:Label ID="Label2" runat="server" Text="年"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList3" runat="server">
            </asp:DropDownList>
            <asp:Label ID="Label3" runat="server" Text="月"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList4" runat="server">
            </asp:DropDownList>
            <asp:Label ID="Label4" runat="server" Text="日"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

