<%@ Page Title="" Language="C#" MasterPageFile="~/firstSite.Master" AutoEventWireup="true" CodeBehind="Student_Signup.aspx.cs" Inherits="TMS_Project.Student_Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />

    <div class="container" style="box-shadow:-5px -2px 35px 7px rgba(0,0,0,0.75);
-moz-box-shadow: 5px -2px 35px 7px rgba(0,0,0,0.75);
box-shadow: 5px -2px 35px 7px rgba(0,0,0,0.75);">
        <br />
        <div class="row">
            <div class="col-md-12">
                 <h1 class="jumbotron bg-primary text-white text-center">Student SignUp</h1>
            </div>
           
        </div>
   

    <div class="row">

        <div class="col-md-4">
            <asp:TextBox ID="NameTextBox" CssClass="form-control" placeholder="Enter your Name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="NameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Name is Requird"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="FatherNameTextBox" CssClass="form-control" placeholder="Enter Father Name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="FatherNameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Father Name is Requird"></asp:RequiredFieldValidator>
            <br />

            <asp:TextBox ID="SurnameTextBox" CssClass="form-control" placeholder="Enter SurName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="SurnameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="SurName is Requird"></asp:RequiredFieldValidator>
            <br />
            <asp:DropDownList ID="GenderDropDownList" runat="server" CssClass="form-control">
                <asp:ListItem>Select Gender</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="GenderDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Gender is Requird"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="AgeTextBox" CssClass="form-control" placeholder="Enter your Age" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="AgeTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Age is Requird"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="AgeTextBox" SetFocusOnError="true" ErrorMessage="Age Between 5 to 50" Display="Dynamic" ForeColor="Red" MaximumValue="50" MinimumValue="5" Type="Integer"></asp:RangeValidator>
            <br />
            <asp:TextBox ID="CountryTextBox" CssClass="form-control" placeholder="Enter Country Name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="CountryTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Country is Requird"></asp:RequiredFieldValidator>
        </div>

        <div class="col-md-4">

            <asp:TextBox ID="CityTextBox" CssClass="form-control" placeholder="Enter City Name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="CityTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="City is Requird"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="AddressTextBox" TextMode="MultiLine" Rows="4" Columns="20" CssClass="form-control" placeholeder="Enter Address" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="AddressTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Address is Requird"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="ClassTextBox" CssClass="form-control" placeholder="Enter Class" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="ClassTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Class is Requird"></asp:RequiredFieldValidator>
            <br />
            <asp:DropDownList ID="GoingToDropDownList" runat="server" CssClass="form-control">
                <asp:ListItem>Select Going To</asp:ListItem>
                <asp:ListItem>School</asp:ListItem>
                <asp:ListItem>College</asp:ListItem>
                <asp:ListItem>University</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" InitialValue="Select Going To" ControlToValidate="GoingToDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Going ToDrop Down List is Requird"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="SubjectTextBox" CssClass="form-control" placeholder="Enter Subject Name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="SubjectTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Subject is Requird"></asp:RequiredFieldValidator>
        </div>

        <div class="col-md-4">

            <asp:TextBox ID="ContactTextBox" CssClass="form-control" placeholder="Enter Contact" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ControlToValidate="ContactTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Contact Text Box is Requird"></asp:RequiredFieldValidator>
            <br />

            <asp:DropDownList ID="TutionTypeDropDownList" runat="server" CssClass="form-control">
                <asp:ListItem>Select Tution Type</asp:ListItem>
                <asp:ListItem>Online</asp:ListItem>
                <asp:ListItem>Physical</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" InitialValue="Select Tution Type" ControlToValidate="TutionTypeDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Tution Type Drop Down List is Requird"></asp:RequiredFieldValidator>
            <br />
            <asp:DropDownList ID="TutorPreferDropDownList" runat="server" CssClass="form-control">
                <asp:ListItem>Select Going To</asp:ListItem>
                <asp:ListItem>Graduate</asp:ListItem>
                <asp:ListItem>Masters</asp:ListItem>
                <asp:ListItem>MPHIT</asp:ListItem>
                <asp:ListItem>PHD</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" InitialValue="Select Going To" ControlToValidate="TutorPreferDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Tutor Prefer DropDown List is Requird"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="UsernameTextBox" CssClass="form-control" placeholder="Enter UserName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" ControlToValidate="UsernameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="UserName is Requird"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="PasswordTextBox" CssClass="form-control" placeholder="Enter Password" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" ControlToValidate="PasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Password Requird"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="PasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Please Enter Strong Password" ValidationExpression="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"></asp:RegularExpressionValidator>
            <br />
            <asp:TextBox ID="ConfirmTextBox" CssClass="form-control" placeholder="Re-Enter Password" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" ControlToValidate="ConfirmTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Confirm Password Requird"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" ControlToValidate="ConfirmTextBox" ControlToCompare="PasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Both Password Must Be Identical"></asp:CompareValidator>


        </div>
    </div>
        <br />
        <div class="row">
            <div class="col-md-6 mx-auto">
                <asp:Button ID="StudentSignUpButton" runat="server" OnClick="StudentSignUpButton_Click" Text="SignUp" CssClass="btn btn-primary btn-block" />
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-6 mx-auto text-center"  >
                <a href="Student_Signup.aspx" class="btn btn-success">  Student SignUp</a>
                <a href="tutor_signup.aspx" class="btn btn-info">Tutor SignUp</a>
            </div>
        </div>
        <br />
     </div>
    <br />
</asp:Content>
