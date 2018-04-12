<%@ page title="" language="C#" masterpagefile="~/Student/SMaster.master" autoeventwireup="true" inherits="Student_joinexam, App_Web_g2jg54xx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="col-md-9">
                                    <h2>Exam Information</h2>
                                    <p><asp:Literal runat="server" ID="ltrlExamDescription"></asp:Literal></p>
                                    <h2>Exam Rules</h2>
                                <p>
                                    <asp:Literal runat="server" ID="ltrlExamRules"></asp:Literal>
                                </p>
                                   <asp:Button runat="server" ID="btnStart" class="btn btn-primary btn-sm" OnClick="btnStart_Click"  Text="I READ THE RULES, LETS GET STARTED"></asp:Button>
                                             <asp:Label runat="server" class="label label-danger" ID="lblwar"  Visible="False"></asp:Label>

                                </div>
</asp:Content>

