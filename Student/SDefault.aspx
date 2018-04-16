<%@ page title="" language="C#" masterpagefile="~/Student/SMaster.master" autoeventwireup="true" inherits="SDefault, App_Web_chhkj22b" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <link href="Stylesheets/SHome.css" rel="stylesheet" />
    <div runat="server">
        <asp:ListView ID="examLstView" runat="server">
            <ItemTemplate>
                <a style="color:green; font-size:26px;">Now available< </a><%#Eval("examStarting","{0:d}")+" - "+ Eval("examEnding","{0:d}") %>>
                <p>
                    <small style="font-size:18px;"><a>Exam Description: </a><%#Eval("examDescription") %></small><br />
                    <a href='<%# string.Format("joinexam.aspx?subjectid={0}&lecture={1}",Eval("subjectID"),Eval("Lec")) %>' style="font-size:18px;" id="btn_JoinExam" >Join Now</a>
                </p>
                
            </ItemTemplate>
            <EmptyDataTemplate>
                                                    <h3>Hi! This is your exam dashboard.</h3>
                                  <h5>You have no upcoming exams yet. You can edit your profile using Profile tab.</h5>
                                                </EmptyDataTemplate>
        </asp:ListView>
        
    </div>
  
</asp:Content>

