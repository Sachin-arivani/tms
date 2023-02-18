<%@ Page Title="" Language="C#" MasterPageFile="~/firstSite.Master" AutoEventWireup="true" CodeFile="Student_Login.aspx.cs" Inherits="TMS_Project.Student_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />


    <div class="container">
            <div class="row">
                <div class="col-md-4 mx-auto" style="box-shadow:-5px -2px 35px 7px rgba(0,0,0,0.75);
                      -moz-box-shadow: 5px -2px 35px 7px rgba(0,0,0,0.75);
                       box-shadow: 5px -2px 35px 7px rgba(0,0,0,0.75);">
                    <br />
                    <div class="jumbotron text-center text-white bg-primary">
                        <h2>Student Login</h2>
                    </div>
                    <asp:TextBox ID="UsernameTxt" placeholder="Enter user name" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="UsernameTxt" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ErrorMessage="UserName is Required"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="PasswordTxt" placeholder="Enter Password" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="PasswordTxt" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is Required"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="Student_LoginBtn" OnClick="Student_LoginBtn_Click" runat="server" Text="Login" CssClass="btn btn-primary btn-block" />
                    <div class="text-center">
                        <a href="Tutor_Login.aspx" class="text-center">Login As Tutor</a>
                    </div>
                    <br />
                    
                </div>

            </div>
        </div>
    <br />
</asp:Content>
