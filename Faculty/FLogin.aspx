<%@ page language="C#" autoeventwireup="true" inherits="FLogin, App_Web_g1dibf4w" masterpagefile="~/MasterPage.master" %>
<asp:Content ID="Content1" runat="server"  ContentPlaceHolderID="head">
       
</asp:Content>

<asp:Content ID="login" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <link href="../Stylesheets/fregistartion.css" rel="stylesheet" />
    <link href="../Stylesheets/flog.css" rel="stylesheet" />
<script src="../Scripts/prefixfree.min.js"></script>
          
<div class="body"></div>
		<div class="grad"></div>
		<div class="header">
			<div>Faculty<span>Login</span></div>
		</div>
		<br>
		<div class="login">
				<input type="text" placeholder="Enter ID" name="text" required="required"><br>
				<input type="password" placeholder="Enter Password" name="password" required="required"><br>
            <asp:Button Text="Login" runat="server" ID="button"  CssClass="button" OnClick="button_Click" /><br />
            <asp:Literal runat="server" ID="lbl_failed" Visible="false" ></asp:Literal>
		</div>    

       
       


    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

