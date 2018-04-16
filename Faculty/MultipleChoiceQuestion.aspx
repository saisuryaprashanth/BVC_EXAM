<%@ page title="" language="C#" masterpagefile="~/Faculty/Fdefaul.master" autoeventwireup="true" inherits="Faculty_MultipleChoiceQuestion, App_Web_atxgkjz1" debug="true" validaterequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 72%;
            left: 25px;
            top: 0px;
            padding-left: 20px;
            padding-right: 20px;
        }
    .auto-style12 {
        position: relative;
        min-height: 1px;
        float: left;
        width: 972px;
        left: 25px;
        top: 0px;
        padding-left: 20px;
        padding-right: 20px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <link href="../Stylesheets/animate.css" rel="stylesheet" />
    <link href="../Stylesheets/bootstrap.css" rel="stylesheet" />
    <link href="../Stylesheets/font-awesome.css" rel="stylesheet" />
    <link href="../Stylesheets/nexus.css" rel="stylesheet" />
    <link href="../Stylesheets/responsive.css" rel="stylesheet" />
     <div id="content">
                        <div class="container">
                            <div class="row margin-vert-30">
                               <div class="auto-style12">
                                    <div class="row">
                                        <div class="col-md-12;" style="visibility:visible">
                                    <h3 class="title" style="font-weight:400">Questions</h3>
   
    <asp:PlaceHolder ID="repeatQuestionBoxex" runat="server"></asp:PlaceHolder>

     <!-- Student request forms exit -->
                                </div>
                                        </div>
                                     <div style="margin-left:100%">
    <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Add Question" OnClick="Button1_Click" />
                                           
    </div>
                                            <asp:Literal ID="succeedLtrl" runat="server" Visible="false"></asp:Literal>

    </div>
                            </div>
                        </div>
                    </div>
</asp:Content>

