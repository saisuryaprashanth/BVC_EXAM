<%@ page title="" language="C#" masterpagefile="~/Administrator/AMaster.master" autoeventwireup="true" inherits="Faculty_manageClassicQuestions, App_Web_53jops5d" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div id="content">
                        <div class="container">
                            <div class="row margin-vert-30">
                                <!-- Main Column -->
                                <div class="col-md-12">
                                    <h2>Manage questions</h2>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Es %>" SelectCommand="Select [classicQuestionID],[questionText],[correctAnswer] from [ClassicQuestions] where ([subjectid]=@subjectid)" DeleteCommand="delete from ClassicQuestions where classicQuestionID= @classicQuestionID">
        <DeleteParameters>
            <asp:Parameter Name="classicQuestionID" />
        </DeleteParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="subjectid" QueryStringField="subjectid" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:GridView ID="ClassicQuestionEdit" DataKeyNames="classicQuestionID" runat="server" AllowPaging="true" AllowSorting="true" AutoGenerateColumns="false" DataSourceID="SqlDataSource1" OnRowCommand="ClassicQuestionEdit_RowCommand">
        <Columns>
            <asp:BoundField DataField="classicQuestionID" HeaderText="Question Text" SortExpression="classicQuestionID" />
            <asp:BoundField DataField="questionText" HeaderText="Question Text" SortExpression="questionText" />
            <asp:BoundField DataField="correctAnswer" HeaderText="Correct Answer" SortExpression="correctAnswer" />
            <asp:ButtonField HeaderText="Edit" Text="Edit Question" CommandName="surya" >
            <ControlStyle CssClass="btn btn-success btn-xs" />
                </asp:ButtonField>
            <asp:CommandField ShowDeleteButton="true" DeleteText="Delete Question" HeaderText="Delete">
                <ControlStyle CssClass="btn btn-primary btn-xs" />
                </asp:CommandField>
        </Columns>
    </asp:GridView>

    <asp:Button runat="server" ID="addNewQuestion" CssClass="btn btn-blue" Text="Add new question into this exam" OnClick="addNewQuestion_click" /><br />

    <asp:Label runat="server" ID="ltrlmsg" CssClass="label label-danger" Visible="false"></asp:Label>
</div>
                                <!-- End Main Column -->
                            </div>
                        </div>
                    </div>

</asp:Content>

