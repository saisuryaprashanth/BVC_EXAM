<%@ page title="" language="C#" masterpagefile="~/Administrator/AMaster.master" autoeventwireup="true" inherits="Faculty_addClassicQuestion, App_Web_a4pt5lzt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div id="content">
                        <div class="container">
                            <div class="row margin-vert-30">
                               <div class="col-md-9">
                                    <div class="row">
                                        <div class="col-md-12;" style="visibility:visible">
    
        <h3 class="title" style="font-weight:400">Add Question to the exam of the lecture: <asp:Literal runat="server" Visible="false" ID="ltrlForLecture"></asp:Literal></h3>
        <Label>Question Text</Label>
        <asp:TextBox required="true" CssClass="form-control" runat="server" ID="questionTxt"></asp:TextBox>
        <label>Answer</label>
        <asp:TextBox required="true" CssClass="form-control" runat="server" ID="answer"></asp:TextBox>

     <!-- Student request forms exit -->
                                </div>
                                        </div>
                                     <div style="padding-top:20px" >
                                         <asp:Button runat="server" ID="addQuestionBtn" CssClass="btn btn-success" Text="Add Question" OnClick="addQuestionBtn_Click" />
    </div>
    <asp:Literal runat="server" Visible="false" ID="succeedLtrl"></asp:Literal>
 </div>
                            </div>
                        </div>
                    </div>
</asp:Content>

