<%@ page title="manageExamList" language="C#" masterpagefile="~/Administrator/AMaster.master" autoeventwireup="true" inherits="Administrator_manageExamsList, App_Web_53jops5d" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div id="content">
                        <div class="container">
                            <div class="row margin-vert-30">
                               <div class="auto-style9">
                                    <div class="row">
                                        <div class="col-md-12;" style="visibility:visible">
    <h3 style="font-weight:400">Exam Edit
        <asp:Literal runat="server" Visible="false" ID="ltrlFoid"></asp:Literal></h3>
                                            <label>Lecture Name</label>
                                            <asp:TextBox required="true" CssClass="form-control" runat="server" ID="lectxt"></asp:TextBox>
                                             <label>Description</label>
                                             <asp:TextBox required="true" CssClass="form-control" runat="server" ID="txtdesc"></asp:TextBox>
                                            <label>Rules</label>
                                             <asp:TextBox required="true" TextMode="MultiLine" CssClass="form-control" runat="server" ID="txtrules"></asp:TextBox>
                                            <label>Duration</label>
                                             <asp:TextBox required="true" CssClass="form-control" runat="server" TextMode="Number" ID="txtduration"></asp:TextBox>
                                            <label>Start Date</label>
                                            <asp:Calendar ID="startingPoint" OnDayRender="startingPoint_DayRender" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" OnSelectionChanged="startingPoint_SelectionChanged" Visible="true" Width="350px">
        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
        <TodayDayStyle BackColor="#CCCCCC" />
    </asp:Calendar>
                                            <label>Ending Date</label>
                                            <asp:Calendar ID="endingPoint" required="true" OnDayRender="endingPoint_DayRender" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" OnSelectionChanged="endingPoint_SelectionChanged" Visible="true" Width="350px">
        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
        <TodayDayStyle BackColor="#CCCCCC" />
    </asp:Calendar>

 <!-- Exam forms exit -->
                                </div>
                                        </div>

    <div style="padding-top:20px" >
                                                <asp:Button runat="server" ID="addBtn" CssClass="btn btn-success" Text="Update Exam" OnClick="UpdateBtn_Click" />
                                            </div>
                                       <asp:Literal runat="server" Visible="false" ID="succeedLtrl"></asp:Literal>
                                    </div>
                            </div>
                        </div>
                    </div>

</asp:Content>

