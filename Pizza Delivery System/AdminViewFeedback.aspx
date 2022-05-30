<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminViewFeedback.aspx.cs" Inherits="Pizza_Delivery_System.AdminViewFeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <body background="/Siteimages/p6.png" style="background-size:cover;">
    <div class="container-fluid row">
            
           <asp:Repeater ID="Feedback" runat="server">

            <HeaderTemplate>

                <table class="table text-center table-bordered">

                  <tr>
                      
                      <th class="text-center" style="color:white;">Feedback</th>
                      <th class="text-center" style="color:white;">Customer Name</th>
                      <th class="text-center" style="color:white;">Delete</th> 
                  </tr>


            </HeaderTemplate>

            <ItemTemplate>

                  <tr>
                      <td style="color:white;"><asp:Label ID="Feedback" runat="server" Text=<%#Eval("Feedback")%>></asp:Label></td>
                      <td style="color:white;"><asp:Label ID="Label1" runat="server" Text=<%#Eval("CustomerName")%>></asp:Label></td>
                     
                      <td><a href="AdminDeleteFeedback.aspx?fid=<%#Eval("FeedbackMasterId")%>" class="btn btn-danger">Delete</a></td>
                  </tr>

            </ItemTemplate>

            <FooterTemplate> </FooterTemplate>

            </asp:Repeater>

          
         </div>

        </body>
</asp:Content>
