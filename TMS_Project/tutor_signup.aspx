<%@ Page Title="" Language="C#" MasterPageFile="~/firstSite.Master" AutoEventWireup="true" CodeBehind="tutor_signup.aspx.cs" Inherits="TMS_Project.tutor_signup" %>
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
                 <h1 class="jumbotron bg-primary text-white text-center">Tutor SignUp</h1>
            </div>
           
        </div>
   

    <div class="row">

        <div class="col-md-4">
            <asp:TextBox ID="NameTextBox" CssClass="form-control" placeholder="Enter your Name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="NameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Name is Requird"></asp:RequiredFieldValidator>
            <br />

            <asp:TextBox ID="SurnameTextBox" CssClass="form-control" placeholder="Enter SurName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="SurnameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="SurName is Requird"></asp:RequiredFieldValidator>
            <br />
            <asp:DropDownList ID="GenderDropDownList" runat="server" CssClass="form-control">
                <asp:ListItem>Select Gender</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" InitialValue="Select Gender" ControlToValidate="GenderDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Gender is Requird"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="AgeTextBox" CssClass="form-control" placeholder="Enter your Age" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="AgeTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Age is Requird"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="AgeTextBox" SetFocusOnError="true" ErrorMessage="Age Between 20 to 50" Display="Dynamic" ForeColor="Red" MaximumValue="50" MinimumValue="20" Type="Integer"></asp:RangeValidator>
            <br />

            <asp:TextBox ID="EmailTextBox" CssClass="form-control" placeholder="Enter your Email" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="EmailTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Email is Requird"></asp:RequiredFieldValidator>
            <asp:regularexpressionvalidator ControlToValidate="EmailTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" errormessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:regularexpressionvalidator>
            <br />

            <asp:DropDownList ID="MaritalStatusDropDownList" runat="server" CssClass="form-control">
                <asp:ListItem>SelectStatus</asp:ListItem>
                <asp:ListItem>Married</asp:ListItem>
                <asp:ListItem>Single</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
                
            </asp:DropDownList>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" InitialValue="SelectStatus" ControlToValidate="MaritalStatusDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Marital Status is Requird"></asp:RequiredFieldValidator>

            <br />
            
        </div>

        <div class="col-md-4">


            <asp:TextBox ID="CountryTextBox" CssClass="form-control" placeholder="Enter Country Name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="CountryTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Country is Requird"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="CityTextBox" CssClass="form-control" placeholder="Enter City Name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="CityTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="City is Requird"></asp:RequiredFieldValidator>
            <br />

            <asp:TextBox ID="AddressTextBox" CssClass="form-control" placeholder=" Enter Address" TextMode="MultiLine" Rows="6" Columns="20" runat="server"></asp:TextBox>
            <%--<asp:TextBox ID="AddressTextBox" placeholeder="Enter Address" TextMode="MultiLine" Rows="4" Columns="20" CssClass="form-control"  runat="server"></asp:TextBox>--%>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="AddressTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Address is Requird"></asp:RequiredFieldValidator>
            <br />

            <asp:DropDownList ID="QualificationDropDownList" runat="server" CssClass="form-control">
                <asp:ListItem>Qualification Status</asp:ListItem>
                <asp:ListItem>Graduation</asp:ListItem>
                <asp:ListItem>Masters</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
                
            </asp:DropDownList>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" InitialValue="Qualification Status" ControlToValidate="QualificationDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Qualification is Requird"></asp:RequiredFieldValidator>
            
        </div>

        <div class="col-md-4">
             <asp:TextBox ID="DegreeTextBox" CssClass="form-control" placeholder="Enter your Detree" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="DegreeTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Degree is Requird"></asp:RequiredFieldValidator>

            <br />
            <asp:DropDownList ID="ExperienceDropDownList" runat="server" CssClass="form-control">
                <asp:ListItem>Select Experience</asp:ListItem>
                <asp:ListItem>1 Year</asp:ListItem>
                <asp:ListItem>2+ Years</asp:ListItem>
                <asp:ListItem>5+ Years</asp:ListItem>
                <asp:ListItem>10+ Years</asp:ListItem>
                
            </asp:DropDownList>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" InitialValue="Select Experience" ControlToValidate="ExperienceDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Experience is Requird"></asp:RequiredFieldValidator>
            
            <br />
            <asp:TextBox ID="ContactTextBox" CssClass="form-control" placeholder="Enter Contact" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ControlToValidate="ContactTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Contact Text Box is Requird"></asp:RequiredFieldValidator>
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
                <asp:button id="TutorSignUpButton" Onclick="Tutor_SignUpButton_Click" runat="server" text="SignUp" cssclass="btn btn-primary btn-block" />
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
