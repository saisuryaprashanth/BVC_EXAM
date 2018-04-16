<%@ page language="C#" autoeventwireup="true" inherits="FLogin, App_Web_2e0fzwos" masterpagefile="~/MasterPage.master" %>
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
            <a href="#" style="color:limegreen; font-size:16px;" onclick="window.open('ForgotPassword.aspx','FP','width=500,height=50,top=300,left=500,fullscreen=no,resizeable=0');">Forgot Password?</a><br />
            <asp:label runat="server" ID="lbl_failed" style="color:red;font-size:18px;"  Visible="false" ></asp:label>
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

