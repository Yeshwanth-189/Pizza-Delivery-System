﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminChangePassword.aspx.cs" Inherits="Pizza_Delivery_System.AdminChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<body background="/Siteimages/p6.png" style="background-size:cover;">
 <div class="container-fluid">

        <div class="row">

            <div class="col-md-offset-4 col-md-4">

             <div class="panel panel-default">
               
                <div class="panel-heading" style="font-size:30px;background-color:#303030;color:white;">Change Password</div>
                
                <div class="panel-body">

                    <label>Current Password</label>
                    <asp:TextBox ID="txtCurrentPass" runat="server" class="w3-input" style="border-radius:0px;" TextMode="Password"></asp:TextBox>

                    <br>
                    <label>New Password</label>
                    <asp:TextBox ID="txtNewPass" runat="server" class="w3-input" style="border-radius:0px;" TextMode="Password"></asp:TextBox>

                    <br>
                    <label>Confirm Password<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Not Match!" ControlToCompare="txtNewPass" ControlToValidate="txtConfirmPass" ForeColor="Red"></asp:CompareValidator></label>
                    <asp:TextBox ID="txtConfirmPass" runat="server" class="w3-input" style="border-radius:0px;" TextMode="Password"></asp:TextBox>

                    <br>
                    <asp:Button ID="btnChangePass" runat="server" Text="Update" class="btn btn-warning" style="width:100%;background-color:#303030;color:white;" OnClick="btnChangePass_Click"/>
                
                </div>

             </div>

            </div>

        </div>

    </div>
    </body>
</asp:Content>
