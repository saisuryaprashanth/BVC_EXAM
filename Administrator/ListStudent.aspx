<%@ page title="" language="C#" masterpagefile="~/Administrator/AMaster.master" autoeventwireup="true" inherits="Administrator_ListStudent, App_Web_53jops5d" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="btn-group" role="group">
    <asp:Button ID="Button1" runat="server" Text="Courses" CssClass="btn btn-info" OnClick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Text="Student Information" CssClass="btn btn-info" OnClick="Button2_Click" />
        </div>
    
    <asp:GridView ID="GridView2" runat="server" Width="500px" AutoGenerateColumns="False" CssClass="table table-bordered table-hover table-condensed table-responsive" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="rollno" DataSourceID="SqlDataSource2" AllowSorting="True" Visible="False">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
            <asp:BoundField DataField="rollno" HeaderText="RollNo" ReadOnly="True" SortExpression="rollno" />
            <asp:BoundField DataField="courses" HeaderText="Course" SortExpression="courses" />
            <asp:BoundField DataField="groups" HeaderText="Group" SortExpression="groups" />
            <asp:BoundField DataField="semesters" HeaderText="Semester" SortExpression="semesters" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ES %>" DeleteCommand="DELETE FROM [StudentD] WHERE [rollno] = @rollno" InsertCommand="INSERT INTO [StudentD] ([name], [rollno], [courses], [groups], [semesters]) VALUES (@name, @rollno, @courses, @groups, @semesters)" ProviderName="<%$ ConnectionStrings:ES.ProviderName %>" SelectCommand="SELECT [name], [rollno], [courses], [groups], [semesters] FROM [StudentD]" UpdateCommand="UPDATE [StudentD] SET [name] = @name, [courses] = @courses, [groups] = @groups, [semesters] = @semesters WHERE [rollno] = @rollno">
        <DeleteParameters>
            <asp:Parameter Name="rollno" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="rollno" Type="Decimal" />
            <asp:Parameter Name="courses" Type="String" />
            <asp:Parameter Name="groups" Type="String" />
            <asp:Parameter Name="semesters" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="courses" Type="String" />
            <asp:Parameter Name="groups" Type="String" />
            <asp:Parameter Name="semesters" Type="String" />
            <asp:Parameter Name="rollno" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CssClass="table table-bordered table-hover table-condensed table-responsive" Width="500px" AllowSorting="True" ShowFooter="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="subjectid" DataSourceID="SqlDataSource1" Visible="False">
        <Columns>
            <asp:TemplateField ShowHeader="False" ItemStyle-Width="40px">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:LinkButton ID="InsertButton1" runat="server" OnClick="Insert_Button" CausesValidation="true" CommandName="Insert" Text="Insert"></asp:LinkButton>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Courses" ItemStyle-Width="50px" SortExpression="courses">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("courses") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("courses") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox runat="server" ID="Courseins"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Groups" ItemStyle-Width="150px" SortExpression="groups">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("groups") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("groups") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox runat="server" ID="groupins"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Semesters" ItemStyle-Width="150px" SortExpression="semesters">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("semesters") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("semesters") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox runat="server" ID="semesterins"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Subjects" ItemStyle-Width="250px" SortExpression="subjects">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Width="250px" Text='<%# Bind("subjects") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("subjects") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox runat="server" Width="250px" ID="subjectins"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Subjectid" ItemStyle-Width="150px" SortExpression="subjectid">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("subjectid") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("subjectid") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox runat="server" ID="subidins"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            
            
        </Columns>
        
        
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
       
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fdetails %>" SelectCommand="SELECT * FROM [CDATA]" DeleteCommand="DELETE FROM [CDATA] WHERE [subjectid] = @subjectid" InsertCommand="INSERT INTO [CDATA] ([courses], [groups], [semesters], [subjects], [subjectid]) VALUES (@courses, @groups, @semesters, @subjects, @subjectid)" UpdateCommand="UPDATE [CDATA] SET [courses] = @courses, [groups] = @groups, [semesters] = @semesters, [subjects] = @subjects WHERE [subjectid] = @subjectid">
        <DeleteParameters>
            <asp:Parameter Name="subjectid" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="courses" Type="String" />
            <asp:Parameter Name="groups" Type="String" />
            <asp:Parameter Name="semesters" Type="String" />
            <asp:Parameter Name="subjects" Type="String" />
            <asp:Parameter Name="subjectid" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="courses" Type="String" />
            <asp:Parameter Name="groups" Type="String" />
            <asp:Parameter Name="semesters" Type="String" />
            <asp:Parameter Name="subjects" Type="String" />
            <asp:Parameter Name="subjectid" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
</asp:Content>

