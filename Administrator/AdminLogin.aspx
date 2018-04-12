<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="AdminLogin, App_Web_iorwrcxi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="../Stylesheets/Login.css" rel="stylesheet" />
    <script src="../Scripts/Mas.js"></script>
    <div class="text-input">
  <input type="text" id="input1" placeholder="Enter Id here!" class="" required="required" name="username" >
  <label for="input1" class="auto-style5">Email-ID</label>
</div>
    <div class="text-input">
  <input type="password" id="input2" placeholder="Enter Password here!" class="" required="required" name="password">
  <label for="input2" class="label">Password</label>
</div>
    <div>
        <div>
        
        <asp:Button ID="submit" Text="Login" runat="server" CssClass="btn side" OnClick="submit_Click" style="left: 219px; top: 398px" />
            <br />
            <asp:Label ID="Label1" runat="server" Font-Size="19px" ForeColor="Red" Text="Login Failed" Visible="False"></asp:Label>
            <br />
            <br />
            <br />
            <br />
        </div>
    </div>

</asp:Content>

