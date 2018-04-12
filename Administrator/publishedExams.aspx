<%@ page title="" language="C#" masterpagefile="~/Administrator/AMaster.master" autoeventwireup="true" inherits="Administrator_publishedExams, App_Web_53jops5d" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div id="content">
                        <div class="container">
                            <div class="row margin-vert-30">
                                <!-- Main Column -->
                                <div class="col-md-12">
                                    <h2>Published Exams</h2>
       
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-hover table-condensed table-responsive" CellPadding="4" DataKeyNames="subjectid" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" OnRowCommand="GridView2_RowCommand">
    <Columns>
        <asp:BoundField DataField="examStarting" HeaderText="examStarting" SortExpression="examStarting" DataFormatString="{0:d}" />
        <asp:BoundField DataField="examEnding" HeaderText="examEnding" SortExpression="examEnding" DataFormatString="{0:d}" />
        <asp:BoundField DataField="examDuration" HeaderText="examDuration" SortExpression="examDuration" />
        <asp:BoundField DataField="numofQuestions" HeaderText="numofQuestions" SortExpression="numofQuestions" />
        <asp:BoundField DataField="examType" HeaderText="Exam Type" SortExpression="examType" />
        <asp:BoundField DataField="subjectid" HeaderText="subjectid" ReadOnly="True" SortExpression="subjectid" />
        <asp:BoundField DataField="examDescription" HeaderText="examDescription" SortExpression="examDescription" />
        <asp:ButtonField ButtonType="Button" Text="Delete Exam" HeaderText="Delete" CommandName="delete">
                                          <ControlStyle CssClass="btn btn-primary btn-xs" />
                                      </asp:ButtonField>
                                      
    </Columns>
        <EditRowStyle BackColor="#999999" />
    <EmptyDataTemplate>
        <h3>There is currently no exam that you have published before.</h3>
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

<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ES %>" ProviderName="<%$ ConnectionStrings:ES.ProviderName %>" SelectCommand="SELECT DISTINCT  [examStarting], [examEnding], [examDuration], [numofQuestions],[examType], [subjectid], [examDescription] FROM [Exams] WHERE ([isPublished] = @isPublished)">
    <SelectParameters>
        <asp:Parameter DefaultValue="1" Name="isPublished" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
                                    </div>
                                <!-- End Main Column -->
                            </div>
                        </div>
                    </div>
</asp:Content>

