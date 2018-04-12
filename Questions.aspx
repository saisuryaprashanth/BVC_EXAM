<%@ page language="C#" autoeventwireup="true" inherits="Questions, App_Web_y1eteq5p" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        Enter the question:
        <asp:TextBox ID="QB" runat="server" Width="500px"></asp:TextBox>
        <br />
        Answer:<asp:TextBox ID="Ans" runat="server"></asp:TextBox>
        <br />
        Option1:<asp:TextBox ID="Option1" runat="server"></asp:TextBox>
        <br />
        Option2:<asp:TextBox ID="Option2" runat="server"></asp:TextBox>
        <br />
        Option3:<asp:TextBox ID="Option3" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
    </form>
</body>
</html>
