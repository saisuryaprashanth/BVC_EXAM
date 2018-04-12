<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="SLogin, App_Web_2wpjolmy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style25 {
            width: 312px;
            text-align: right;
            height: 8px;
        }
        .auto-style12 {
            height: 8px;
            width: 166px;
        }
        .auto-style14 {
            height: 8px;
            width: 227px;
        }
        .auto-style16 {
            width: 697px;
            height: 159px;
            margin-right: 9px;
        }
        .auto-style20 {
            width: 312px;
            text-align: right;
        }
        .auto-style21 {
            width: 227px;
        }
        .auto-style22 {
            width: 312px;
        }
        .auto-style23 {
            width: 166px;
        }
        .lbllogin{
            align-items:center;
            position:absolute;
        }
        .auto-style27 {
            align-items: center;
            position: absolute;
            left: 378px;
            top: 198px;
        }
        .label-danger {
  background-color: #d9534f;
}
.label-danger[href]:hover,
.label-danger[href]:focus {
  background-color: #c9302c;
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="../Stylesheets/animate.css" rel="stylesheet" />
    <link href="../Stylesheets/bootstrap%20-%20Copy.css" rel="stylesheet" />
    <link href="../Stylesheets/font-awesome.css" rel="stylesheet" />
    <link href="../Stylesheets/nexus.css" rel="stylesheet" />
    <link href="../Stylesheets/responsive.css" rel="stylesheet" />
    <asp:Label ID="Label1" runat="server" Text="Student Login" style="font-size:20px" CssClass="auto-style27" ></asp:Label>
    <br />
<br />
<table class="auto-style16">
    <tr>
        <td class="auto-style25" style="font-size:17px">Roll No:</td>
        <td class="auto-style14">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Width="220px" Height="20px" TextMode="Number" placeholder="Enter your Roll No."></asp:TextBox>
        </td>
        <td class="auto-style12">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Font-Size="19px" ErrorMessage="Roll No is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style20" style="font-size:17px">Password:</td>
        <td class="auto-style21">
            <asp:TextBox ID="TextBox2" runat="server" Width="219px" CssClass="form-control" Height="20px" TextMode="Password" placeholder="Enter your Password"></asp:TextBox>
        </td>
        <td class="auto-style23">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox2" Font-Size="19px" ErrorMessage="Password required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style22">
            <asp:Label ID="lblmsg" runat="server" Visible="False" Font-Size="21px" ForeColor="White" CssClass="label label-danger"></asp:Label>
        </td>
        <td class="auto-style21">
            <asp:Button ID="Button1" runat="server" Text="Login" Font-Size="15px" OnClick="Button1_Click" CssClass="btn-green btn" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Reset" Font-Size="15px" OnClick="Button2_Click" CssClass="btn-red btn" CausesValidation="false" />
        </td>
        <td class="auto-style23">&nbsp;</td>
    </tr>
</table>
</asp:Content>

