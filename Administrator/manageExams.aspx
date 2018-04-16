<%@ page title="manageExams" language="C#" masterpagefile="~/Administrator/AMaster.master" autoeventwireup="true" inherits="Faculty_manageExams, App_Web_e5ldnlkb" validaterequest="false" debug="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div id="content">
                        <div class="container">
                            <div class="row margin-vert-30">
                                <!-- Main Column -->
                                <div class="col-md-12">
                                    <h2>Created Exams</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-hover table-condensed table-responsive" DataSourceID="ExamDataSource" OnRowCommand="GridView1_RowCommand" AllowPaging="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" AllowSorting="false">
        <Columns>
            <asp:BoundField DataField="subjectid" HeaderText="Subject ID" SortExpression="subjectid" />
            <asp:BoundField DataField="Lec" HeaderText="Lecture" SortExpression="Lec" />
                                      <asp:BoundField DataField="examDescription" HeaderText="Description" SortExpression="examDescription" />
                                      <asp:BoundField DataField="examRules" HeaderText="Rules" SortExpression="examRules" />
                                      <asp:BoundField DataField="examType" HeaderText="Exam Type" SortExpression="examType" />
            
                                      <asp:BoundField DataField="examDuration" HeaderText="Duration" SortExpression="examDuration"  />
                                       <asp:BoundField DataField="examStart" HeaderText="Start Date" SortExpression="examStart" />
                                       <asp:BoundField DataField="examEnd" HeaderText="End Date" SortExpression="examEnd" />
            
            
                                      <asp:ButtonField ButtonType="Button" Text="Delete Exam" HeaderText="Delete" CommandName="delete">
                                          <ControlStyle CssClass="btn btn-primary btn-xs" />    
                                      </asp:ButtonField>
                                      
                                      <asp:ButtonField CommandName="questions" HeaderText="Questions" Text="Go To Questions">
                                          <ControlStyle CssClass="btn btn-info btn-xs" />
                                      </asp:ButtonField>
                                      <asp:ButtonField ButtonType="Button" HeaderText="Publish to Students" Text="Publish" CommandName="publish">
                                         <ControlStyle CssClass="btn btn-blue btn-xs" />
                                      </asp:ButtonField>
        </Columns>
        <EmptyDataTemplate>
            <h3>There is currently no exam that you have created before.</h3>
                                      <h3><a href="publishedExams.aspx">Check out the published exams</a></h3>
        </EmptyDataTemplate>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle ForeColor="#0066ff" Font-Bold="true" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <asp:Label runat="server" class="label label-danger" ID="ltrlmsg"  Visible="false"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ES %>" ProviderName="<%$ ConnectionStrings:ES.ProviderName %>" SelectCommand="select [subjectid],[examType],[Lec], CONVERT(VARCHAR(10),examStarting,105) as ExamStart, CONVERT(VARCHAR(10),examEnding,105) as amEnd,[examDescription],[examRules],[examDuration] from [Exams] where ([isPublished]=@isPublished)">
        <DeleteParameters>
            <asp:Parameter Name="id" />
        </DeleteParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="isPublished" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="ExamDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ES %>" SelectCommand="select [subjectid],[examType],[Lec], CONVERT(VARCHAR(10),examStarting,105) as ExamStart, CONVERT(VARCHAR(10),examEnding,105) as ExamEnd,[examDescription],[examRules],[examDuration] from [Exams] where ([isPublished]=@isPublished)" DeleteCommand="Delete from Exams where (subjectid=@id)" UpdateCommand="update Exams set examDuration=@examDuration,examDescription=@examDescription,examRules=@examRules,examStarting=@examStarting,examEnding=@examEnding Where (subjectid=@subjectid)" >
        <DeleteParameters>
            <asp:Parameter Name="id" />
        </DeleteParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="isPublished" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="examDuration" />
            <asp:Parameter Name="examDescription" />
            <asp:Parameter Name="examRules" />
            <asp:Parameter Name="examStarting" Type="DateTime" />
            <asp:Parameter Name="examEnding" Type="DateTime" />
            <asp:Parameter Name="subjectid" />
         </UpdateParameters>
    </asp:SqlDataSource>
                                     </div>
                                <!-- End Main Column -->
                            </div>
                        </div>
                    </div>
</asp:Content>

