<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="SRegistration, App_Web_r44h2ogr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style7 {
        height: 26px;
    }
    .auto-style8 {
        width: 200px;
    }
    .auto-style9 {
        height: 26px;
        width: 201px;
    }
    .auto-style10 {
        width: 201px;
        text-align: justify;
    }
        .auto-style11 {
            width: 337px;
        }
        .auto-style12 {
            height: 26px;
            width: 337px;
            text-align: right;
        }
        .auto-style13 {
            width: 337px;
            text-align: right;
        }
        .auto-style14 {
            width: 201px;
            height: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="../Stylesheets/bootstrap%20-%20Copy.css" rel="stylesheet" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" style="font-size:20px" Text="Student Registration"></asp:Label>
<table class="auto-style4">
    <tr>
        <td class="auto-style13" style="font-size:17px">Name:</td>
        <td class="auto-style14">
            <asp:TextBox ID="TextBox1" runat="server" Width="193px" CssClass="form-control" placeholder="Enter your Full Name" Height="18px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name cannot be blank" ForeColor="Red" Font-Size="19px" ControlToValidate="TextBox1" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ForeColor="Red" Font-Size="19px" ErrorMessage="Provide a valid Name" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style13" style="font-size:17px">Roll No.:</td>
        <td class="auto-style14">
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter your Roll No." Width="192px" CssClass="form-control" Height="18px" TextMode="Number"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Roll No cannot be blank" Font-Size="19px" ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style13" style="font-size:17px">Course</td>
        <td class="auto-style14">
            <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" Height="32px" CssClass="form-control" DataSourceID="SqlDataSource2" DataTextField="courses" DataValueField="courses" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged" AppendDataBoundItems="True">
                <asp:ListItem Value="Select Course" Selected="True"></asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ES %>" ProviderName="<%$ ConnectionStrings:ES.ProviderName %>" SelectCommand="SELECT DISTINCT [courses] FROM [CDATA] ORDER BY [courses] DESC"></asp:SqlDataSource>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Height="32px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="groups" DataValueField="groups" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Visible="False" AppendDataBoundItems="True">
                <asp:ListItem Value="Select Group" Selected="True"></asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ES %>" ProviderName="<%$ ConnectionStrings:ES.ProviderName %>" SelectCommand="SELECT DISTINCT [groups] FROM [CDATA] WHERE ([courses] = @courses)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList5" Name="courses" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Select the Course" ForeColor="Red" Font-Size="19px" ControlToValidate="DropDownList5" InitialValue="Select Course"></asp:RequiredFieldValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Please Select Group" Font-Size="19px" ForeColor="Red" InitialValue="Select Group"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style12" style="font-size:17px">Sem:</td>
        <td class="auto-style9">
            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" Height="32px" CssClass="form-control" DataSourceID="SqlDataSource3" DataTextField="semesters" DataValueField="semesters" Visible="False" AppendDataBoundItems="True">
                <asp:ListItem Value="Select Semester" Selected="True"></asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ES %>" ProviderName="<%$ ConnectionStrings:ES.ProviderName %>" SelectCommand="SELECT DISTINCT [semesters] FROM [CDATA] WHERE (([courses] = @courses) AND ([groups] = @groups))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList5" Name="courses" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="groups" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td class="auto-style7">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Semester must be Selected" ForeColor="Red" Font-Size="19px" ControlToValidate="DropDownList3" InitialValue="Select Semester"></asp:RequiredFieldValidator>
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style13">Email:</td>
        <td>
            <asp:TextBox ID="txtemail" runat="server" Width="190px" CssClass="form-control" placeholder="Enter Email-id" Height="18px" TextMode="Email"></asp:TextBox>
        </td>
        <asp:RequiredFieldValidator ID="rfvemail" runat="server" ErrorMessage="Enter Email Id" ForeColor="Red" Font-Size="19px" ControlToValidate="txtemail" ></asp:RequiredFieldValidator>
    </tr>
    <tr>
        <td class="auto-style13" style="font-size:17px">Password:</td>
        <td class="auto-style14">
            <asp:TextBox ID="TextBox3" runat="server" Width="190px" CssClass="form-control" placeholder="Enter Password" Height="18px" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter the password" ForeColor="Red" Font-Size="19px" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style13" style="font-size:17px">Confirm Password:</td>
        <td class="auto-style14">
            <asp:TextBox ID="TextBox4" runat="server" Width="190px" CssClass="form-control" placeholder="Re-enter Password" Height="18px" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Re-Enter the password" ForeColor="Red" Font-Size="19px" ControlToValidate="TextBox4" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password doesn't match" ForeColor="Red" ControlToCompare="TextBox4" Font-Size="19px" ControlToValidate="TextBox3"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">
            <asp:Label ID="lblcreate" ForeColor="OrangeRed" runat="server" Visible="False"></asp:Label>
        </td>
        <td class="auto-style10">
            <asp:Button ID="Button" runat="server" Text="Submit" OnClick="Button_Click" CssClass="btn btn-green" Font-Size="15px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Clear" CausesValidation="False" CssClass="btn btn-red" Font-Size="15px" OnClick="Button1_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
<br />
</asp:Content>

