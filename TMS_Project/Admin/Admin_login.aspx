<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_login.aspx.cs" Inherits="TMS_Project.Admin.Admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login </title>
     <link href="~/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
     <link href="../dist/sweetalert2.min.css" rel="stylesheet" />
    <script src="../dist/sweetalert2.min.js"></script>
</head>
<body style="background-color:whitesmoke">
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-4 mx-auto" style="box-shadow:-5px -2px 35px 7px rgba(0,0,0,0.75);
-moz-box-shadow: 5px -2px 35px 7px rgba(0,0,0,0.75);
box-shadow: 5px -2px 35px 7px rgba(0,0,0,0.75);">
                    <div class="jumbotron text-center text-white bg-primary">
                        <h2>Admin Login</h2>
                    </div>
                    <asp:TextBox ID="UsernameTxt" placeholder="Enter user name" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="UsernameTxt" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ErrorMessage="UserName is Required"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="PasswordTxt" placeholder="Enter Password" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="PasswordTxt" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is Required"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="LoginBtn" runat="server" OnClick="LoginBtn_Click" Text="Login" CssClass="btn btn-primary btn-block" />
                    <br />
                </div>

            </div>
        </div>
    </form>
    <script src="../assets/vendor/jquery/jquery.min.js"></script>
    <script src="../assets/vendor/bootstrap/js/bootstrap.min.js"></script>
   
</body>
</html>
