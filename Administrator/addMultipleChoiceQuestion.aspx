<%@ page title="" language="C#" masterpagefile="~/Administrator/AMaster.master" autoeventwireup="true" inherits="Faculty_addMultipleChoiceQuestion, App_Web_a4pt5lzt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            margin-left: 0px;
        }
        .auto-style10 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 75%;
            margin-left: 23px;
            padding-left: 20px;
            padding-right: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div id="content" class="auto-style9">
                        <div class="container">
                            <div class="row margin-vert-30">
                               <div class="auto-style10">
                                    <div class="row">
                                        <div class="col-md-12;" style="visibility:visible">
    
    <h3 class="title" style="font-weight:400">Add Question to the exam of the lecture: <asp:Literal runat="server" Visible="false" ID="ltrlForLecture"></asp:Literal></h3>
                                            
                                    <h3 class="title" style="font-weight:400">Questions</h3>
   
    <asp:PlaceHolder ID="repeatQuestionBoxex" runat="server"></asp:PlaceHolder>
     <!-- Student request forms exit -->
                                </div>
                                        </div>
                                     <div style="margin-left:100%">
    <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Add Question" OnClick="addQuestionBtn_Click" />
                                           
    </div>
                                            <asp:Literal ID="Literal1" runat="server" Visible="false"></asp:Literal>

    </div>
                            </div>
                        </div>
                    </div>




</asp:Content>

