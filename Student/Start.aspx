<%@ page title="" language="C#" masterpagefile="~/Student/SMaster.master" autoeventwireup="true" inherits="Student_Start, App_Web_chhkj22b" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div>
        <div>
            <asp:Button ID="btnst" runat="server" OnClick="btnst_Click" Text="Start Exam" />
            <br />
            <asp:Label runat="server" ID="question"></asp:Label>
        </div>
        <div>
            <asp:RadioButtonList ID="ans" runat="server" ></asp:RadioButtonList>
        </div>
    </div>
    <div>
        <div>
            <asp:Button runat="server" ID="btnpre" Text="Previous" OnClick="btnpre_Click" Visible="false" />
            <asp:Button runat="server" ID="btnsn"  Text="Save & Next" OnClick="btnsn_Click" Visible="false"/>
            <asp:Button runat="server" ID="btnnxt" Text="Next" OnClick="btnnxt_Click"  Visible="false"/>
        </div>
    </div>
    <div>
        <div>
        </div>
    </div>
    <div class="auto-style9">
                                      
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
            <asp:Button runat="server" Text="Submit" ID="btnsub" Visible="false" />

                                        </div>
    </asp:Content>

