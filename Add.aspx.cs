using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Assignment_2
{
    public partial class Add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=localhost\\SQLEXPRESS;Initial Catalog=Library;Integrated Security=True;Pooling=False");

            string bookid = b_ID.Text;
            string bookname = b_Name.Text;
            string author = b_Author.Text;
            string publisher = b_publ.Text;
            string category = b_Cat.Text;
            string copies = b_Copies.Text;


            string sqlquery = $"INSERT INTO BookDetails VALUES ('{bookid}', '{bookname}', '{author}', '{publisher}', '{category}', '{copies}');";
                        

            con.Open();
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter();
            SqlCommand sqlCmd = new SqlCommand(sqlquery, con);

            sqlDataAdapter.InsertCommand = sqlCmd;
            sqlDataAdapter.InsertCommand.ExecuteNonQuery();
            sqlCmd.Dispose();

            Label7.Text=("Data Added Successfully!");
            con.Close();
        }
    }
}