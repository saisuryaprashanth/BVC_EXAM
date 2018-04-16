<%@ page title="" language="C#" masterpagefile="~/Administrator/AMaster.master" autoeventwireup="true" inherits="Administrator_ListFaculty, App_Web_a4pt5lzt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <link href="../Stylesheets/Adefault.css" rel="stylesheet" />
<div>
    <asp:Button ID="Approv" runat="server" OnClick="Approv_Click" Text="Approval" CssClass="btn btn-lg" />
    <asp:Button ID="RegFac" runat="server" OnClick="RegFac_Click" CssClass="btn btn-lg" PostBackUrl="~/Administrator/ListFaculty.aspx" Text="Registered Faculty" />
    <asp:GridView ID="GridView2" runat="server" Width="500px" AutoGenerateColumns="False" CssClass="table table-bordered table-hover table-condensed table-responsive" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="fid" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
        <Columns>
            <asp:TemplateField HeaderText="Name" SortExpression="name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="FID" SortExpression="fid">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("fid") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("fid") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email" SortExpression="email">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
                <asp:ButtonField ButtonType="Button" Text="Delete" HeaderText="" ControlStyle-CssClass="btnrej" CommandName="delete" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle ForeColor="#0066ff" Font-Bold="true"  />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ES %>" ProviderName="<%$ ConnectionStrings:ES.ProviderName %>" SelectCommand="SELECT [name], [fid], [email] FROM [Employee] WHERE ([approve] = @approve)" DeleteCommand="DELETE FROM [Employee] WHERE [fid] = @fid" InsertCommand="INSERT INTO [Employee] ([name], [fid], [email]) VALUES (@name, @fid, @email)" UpdateCommand="UPDATE [Employee] SET [name] = @name, [email] = @email WHERE [fid] = @fid">
        <DeleteParameters>
            <asp:Parameter Name="fid" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="fid" Type="String" />
            <asp:Parameter Name="email" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="approve" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="fid" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br />

    <asp:GridView ID="GridView1" runat="server" Width="500px" AutoGenerateColumns="False" CssClass="table table-bordered table-hover table-condensed table-responsive" BackColor="White" BorderColor="#3366CC" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" OnRowCommand="GridView1_RowCommand" Visible="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
            <asp:BoundField DataField="fid" HeaderText="Fid" SortExpression="fid" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
              <asp:ButtonField ButtonType="Button" Text="Approve" HeaderText="Approve" ControlStyle-CssClass="btnapp" CommandName="ID" />
                <asp:ButtonField ButtonType="Button" Text="Reject" HeaderText="Reject" ControlStyle-CssClass="btnrej" CommandName="REJ" />
        </Columns>
        <EmptyDataTemplate>
            <h3>There is currently no instructor that waits for an approve.</h3>
        </EmptyDataTemplate>
        <EmptyDataRowStyle BackColor="Wheat" ForeColor="RoyalBlue" />
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle ForeColor="#0066ff" Font-Bold="true"  />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fdetails %>" SelectCommand="SELECT [name], [fid], [email] FROM [Employee] WHERE ([approve] = @approve)" >
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="approve" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    </div>

    </asp:Content>

