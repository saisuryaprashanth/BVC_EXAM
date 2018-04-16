<%@ page language="C#" autoeventwireup="true" inherits="FRegistration, App_Web_2e0fzwos" masterpagefile="~/MasterPage.master" title="Faculty Registration" %>


<asp:Content ID="Freg" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../Stylesheets/fregistartion.css" rel="stylesheet" />
    <link href="../Stylesheets/bootstrap%20-%20Copy.css" rel="stylesheet" />

        <div class="auto-style31">
            <asp:Label ID="Label1" runat="server" Font-Size="20px" Text="Faculty Registration"></asp:Label>
            <br />
        </div>
        <table class="auto-style30">
            <tr>
                <td class="auto-style18" style="font-size:17px">Name:</td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox1" CssClass="form-control" Height="18px" runat="server" Width="227px" placeholder="Enter your name"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Font-Size="19px" ControlToValidate="TextBox1" ErrorMessage="User Name is required" ForeColor="Red" ></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style21" style="font-size:17px">ID:</td>
                <td class="auto-style22">
                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"  Width="227px" Height="18px" placeholder="Enter your ID" TextMode="SingleLine"></asp:TextBox>
                </td>
                <td class="auto-style23">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Font-Size="19px" ControlToValidate="TextBox2" ErrorMessage="ID is required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Font-Size="19px" runat="server" ErrorMessage="ID doesn't match" ValidationExpression="^[a-zA-Z0-9\s]{5,5}$" ControlToValidate="TextBox2" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>

                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="RangeValidator" Font-Size="19px" ForeColor="Red" MaximumValue="TS500" MinimumValue="TS001">ID must be written in Capital Letters &amp; Range should not exceed more than &quot;TS500&quot;</asp:RangeValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style32" style="font-size:17px">Email-ID:</td>
                <td>
                    <asp:TextBox ID="txtemail" CssClass="form-control" runat="server" Width="227px" Height="18px" placeholder="Enter Email-id" TextMode="Email"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Font-Size="19px" ControlToValidate="txtemail" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style28" style="font-size:17px">Password:</td>
                <td class="auto-style29">
                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" Height="18px" Width="227px" OnTextChanged="TextBox3_TextChanged" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
                </td>
                <td class="auto-style27">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Font-Size="19px" ControlToValidate="TextBox3" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12" style="font-size:17px">Confirm Password:</td>
                <td class="auto-style13">
                    <asp:TextBox ID="TextBox4" TextMode="Password" CssClass="form-control" Height="18px" runat="server" Width="227px" placeholder="Re-enter Password" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style14">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Font-Size="19px" ControlToValidate="TextBox4" ErrorMessage="Re-enter the password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style16">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Font-Size="15px" CssClass="btn btn-green" Text="Submit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" Font-Size="15px" CssClass="btn btn-red" CausesValidation="False" />
                </td>
                <td class="auto-style17">
                    <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Indigo" Font-Size="19px" CausesValidation="False" OnClick="LinkButton1_Click" PostBackUrl="~/Faculty/FLogin.aspx">Already Registered Login Here</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:Label runat="server" ID="lbl_failed" CssClass="label" ForeColor="DarkRed" Font-Size="18px" Visible="false"></asp:Label>
                    <span style="color:green; font-size:18px; " ><asp:Literal runat="server" Visible="false" ID="succeedltrl"></asp:Literal></span>
                </td>
            </tr>
        </table>
        <br />
        </asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head">
    <style type="text/css">
        .auto-style12 {
            width: 33%;
            height: 11px;
            text-align: right;
        }
        .auto-style13 {
            width: 22%;
            height: 11px;
        }
        .auto-style14 {
            height: 11px;
        width: 100%;
    }
        .auto-style15 {
            width: 33%;
            height: 14px;
        }
        .auto-style16 {
            width: 22%;
            height: 14px;
        }
        .auto-style17 {
            height: 14px;
        width: 100%;
    }
        .auto-style18 {
            width: 33%;
            height: 10px;
            text-align: right;
        }
        .auto-style19 {
            width: 22%;
            height: 10px;
        }
        .auto-style20 {
            height: 10px;
        width: 100%;
    }
        .auto-style21 {
            width: 33%;
            height: 4px;
            text-align: right;
        }
        .auto-style22 {
            width: 22%;
            height: 4px;
        }
        .auto-style23 {
            height: 4px;
        width: 100%;
    }
        .auto-style27 {
            width: 100%;
            height: 5px;
        }
        .auto-style28 {
            width: 33%;
            height: 5px;
            text-align: right;
        }
        .auto-style29 {
            width: 22%;
            height: 5px;
        }
        .auto-style30 {
            width: 87%;
            height: 126px;
        }
        .auto-style31 {
        text-align: justify;
        margin-left: 400px;
    }
        .auto-style32 {
            text-align: right;
        }
    </style>
</asp:Content>

