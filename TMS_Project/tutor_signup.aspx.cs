using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace TMS_Project
{
    public partial class tutor_signup : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void ResetControls()
        {
            NameTextBox.Text = "";  
            SurnameTextBox.Text = "";
            GenderDropDownList.ClearSelection();
            AgeTextBox.Text = "";
            EmailTextBox.Text = "";
            MaritalStatusDropDownList.ClearSelection();
            CountryTextBox.Text = "";
            CityTextBox.Text = "";
            AddressTextBox.Text = "";
            QualificationDropDownList.ClearSelection();
            DegreeTextBox.Text = "";
            ContactTextBox.Text = "";
            ExperienceDropDownList.ClearSelection();
            UsernameTextBox.Text = "";
            PasswordTextBox.Text = "";
            ConfirmTextBox.Text = "";



        }

        protected void Tutor_SignUpButton_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(cs);

            try
            {




                string query = "insert into tutor_signup values(@name, @surname, @gender, @age, @email, @status, @country, @city, @address, @qualification, @degree, @experience, @contactno,  @username, @password)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@name", NameTextBox.Text);
                
                cmd.Parameters.AddWithValue("@surname", SurnameTextBox.Text);
                cmd.Parameters.AddWithValue("@gender", GenderDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@age", Convert.ToInt32(AgeTextBox.Text));
                cmd.Parameters.AddWithValue("@email",EmailTextBox.Text);
                cmd.Parameters.AddWithValue("@status",MaritalStatusDropDownList.SelectedItem.ToString());

                cmd.Parameters.AddWithValue("@country", CountryTextBox.Text);
                cmd.Parameters.AddWithValue("@city", CityTextBox.Text);
                cmd.Parameters.AddWithValue("@address", AddressTextBox.Text);
                cmd.Parameters.AddWithValue("@qualification",QualificationDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@degree",DegreeTextBox.Text);
                cmd.Parameters.AddWithValue("@experience", ExperienceDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@contactno", ContactTextBox.Text); 
                cmd.Parameters.AddWithValue("@username", UsernameTextBox.Text);
                cmd.Parameters.AddWithValue("@password", PasswordTextBox.Text);

                con.Open();

                int a = cmd.ExecuteNonQuery();
                if (a > 0)
                {
                    //Response.Write("<script>alert('signup successfully')</script>");
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Success','You have registered Success Fully','')", true);
                    ResetControls();
                }
                else
                {
                    //Response.Write("<script>alert('Registration Failed ... Tyr another user name ')</script>");
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure!','Registration ...Failed!','error')", true);
                }
            con.Close();
            //}
            //catch (SqlException ex)
            //{
            //    if (ex.Message.Contains("UNIQUE KEY constraint"))
            //    {
            //        ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure!','Registration ...Failed!" + UsernameTextBox.Text + "already Exist','error')", true);
            //    }
            //    else
            //    {
            //        ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure!','Registration ...Failed!','error')", true);
            //    }
            //}
            //finally
            //{
            //    con.Close();
            //}

        }
    }
}