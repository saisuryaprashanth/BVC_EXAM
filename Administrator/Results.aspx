<%@ page title="" language="C#" masterpagefile="~/Administrator/AMaster.master" autoeventwireup="true" inherits="Administrator_Results, App_Web_53jops5d" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div id="content">
                        <div class="container">
                            <div class="row margin-vert-30">
                                <!-- Main Column -->
                                <div class="col-md-12">
   
    <div>
        <asp:Label ID="lblid" Font-Size="18px" runat="server" Text="Subject ID:"></asp:Label>
        <asp:TextBox ID="txtsch" runat="server" TextMode="Search" CssClass="form-inline" Width="100"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Font-Size="18px" Text="Search" CssClass=" btn btn-info" />
    </div>
    <div style="position: relative; top: -34px; left: 900px; width: 300px;">
        <asp:Label ID="lblsub" Font-Size="18px" runat="server" Text="Subject ID:"></asp:Label>
        <asp:TextBox ID="txtdel" runat="server" TextMode="Search" CssClass="form-inline" Width="100"></asp:TextBox>
        <asp:Button ID="btndel" runat="server" Text="Delete" CssClass=" btn btn-red" Font-Size="18px" OnClick="btndel_Click" />
    </div>
    <asp:Button ID="btnexp" runat="server"  OnClick="Button1_Click" Visible="false" Font-Size="18px" CssClass="btn btn-violet" Text="Export to Excel" />
    <br />
    <asp:GridView ID="listResult" HorizontalAlign="Center" AutoGenerateColumns="False" GridLines="Vertical" BorderStyle="None" runat="server" Visible="False" Font-Size="19px" Caption="Reports" CaptionAlign="Top" BackColor="White" BorderColor="#DEDFDE" BorderWidth="1px" CellPadding="4" ForeColor="Black" >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="StudentRollNo" HeaderText="Student Roll No" SortExpression="StudentRollNo" ItemStyle-HorizontalAlign="Center">
                <ItemStyle HorizontalAlign="Center"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="name" HeaderText="Student Name" SortExpression="name" ItemStyle-HorizontalAlign="Center">
                <ItemStyle HorizontalAlign="Center"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="subjectid" HeaderText="Subject ID" SortExpression="subjectid" ItemStyle-HorizontalAlign="Center">
                <ItemStyle HorizontalAlign="Center"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="AnsweredCorrectly" ItemStyle-Font-Bold="true" ItemStyle-ForeColor="LightGreen" HeaderText="Answered Correctly" ItemStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="Green" SortExpression="AnsweredCorrectly">
                <HeaderStyle Font-Bold="True" ForeColor="Green"></HeaderStyle>

                <ItemStyle HorizontalAlign="Center" Font-Bold="True" ForeColor="Green"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="LetterNote" ItemStyle-Font-Bold="true" ItemStyle-ForeColor="Black" HeaderText="Total Marks" HeaderStyle-ForeColor="Black" ItemStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" SortExpression="LetterNote">
                <HeaderStyle Font-Bold="True" ForeColor="Black"></HeaderStyle>

                <ItemStyle HorizontalAlign="Center" Font-Bold="True" ForeColor="Black"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="CalculatedPoint" ItemStyle-Font-Bold="true" ItemStyle-ForeColor="Black" HeaderText="Secured marks" HeaderStyle-ForeColor="Black" ItemStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" SortExpression="CalculatedPoint">
                <HeaderStyle Font-Bold="True" ForeColor="Black"></HeaderStyle>

                <ItemStyle HorizontalAlign="Center" Font-Bold="True" ForeColor="Black"></ItemStyle>
            </asp:BoundField>
        </Columns>

        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="MintCream" Font-Bold="True" ForeColor="Black" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" ForeColor="White" Font-Bold="True" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />

    </asp:GridView>
    <asp:Label ID="lblwar" runat="server" CssClass="label label-danger" Font-Size="18px" Text="Student have not attend any exams yet." Visible="false"></asp:Label>
                                    </div></div></div></div>
</asp:Content>

