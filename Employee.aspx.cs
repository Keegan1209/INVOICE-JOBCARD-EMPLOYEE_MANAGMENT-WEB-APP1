using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace CLDV_POE_FIN
{
    public partial class Contact : Page
    {


        SqlConnection con = new SqlConnection(@"Server=tcp:dbs-vc-cldv-20103712.database.windows.net,1433;Initial Catalog=DB_VC_CLDV6211_20103712;Persist Security Info=False;User ID=KeeganFrank;Password=Milofrank$;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
            }
        }


        // insert into database button
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("Insert into EMPLOYEES1 values ('" + EmpNoTXT.Text + "', '" + EmpNameTXT.Text + "','" + EmpSurTXT.Text + "','" + EmpContTXT.Text +  "')", con);
            comm.ExecuteNonQuery();
            con.Close();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully added');", true);
            LoadRecord();
        }



       

        protected void SearchBtn_Click(object sender, EventArgs e)
        {
            SqlCommand comm = new SqlCommand("select * from EMPLOYEES1 where EmpID = '" + EmpNoTXT.Text + "'", con);

            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);


            SqlCommand comm1 = new SqlCommand("select * from EMPLOYEES1 where EmpName = '" + EmpNameTXT.Text + "'", con);
            SqlDataAdapter d1 = new SqlDataAdapter(comm1);
            d1.Fill(dt);



            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void DeleteBtn_Click1(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("Delete EMPLOYEES1 where EmpID = '" + EmpNoTXT.Text + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted');", true);
            LoadRecord();
        }


        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("select * from EMPLOYEES1", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        // update employee information 
        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("Update EMPLOYEES1 set EmpID = '" + EmpNoTXT.Text + "',EmpName = '" + EmpNameTXT.Text + "', EmpSurname = '" + EmpSurTXT.Text + "',EmpCellContact = '" + EmpContTXT.Text + "' where EmpID = '" + EmpNoTXT.Text + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated');", true);
            LoadRecord();
        }
    }
}