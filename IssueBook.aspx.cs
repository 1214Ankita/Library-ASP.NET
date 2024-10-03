using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Assignment_2
{
    public partial class IssueBook : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=localhost\\SQLEXPRESS;Initial Catalog=Library;Integrated Security=True;Pooling=False");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string insql = "Insert into Issued values (" + Convert.ToInt32(TextBox1.Text) + " , '" + TextBox2.Text + "' ," +
                Convert.ToInt32(TextBox3.Text) + " , '" + TextBox4.Text + "')";
            string update1 = "Update BookDetails set No_of_copies = No_of_copies-1 where BookID = '" + TextBox3.Text + "' ";
            string update2 = "Update Student set No_BooksIssued = No_BooksIssued+1, " + "Issued = 'Issued' where StudentID = '" + TextBox1.Text + "' ";


            SqlCommand cmd1 = new SqlCommand(update1, con);
            SqlCommand cmd2 = new SqlCommand(update2, con);

            SqlCommand checkStdId = new SqlCommand("Select StudentID from Student");
            checkStdId.Connection = con;

            int c = 0;
            con.Open();
            SqlDataReader myReader1 = checkStdId.ExecuteReader();
            while (myReader1.Read())
            {
                string Stu_IdValue = myReader1["StudentID"].ToString();
                if (TextBox1.Text == Stu_IdValue)
                {
                    c++;
                }
            }

            if (c == 0)
            {
                Label6.Text = "Student ID " + TextBox1.Text + " does not exist";
                return;
            }

            myReader1.Close();
            con.Close();

            try
            {
                con.Open();
                SqlCommand sql = new SqlCommand(insql, con);
                sql.ExecuteNonQuery();

                Label6.Text = "Success Record added";

                cmd1.ExecuteNonQuery();
                cmd2.ExecuteNonQuery();
            }
            catch
            {
                Label6.Text = "Error";
            }
            finally
            {
                con.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var tbs = new List<TextBox>() { TextBox1, TextBox2, TextBox3, TextBox4, TextBox5 };
            foreach (var textBox in tbs)
            {
                textBox.Text = "";
            }
            Label6.Text = "";
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {
            string copies;
            copies = "SELECT No_of_copies from BookDetails WHERE BookID = '" + TextBox3.Text + "'";
            SqlCommand cmd = new SqlCommand(copies, con);

            SqlCommand checkBookId = new SqlCommand("SELECT BookID from BookDetails", con);
            int c1 = 0;
            con.Open();
            SqlDataReader myreader2 = checkBookId.ExecuteReader();
            while (myreader2.Read())
            {
                string BookIdvalue = myreader2["BookID"].ToString();
                if (TextBox3.Text == BookIdvalue)
                {
                    c1++;
                }
            }
            if (c1 == 0)
            {
                Label6.Text = " Book Id " + TextBox3.Text + "Does not match with database";
            }


            myreader2.Close();
            con.Close();

            SqlDataReader reader;
            try
            {
                con.Open();
                reader = cmd.ExecuteReader();
                reader.Read();
                TextBox5.Text = reader["No_of_copies"].ToString();
                if (Convert.ToInt32(TextBox5.Text) == 0)
                {
                    TextBox1.Enabled = false;
                    TextBox2.Enabled = false;
                    TextBox4.Enabled = false;
                    Label6.Text = "No copies avaliable.";

                }
                else
                {
                    TextBox1.Enabled = true;
                    TextBox2.Enabled = true;
                    TextBox4.Enabled = true;
                    Label6.Text = "";
                }
                reader.Close();

            }
            catch
            {
                Label6.Text = "Error in copies";

            }
            finally
            {
                con.Close();
            }
        }

       
    }
}