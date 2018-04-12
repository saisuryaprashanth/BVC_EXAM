<%@ page title="" language="C#" masterpagefile="~/Faculty/Fdefaul.master" autoeventwireup="true" inherits="FDefault, App_Web_em5pifkp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style9 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 75%;
            margin-left: 25px;
            padding-left: 20px;
            padding-right: 20px;
        }
        .auto-style12 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 953px;
            left: 0px;
            top: 2px;
            height: 1080px;
            margin-left: 25px;
            padding-left: 20px;
            padding-right: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <link href="../Stylesheets/Adefault.css" rel="stylesheet" />
    <link href="../Stylesheets/bootstrap.css" rel="stylesheet" />
     <link href="../Stylesheets/Adefault.css" rel="stylesheet" />
   
    <div id="content">
        <div class="container">
                            <div class="row margin-vert-30">
                               <div class="auto-style12">
                                   
                                    

                                    <div class="row">
                        
                                        <div class="col-md-12;">

        <h3 class="title" style="font-weight: 400">Exam Information</h3>
                <div style=" margin-top: 1%">
<asp:Label ID="Label1" runat="server" Text="Course"></asp:Label>

        <asp:DropDownList ID="DropDownList1" CssClass="form-control" Style="margin-left: 23.5%; width: 15%; margin-top: -4%" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="courses" DataValueField="courses">
        </asp:DropDownList></div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ES %>" ProviderName="<%$ ConnectionStrings:ES.ProviderName %>" SelectCommand="SELECT DISTINCT [courses] FROM [CDATA]"></asp:SqlDataSource>
    <div style="margin-top: 2%">
        <asp:Label ID="Label2" runat="server" Text="Group"></asp:Label>
        <div >
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" Style="margin-left: 23.5%; width: 15%; margin-top:-3%" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="groups" DataValueField="groups">
            </asp:DropDownList>
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ES %>" ProviderName="<%$ ConnectionStrings:ES.ProviderName %>" SelectCommand="SELECT DISTINCT [groups] FROM [CDATA] WHERE ([courses] = @courses)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="courses" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <div style="margin-top: 2%">
        <asp:Label ID="Label3" runat="server" Text="Semester"></asp:Label>
        <div>
            <asp:DropDownList ID="DropDownList3" CssClass="form-control" Style="margin-left: 23.5%; width: 15%; margin-top: -2.5%" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="semesters" DataValueField="semesters">
            </asp:DropDownList>
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ES %>" ProviderName="<%$ ConnectionStrings:ES.ProviderName %>" SelectCommand="SELECT DISTINCT [semesters] FROM [CDATA] WHERE (([courses] = @courses) AND ([groups] = @groups))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="courses" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList2" Name="groups" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <div style="margin-top: 2%">
        <asp:Label ID="Label11" style="margin-top:3%" runat="server" Text="Subject"></asp:Label>
        <div style=" margin-top: -2%">
            <asp:DropDownList ID="DropDownList4" CssClass="form-control" Style="margin-left: 23.5%; width: 30%; margin-top: -1%" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="subjects" DataValueField="subjects">
            </asp:DropDownList>
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ES %>" ProviderName="<%$ ConnectionStrings:ES.ProviderName %>" SelectCommand="SELECT DISTINCT [subjects] FROM [CDATA] WHERE (([courses] = @courses) AND ([groups] = @groups) AND ([semesters] = @semesters))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="courses" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList2" Name="groups" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList3" Name="semesters" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <div style="margin-top:2%">
        <asp:Label ID="Label13" runat="server" Text="SubjectID"></asp:Label>
        <div style="margin-left: 23.5%; margin-top:-2%">
            <asp:DropDownList ID="DropDownList6" CssClass="form-control" Style=" width: 15%; margin-top: -4%" runat="server" DataSourceID="SqlDataSource5" DataTextField="subjectid" DataValueField="subjectid">
            </asp:DropDownList>
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ES %>" ProviderName="<%$ ConnectionStrings:ES.ProviderName %>" SelectCommand="SELECT [subjectid] FROM [CDATA] WHERE (([courses] = @courses) AND ([groups] = @groups) AND ([semesters] = @semesters) AND ([subjects] = @subjects))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="courses" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList2" Name="groups" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList3" Name="semesters" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList4" Name="subjects" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
        <div style="margin-top:2%">
<asp:Label ID="Label12" runat="server" Text="Exam"></asp:Label>
    <div style="margin-left: 23.5%; margin-top:-2%">
        <asp:DropDownList ID="DropDownList5" CssClass="form-control" Style=" width: 15%; margin-top: -4%" runat="server" AutoPostBack="True">
            <asp:ListItem>CIA-I</asp:ListItem>
            <asp:ListItem>CIA-II</asp:ListItem>
        </asp:DropDownList></div>
    </div>
        <div style="margin-top: 2%">
    <asp:Label ID="Label4" style="margin-top:3%" runat="server" Text="Exam Type"></asp:Label>
                                            <div style="margin-left:23.5%;margin-top:-2%">
    <asp:RadioButtonList runat="server" ID="rdBtnList">
        <asp:ListItem Value="multiple" Text="Multiple" Selected="True"></asp:ListItem>
   <%--     <asp:ListItem Value="classic" Text="Blanks"></asp:ListItem>--%>
      <%--  <asp:ListItem Value="image" Text="Images"></asp:ListItem>--%>

    </asp:RadioButtonList></div></div>
                                            <div style="margin-top:1.5%">
    <asp:Label ID="Label5" runat="server" Text="Total Number of Questions"></asp:Label>
    <asp:TextBox ID="tnumofQuestion" CssClass="form-control" style="width:15%;margin-left:23.5%;margin-top:-3.8%" placeholder="Ex:5" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ControlToValidate="tnumofQuestion" ErrorMessage="Enter total no of questions" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
                                        <div style="margin-top:1.5%">
    <asp:Label ID="Label14" runat="server" Text="Number of Text Based Questions"></asp:Label>
    <asp:TextBox ID="numoftbQuestion" CssClass="form-control" style="width:15%;margin-left:23.5%;margin-top:-3.8%" placeholder="Ex:2" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ControlToValidate="numoftbQuestion" ErrorMessage="Enter no of text based questions" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
                                        <div style="margin-top:1.5%">
    <asp:Label ID="Label15" runat="server" Text="Number of Image Based Questions"></asp:Label>
    <asp:TextBox ID="numofibQuestion" CssClass="form-control" style="width:15%;margin-left:23.5%;margin-top:-3.8%" placeholder="Ex:1" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ControlToValidate="numofibQuestion" ErrorMessage="Enter no of image based questions" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
                                        <div style="margin-top:1.5%">
    <asp:Label ID="Label16" runat="server" Text="Number of text as Question & images as answer"></asp:Label>
    <asp:TextBox ID="numoftiQuestion" CssClass="form-control" style="width:15%;margin-left:33.5%;margin-top:-3.8%" placeholder="Ex:1" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ControlToValidate="numoftiQuestion" ErrorMessage="Enter no of questions" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
                                        <div style="margin-top:1.5%">
    <asp:Label ID="Label17" runat="server" Text="Number of image as Question & text as answer"></asp:Label>
    <asp:TextBox ID="numofitQuestion" CssClass="form-control" style="width:15%;margin-left:33.5%;margin-top:-3.8%" placeholder="Ex:1" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ControlToValidate="numofitQuestion" ErrorMessage="Enter no of questions" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
                                                                           <div style="margin-top:1.5%">
         <asp:Label ID="Label6" runat="server" Text="Exam Duration (minutes)"></asp:Label>
    <asp:TextBox ID="duration" runat="server" CssClass="form-control" style="width:15%;margin-left:23.5%;margin-top:-3.8%" placeholder="Ex:20" TextMode="Number"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ControlToValidate="duration" ErrorMessage="Duration for exam required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
                                            <div style="margin-top:2%">
                                        <asp:Label ID="Label7" runat="server" Text="Exam Description"></asp:Label>
    <asp:TextBox ID="description" runat="server" CssClass="form-control" style="width:35%;margin-left:23.5%;margin-top:-4.8%"></asp:TextBox>
    </div>
                                            <div style="margin-top:2.5%">
                                                <asp:Label ID="Label8" runat="server" Text="Exam Rules"></asp:Label>
    <asp:TextBox ID="Rules" CssClass="form-control" TextMode="MultiLine" style="width:45%;margin-left:23.5%;margin-top:-4.2%" runat="server"></asp:TextBox>
    </div><br />
                                           <div class="row">
                                               <div class="col-md-4">

                                        <asp:Label ID="Label9" style="margin-top:2%" runat="server" Text="Exam Starting Date"></asp:Label>
    <asp:Calendar ID="startingPoint" OnDayRender="startingPoint_DayRender" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" OnSelectionChanged="startingPoint_SelectionChanged" Visible="true" Width="350px">
        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
        <TodayDayStyle BackColor="#CCCCCC" />
    </asp:Calendar></div>
    
                                               <div class="col-md-4">

    <asp:Label ID="Label10" runat="server" style="margin-top:2%" Text="Exam Ending Date"></asp:Label>
    <asp:Calendar ID="endingPoint" required="true" OnDayRender="endingPoint_DayRender" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" OnSelectionChanged="endingPoint_SelectionChanged" Visible="true" Width="350px">
        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
        <TodayDayStyle BackColor="#CCCCCC" />
    </asp:Calendar></div>
                                               </div>
    <br />
    <asp:Label ID="lblex" runat="server" CssClass="label label-danger" Visible="False"></asp:Label>
    <br />
                                   </div>
                                   <div style="margin-left:100%">
    <asp:Button ID="Button2" runat="server" CssClass="btn btn-success" OnClick="Button2_Click" Text="Enter Questions" />
    </div></div></div></div></div>
</asp:Content>

