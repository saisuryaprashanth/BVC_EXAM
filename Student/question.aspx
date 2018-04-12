<%@ page title="question" language="C#" masterpagefile="~/Student/SQuestion.master" autoeventwireup="true" inherits="Student_question, App_Web_g2jg54xx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .auto-style9 {
            float: right;
            margin-top: 0px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-md-2"  style="float:right; top:10%; right:0px;">                                            
                                         <div class="blog-tags" style="float:right">
                                          <h3 class="title" style="font-weight:400"></h3>
                                           <div style="font-weight:600" class=" text-danger" id="showtime">
                                               <asp:ScriptManager ID="sp" runat="server"></asp:ScriptManager>
                                               <asp:Timer ID="timer" runat="server" Interval="1000" OnTick="timer_tick"></asp:Timer>

                                               <asp:UpdatePanel ID="up" runat="server" UpdateMode="Conditional">
                                                   <ContentTemplate>
                                                       <asp:Literal ID="ltlmsg" runat="server"></asp:Literal>
                                                   </ContentTemplate>
                                                   <Triggers>
                                                 <asp:AsyncPostBackTrigger ControlID="timer" EventName="tick" /> 
                                                   </Triggers>
                                               </asp:UpdatePanel>
                                                   
                                             </div>                                     
                                             
                                           
                                          <h3 class="title" style="margin-top:10px; font-weight:500">Exam Info:</h3> 
                                            <p style="margin-top:-10px">Lecture:<asp:Literal runat="server" ID="ltrlLecture"></asp:Literal></p>
                                             <p style="margin-top:-10px">Duration:<asp:Literal runat="server" ID="ltrlDuration"></asp:Literal></p>
                                             <p style="margin-top:-10px">Type:<asp:Literal runat="server" ID="ltrlExamType"></asp:Literal></p>
                                              <h3 class="title" style="margin-top:10px; color:red; font-weight:500">Submit</h3> 
                                           <asp:Button ID="submitBtn"  CssClass="btn btn-danger" runat="server" Text="Submit Exam" OnClick="submitBtn_Click" />

                                        </div>
                                      
                                       

                                   </div>
    <asp:button runat="server" id="UploadButton" text="" style="display: none;" onclick="TimeUp" />
    <br />
    <div style="width:1000px">
    <asp:ListView runat="server" ID="lstQuestions" Visible="false" GroupPlaceholderID="groupPlaceHolder1"
        ItemPlaceholderID="itemPlaceHolder1" OnPagePropertiesChanging="OnPagePropertiesChanging" >
                               <LayoutTemplate>
                                   <asp:PlaceHolder runat="server" ID="groupPlaceHolder1" >
                                       </asp:PlaceHolder>

                                   <asp:DataPager ID="DataPager1" runat="server" PagedControlID="lstQuestions" PageSize="1">
                                       <Fields>
                                           <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="true" ShowPreviousPageButton="true" ShowNextPageButton="true" />

                                       </Fields>
                                   </asp:DataPager>
                               </LayoutTemplate>
        <GroupTemplate>
            <asp:PlaceHolder runat="server" ID="itemPlaceHolder1"></asp:PlaceHolder>
        </GroupTemplate>

                                 <ItemTemplate>
                                   <%-- <h3 class="title" >Question: <%#Eval("RowNumber") %></h3> --%>
                                     <p><asp:Label runat="server" Text="Question"></asp:Label><br /><%#Eval("questionText") %><br />
                                     <asp:Image runat="server" Height="100px" Width="900px" ImageUrl='<%# Eval("questionImage")%>' />
                                     
                                    <p>
                                        <asp:RadioButton runat="server" Font-Bold="false" GroupName='<%#Eval("questionID") %>'  ID="answerA" Text=<%# Eval("answer1") %>/>
                                    </p>
                                     <p>
                                        <asp:RadioButton runat="server" Font-Bold="false" GroupName='<%#Eval("questionID") %>'  ID="answerB" Text=<%#Eval("answer2") %>/>
                                    </p>
                                     <p>
                                        <asp:RadioButton runat="server" Font-Bold="false"  GroupName='<%#Eval("questionID") %>'  ID="answerC" Text=<%#Eval("answer3") %>/>
                                    </p>
                                     <p>
                                        <asp:RadioButton runat="server" Font-Bold="false"  GroupName='<%#Eval("questionID") %>'  ID="answerD" Text=<%#Eval("answer4") %>/>
                                    </p>
                                                                              
                                     
                                </ItemTemplate>
                                 </asp:ListView>
        </div>
    <div style="width:1000px">

    <asp:ListView runat="server" ID="lstClassicQuestion" Visible="false" GroupPlaceholderID="groupPlaceHolder2"
        ItemPlaceholderID="itemPlaceHolder2" OnPagePropertiesChanging="OnPagePropertiesChanging" >
         <LayoutTemplate>
                                   <asp:PlaceHolder runat="server" ID="groupPlaceHolder2">
                                       </asp:PlaceHolder>

                                   <asp:DataPager ID="DataPager1" runat="server" PagedControlID="lstClassicQuestion" PageSize="1">
                                       <Fields>
                                           <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="true" ShowPreviousPageButton="true" ShowNextPageButton="true" />

                                       </Fields>
                                   </asp:DataPager>
                               </LayoutTemplate>
        <GroupTemplate>
            <asp:PlaceHolder runat="server" ID="itemPlaceHolder2"></asp:PlaceHolder>
        </GroupTemplate>
                               

                                 <ItemTemplate>
                                  <%--<h3 class="title" >Question: <%# Eval("RowNumber") %></h3>--%> 
                                     <p><b><%#Eval("questionText") %></b></p>
                                    <p>
                                       <b> <label style="color:blue">Your answer:</label></b>
                                        <asp:Textbox runat="server"  ID="txtAnswer"  QuestionID='<%#Eval("classicQuestionID") %>' class="form-control"></asp:Textbox>
                                    </p>
                                </ItemTemplate>
                                 </asp:ListView>
        </div>
                                       

</asp:Content>

