<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Pizza_Delivery_System.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap" rel="stylesheet">
    <title>EATaliano Pizzaz</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    

    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
		
    <link rel="stylesheet" href="bootstrap/css/w3.css">

	<script src="bootstrap/js/jquery.min.js"></script>
	
	<script src="bootstrap/js/bootstrap.min.js"></script>

</head>
<body background="/Siteimages/p4.jpg" style="background-size:cover">
    
   
   <form id="form1" runat="server">

   <div class="container-fluid" >

      <div>

            <h2 style="font-family: 'Dancing Script',cursive;font-size:60px;color:white;padding-left:765px;padding-top:20px">EATaliano Pizzaz</h2>

      </div>
     
      <div class="row">

          <div class="col-md-8">

      

          </div>
    
          <div class="col-md-4" style="margin-left:750px;margin-top:80px;">

              <div class="panel panel-default">
                  
                  <div class="panel-heading" style="background-color:#303030;"><h3 style="color:white;">Sign In</h3></div>
                  
                  <div class="panel-body">

                      
                      <div class="form-group" >
                        Email Id:<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtEmailId" ForeColor="Red"></asp:RequiredFieldValidator><br><br>
                        <asp:TextBox ID="txtEmailId" class="form-control" runat="server"></asp:TextBox>
                      </div>

                      <div class="form-group" >
                        Password:<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator><br><br>
                        <asp:TextBox ID="txtPassword" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                      </div>
                      <asp:Button ID="btnSignIn" runat="server" Text="Submit" class="btn btn-warning" style="background-color:#303030;width:100%;" OnClick="btnSignIn_Click"/>
                     
                      <br><br>
                      <center><a href="SignUp.aspx" style="text-decoration:none;">Sign Up</a></center>

                  </div>
              </div>

          </div>
          
      </div> 

    </div>
       <br><br>
     <div class="container-fluid row">
            
           <asp:Repeater ID="Feedback" runat="server">

            <%--<HeaderTemplate>

                <table class="table table-hover text-center table-bordered">

                  <tr>
                      
                      <th class="text-center">Feedback</th>
                       <th class="text-center">Customer Name</th>
                  </tr>


            </HeaderTemplate>--%>

            <%--<ItemTemplate>

                  <tr>
                      <td><asp:Label ID="Feedback" runat="server" Text=<%#Eval("Feedback")%>></asp:Label></td>
                     <td><asp:Label ID="Label1" runat="server" Text=<%#Eval("CustomerName")%>></asp:Label></td>
                  
                  </tr>

            </ItemTemplate>--%>

            <FooterTemplate> </FooterTemplate>

            </asp:Repeater>

          
         </div>

    </form>

</body>
</html>
