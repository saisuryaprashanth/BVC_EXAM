<%@ page title="manageQuestions" language="C#" masterpagefile="~/Administrator/AMaster.master" autoeventwireup="true" inherits="Faculty_manageQuestions, App_Web_a4pt5lzt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div id="content">
                        <div class="container">
                            <div class="row margin-vert-30">
                                <!-- Main Column -->
                                <div class="col-md-12">
                                    <h2>Manage questions</h2>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Es %>" SelectCommand="select [questionID], [questionText], [answer1], [answer2], [answer3], [answer4], [correctAnswer] FROM [MultipleQuestions] WHERE ([subjectid]=@subjectid)" DeleteCommand="DELETE FROM MultipleQuestions WHERE questionID = @questionID">
        <DeleteParameters>
                <asp:Parameter Name="questionID" />
            </DeleteParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="subjectid" QueryStringField="subjectid" Type="String" />
            </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="QuestionEdit" DataKeyNames="questionID" CssClass="table table-bordered table-hover table-condensed" runat="server" AllowPaging="true" AllowSorting="true" AutoGenerateColumns="false" DataSourceID="SqlDataSource1" OnRowCommand="QuestionEdit_RowCommand">
        <Columns>
                 <asp:BoundField DataField="questionID" HeaderText="Question ID" SortExpression="questionID" />
                <asp:BoundField DataField="questionText" HeaderText="Question Text" SortExpression="questionText" />
                <asp:BoundField DataField="answer1" HeaderText="Answer 1" SortExpression="answer1" />
                <asp:BoundField DataField="answer2" HeaderText="Answer 2" SortExpression="answer2" />
                <asp:BoundField DataField="answer3" HeaderText="Answer 3" SortExpression="answer3" />
                <asp:BoundField DataField="answer4" HeaderText="Answer 4" SortExpression="answer4" />
                <asp:BoundField DataField="correctAnswer" HeaderText="Correct Answer" SortExpression="correctAnswer" />
                <asp:ButtonField HeaderText="Edit" Text="Edit Question" CommandName="surya" >
                    <ControlStyle CssClass="btn btn-success btn-xs" />
                    </asp:ButtonField>
            <asp:CommandField ShowDeleteButton="true" DeleteText="Delete Question" HeaderText="Delete" >
                <ControlStyle CssClass="btn btn-primary btn-xs" />
                </asp:CommandField>
         </Columns>   
    </asp:GridView>

    <asp:Button runat="server" ID="addNewQuestion" CssClass="btn btn-blue" Text="Add new question into the exam" OnClick="addNewQuestion_Click" style="height: 36px" /><br />

    <asp:Label runat="server" CssClass="label label-danger" ID="lblmsg" Visible="false"></asp:Label>
                                    </div>
                                <!-- End Main Column -->
                            </div>
                        </div>
                    </div>
</asp:Content>

