using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Assignment_2
{
    public partial class Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ddl_bID_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=localhost\\SQLEXPRESS;Initial Catalog=Library;Integrated Security=True;Pooling=False");
            SqlCommand cmd = new SqlCommand("Select * from BookDetails where BookID = '" + ddl_bID.SelectedItem.Value + "' ", con);
            try
            {
                con.Open();
                SqlDataReader myReader = cmd.ExecuteReader();

                myReader.Read();
                txtbname.Text = myReader["BookName"].ToString();
                txtauthor.Text = myReader["Author"].ToString();
                txtpublisher.Text = myReader["Publisher"].ToString();
                txtcategory.Text = myReader["Category"].ToString();
                txtcopies.Text = myReader["No_of_copies"].ToString();

                myReader.Close();
            }
            catch (Exception ex)
            {
                Label7.Text = "Error Encountered";
            }
            finally { con.Close(); }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=localhost\\SQLEXPRESS;Initial Catalog=Library;Integrated Security=True;Pooling=False");
            string bookid = ddl_bID.SelectedItem.Value;
            string bookname = txtbname.Text;
            string author = txtauthor.Text;
            string publisher = txtpublisher.Text;
            string category = txtcategory.Text;
            string copies = txtcopies.Text;

            string sqlquery = $"Update BookDetails set BookName='{bookname}', Author='{author}', Publisher='{publisher}', Category='{category}', No_of_copies='{copies}' where BookID='{bookid}';";
            con.Open();
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter();
            SqlCommand cmd = new SqlCommand(sqlquery, con);

            sqlDataAdapter.InsertCommand = cmd;
            sqlDataAdapter.InsertCommand.ExecuteNonQuery();
            Label7.Text=("Data Updated Successfully");
            cmd.Dispose();
        }

        
    }
}