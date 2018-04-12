<%@ page title="" language="C#" masterpagefile="~/Faculty/Fdefaul.master" autoeventwireup="true" inherits="Faculty_FProfile, App_Web_em5pifkp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style9 {
            text-align: right;
            width: 447px;
        }
        .auto-style10 {
            margin-left: 40px;
            width: 233px;
        }
        .auto-style11 {
            width: 233px;
        }
        .auto-style12 {
            margin-right: 4;
        }
        .auto-style13 {
            text-align: right;
            width: 362px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
        <asp:Button ID="btnpass" runat="server" Text="Change Password" CssClass="btn-info" OnClick="btnpass_Click" CausesValidation="false" />
    <asp:Panel ID="pnlpass" runat="server" Visible="false">
        <table class="nav-justified">
            <tr>
                <td class="auto-style13">Employee ID:</td>
                <td class="auto-style10">
                    <asp:Label ID="lblr" CssClass="logo-text" runat="server" Text=""></asp:Label>
                </td>
                <td class="text-left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">Current Password:</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtoldpass" runat="server" CssClass="auto-style12 form-control" Width="278px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="text-left">
                    <asp:RequiredFieldValidator ID="rfvCPass" runat="server" ControlToValidate="txtoldpass" ForeColor="Red" ErrorMessage="Current Password is required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">New Password:</td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtnewpass" runat="server" Width="278px" CssClass="form-control" TextMode="Password"></asp:TextBox>
                </td>
                <td class="text-left">
                    <asp:RequiredFieldValidator ID="rfvNPass" runat="server" ForeColor="Red" ErrorMessage="Please enter a new password" ControlToValidate="txtnewpass"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Conform Password:</td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtcpass" runat="server" Width="278px" CssClass="form-control" TextMode="Password"></asp:TextBox>
                </td>
                <td class="text-left">
                    <asp:CompareValidator ID="CVPass" runat="server" ForeColor="Red" ErrorMessage="Password doesn't match" ControlToCompare="txtnewpass" ControlToValidate="txtcpass"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style11"><BotDetect:WebFormsCaptcha ID="captchabox" runat="server" HelpLinkEnabled="false" /></td>
                <td class="text-left">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">Please enter captcha here:</td>
                <td class="auto-style11"><asp:TextBox ID="txtcaptcha" style="text-transform:uppercase" Width="278px" CssClass="form-control" runat="server" ></asp:TextBox></td>
                <td class="text-left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Captcha is required" ForeColor="Red" ControlToValidate="txtcaptcha"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="lblwari" runat="server" Text="" Visible="false"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:Button ID="btnchange" runat="server" Text="Submit" CssClass="btn-aqua" CausesValidation="true" OnClick="btnchange_Click" />
                </td>
                <td class="text-left">&nbsp;</td>
            </tr>
        </table>

    </asp:Panel>

</asp:Content>

