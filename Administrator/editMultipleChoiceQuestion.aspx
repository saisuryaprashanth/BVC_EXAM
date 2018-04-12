<%@ page title="" language="C#" masterpagefile="~/Administrator/AMaster.master" autoeventwireup="true" inherits="Faculty_editMultipleChoiceQuestion, App_Web_53jops5d" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            position: relative;
            min-height: 1px;
            float: left;
            width: -2147483648%;
            left: 25px;
            top: 0px;
            padding-left: 20px;
            padding-right: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <div id="content">
                        <div class="container">
                            <div class="row margin-vert-30">
                               <div class="auto-style9">
                                    <div class="row">
                                        <div class="col-md-12;" style="visibility:visible">
    <h3 style="font-weight:400">Update Question of the exam of the lecture: <asp:Literal runat="server" Visible="false" ID="ltrlForLecture"></asp:Literal></h3>
                                            <label>Question Text</label>
                                            <asp:TextBox required="true" CssClass="form-control" runat="server" ID="questionTxt"></asp:TextBox>
                                             <label>Answer 1</label>
                                             <asp:TextBox required="true" CssClass="form-control" runat="server" ID="answer1"></asp:TextBox>
                                             <label>Answer 2</label>  
                                            <asp:TextBox required="true" CssClass="form-control" runat="server" ID="answer2"></asp:TextBox>  
                                            <label>Answer 3</label>
                                            <asp:TextBox required="true" CssClass="form-control" runat="server" ID="answer3"></asp:TextBox>
                                            <label>Answer 4</label>
                                            <asp:TextBox required="true" CssClass="form-control" runat="server" ID="answer4"></asp:TextBox>
                                            <label>Correct Answer</label>                              
                                            <asp:DropDownList runat="server" CssClass="form-control" ID="correctAnswers">
                                                 <asp:ListItem Value="1">Answer 1</asp:ListItem>
                                                 <asp:ListItem Value="2">Answer 2</asp:ListItem>
                                                 <asp:ListItem Value="3">Answer 3</asp:ListItem>
                                                 <asp:ListItem Value="4">Answer 4</asp:ListItem>
                                            </asp:DropDownList>

               <!-- Student request forms exit -->
                                </div>
                                        </div>
                                     <div style="padding-top:20px" >
                                                <asp:Button runat="server" CssClass="btn btn-success" ID="UpdateQuestionBtn" Text="Update Question" OnClick="UpdateQuestionBtn_Click"  />
                                            </div>
                                       <asp:Literal runat="server" Visible="false" ID="succeedLtrl"></asp:Literal>
                                   </div>
                            </div>
                        </div>
                    </div>


</asp:Content>

