using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AzimAndSons
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetUserList();
            }
        }

        SqlConnection connection= new SqlConnection("Data Source=AFTAHISLAM007\\SQLEXPRESS;Initial Catalog=AzimAndSonDB;Integrated Security=True");
        protected void Button1_Click(object sender, EventArgs e)
        {
            //int user_id = int.Parse(TextBox3.Text);

            int user_id;
            if (int.TryParse(TextBox3.Text, out user_id))
            {
                return;
            }

            string first_name = TextBox1.Text;
            string last_name = TextBox2.Text;
            string email = TextBox4.Text;
            string password = TextBox5.Text;
            string confirm_password = TextBox6.Text;
            connection.Open();
            SqlCommand command = new SqlCommand("INSERT INTO user_registration (User_ID, First_name, Last_name, Email, Password, Confirm_Password) VALUES ('" +user_id+"','"+first_name+"','"+last_name+"','"+email+"','"+password+"','"+confirm_password+"')", connection);
            command.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(),"script","alert('Successfully saved');",true);
            GetUserList();
        }

        void GetUserList()
        {
            SqlCommand command = new SqlCommand("SELECT * FROM user_registration", connection);
            SqlDataAdapter sd = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int user_id = int.Parse(TextBox3.Text);
            string first_name = TextBox1.Text;
            string last_name = TextBox2.Text;
            string email = TextBox4.Text;
            string password = TextBox5.Text;
            string confirm_password = TextBox6.Text;
            connection.Open();
            SqlCommand command = new SqlCommand("UPDATE user_registration SET First_name = '" + first_name + "', Last_name = '" + last_name + "', Email = '" + email + "', Password = '" + password + "', Confirm_Password = '" + confirm_password + "' WHERE User_ID = '" + user_id + "'", connection);
            command.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated');", true);
            GetUserList();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int user_id = int.Parse(TextBox3.Text);
            connection.Open();
            SqlCommand command = new SqlCommand("DELETE user_registration WHERE User_ID = '" + user_id + "'", connection);
            command.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted');", true);
            GetUserList();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            int user_id = int.Parse(TextBox3.Text); SqlCommand command = new SqlCommand("SELECT * FROM user_registration WHERE User_ID = '" + user_id + "'", connection);
            SqlDataAdapter sd = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            GetUserList();
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }
    }
}