<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="CustomerGiveFeedback.aspx.cs" Inherits="Pizza_Delivery_System.CustomerGiveFeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<body background="/Siteimages/p6.png" style="background-size:cover;">
     <div class="container-fluid row" style="color:black;">

         <h3 class="w3-center">Enter Feedback</h3>

         <asp:TextBox ID="txtFeedback" runat="server" TextMode="MultiLine" Columns="30" Rows="5" ></asp:TextBox>

         <asp:Button ID="btnAddFeedback" class="btn btn-success" runat="server" Text="Add Feedback" OnClick="btnAddFeedback_Click" />

     </div>
    <br><br>
    <div class="container-fluid row" >
            
           <asp:Repeater ID="Feedback" runat="server">

            <HeaderTemplate>

                <table class="table text-center table-bordered">

                  <tr>
                      
                      <th class="text-center" style="color:white;">Feedback</th>
                      <th class="text-center" style="color:white;">Delete</th> 
                  </tr>


            </HeaderTemplate>

            <ItemTemplate>

                  <tr>
                      <td><asp:Label ID="Feedback" runat="server" style="color:white;" Text=<%#Eval("Feedback")%>></asp:Label></td>
                      <td><a href="CustomerDeleteFeedback.aspx?fid=<%#Eval("FeedbackMasterId")%>" class="btn btn-danger">Delete</a></td>
                  </tr>

            </ItemTemplate>

            <FooterTemplate> </FooterTemplate>

            </asp:Repeater>

          
         </div>

    </body>
</asp:Content>
