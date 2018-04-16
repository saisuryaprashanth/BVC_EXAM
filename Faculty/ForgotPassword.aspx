<%@ page language="C#" autoeventwireup="true" inherits="Faculty_ForgotPassword, App_Web_2e0fzwos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                Enter your registered Email-Id: <asp:TextBox ID="txtemail" runat="server"></asp:TextBox><br />
                <asp:Button ID="btnpwd" runat="server" Text="Get Your Password" OnClick="btnpwd_Click"></asp:Button><br />
                <asp:Label ID="lblmsg" runat="server" ></asp:Label>
            </center>
        </div>
    </form>
</body>
</html>
