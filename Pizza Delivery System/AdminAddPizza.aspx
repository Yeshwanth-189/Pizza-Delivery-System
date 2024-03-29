﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminAddPizza.aspx.cs" Inherits="Pizza_Delivery_System.AdminAddPizza" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <body background="/Siteimages/p5.jpg">
    <div class="container-fluid">

        <div class="row">

            <div class="col-md-offset-4 col-md-4">

              <div class="panel panel-default">
               
                <div class="panel-heading" style="background-color:#303030;color:white;">Add Pizza</div>
                
                <div class="panel-body">

                    <label>Pizza Name<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtPizzaName" ForeColor="Red"></asp:RequiredFieldValidator></label>
                    <asp:TextBox ID="txtPizzaName" runat="server" class="w3-input" style="border-radius:0px;"></asp:TextBox>

                  
                    <br>
                    <label>Pizza Description<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtPizzaDescription" ForeColor="Red"></asp:RequiredFieldValidator></label>
                    <asp:TextBox ID="txtPizzaDescription" runat="server" class="w3-input" style="border-radius:0px;" MaxLength="100" TextMode="MultiLine" Rows="3"></asp:TextBox>

                    <br>
                    <label>Category<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ControlToValidate="rbtnCategory" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br><br><asp:RadioButtonList ID="rbtnCategory" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Veg</asp:ListItem>
                        <asp:ListItem>Non-Veg</asp:ListItem>
                    </asp:RadioButtonList></label>
                     <!-- <asp:DropDownList class="w3-input" ID="DropDownListCategory" runat="server" DataSourceID="SqlDataSource1" DataTextField="CategoryName" DataValueField="CategoryMasterId"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PizzaDBConnectionString %>" SelectCommand="SELECT [CategoryMasterId], [CategoryName] FROM [CategoryMaster]"></asp:SqlDataSource>-->
                    <br><br>
                    <label>Price<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtPizzaPrice" ForeColor="Red"></asp:RequiredFieldValidator></label>
                    <asp:TextBox ID="txtPizzaPrice" runat="server" class="w3-input" style="border-radius:0px;" TextMode="Number"></asp:TextBox>

                    <br>
                    <label>Pizza Image<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="PizzaImage" ForeColor="Red"></asp:RequiredFieldValidator></label>
                    <asp:FileUpload ID="PizzaImage" runat="server" />

                      <br>
                    <label>Pizza Discount<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtDiscount" ForeColor="Red"></asp:RequiredFieldValidator></label>
                    <asp:TextBox ID="txtDiscount" runat="server" class="w3-input" style="border-radius:0px;" MaxLength="100" TextMode="Number" Rows="1"></asp:TextBox>


                      <br>
                    <label>Tax<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="txtTax" ForeColor="Red"></asp:RequiredFieldValidator></label>
                    <asp:TextBox ID="txtTax" runat="server" class="w3-input" style="border-radius:0px;" MaxLength="100" TextMode="Number" Rows="1"></asp:TextBox>


                     <br>
                    <label>Status :<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ControlToValidate="rbtnStatus" ForeColor="Red"></asp:RequiredFieldValidator>
                     <br><br><asp:RadioButtonList ID="rbtnStatus" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Active</asp:ListItem>
                        <asp:ListItem>Deactive</asp:ListItem>
                    </asp:RadioButtonList></label>
                   
                    <br>
                    <asp:Button ID="AddPizza" runat="server" Text="Add" class="btn btn-warning" style="background-color:#303030;width:100%;" OnClick="AddPizza_Click" />
                
                </div>
             </div>
        </div>
    </div>
</div>


        </body>

</asp:Content>
