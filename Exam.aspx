<%@ page language="C#" autoeventwireup="true" inherits="Answers, App_Web_lfmdglhe" masterpagefile="~/MasterPage.master" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server" ID="content1">
    <div>
      
        <table class="auto-style4">
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="r"  />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="r" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="r" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
            <asp:RadioButton ID="RadioButton4" runat="server" GroupName="r" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
   
                </td>
            </tr>
        </table>
      
     </div>
        <div>
        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <br />
           
 </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            height: 25px;
            text-align: center;
        }
    </style>
</asp:Content>

