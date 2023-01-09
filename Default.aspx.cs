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
    public partial class _Default : Page
    {
        SqlConnection con = new SqlConnection(@"Server=tcp:dbs-vc-cldv-20103712.database.windows.net,1433;Initial Catalog=DB_VC_CLDV6211_20103712;Persist Security Info=False;User ID=KeeganFrank;Password=Milofrank$;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
                LoadJobCard_Record();
            }

            
        }




        protected void Button1_Click(object sender, EventArgs e)
        {

            

            con.Open();
            SqlCommand comm = new SqlCommand("Insert into JOB_CARD01 values ('" + JobCardTXT.Text + "', '" + CustNameTXT.Text + "','" + CustSurnameTXT.Text + "','" + AddressTXT.Text + "','" + JobTypeTXT.Text + "','" + DaysTXT.Text + "','" + MaterialsTXT.Text + "')", con);
            comm.ExecuteNonQuery();
            con.Close(); 
           
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully added');", true);
            LoadRecord();


            //con.Open();
            //SqlCommand cmd = con.CreateCommand();
            //cmd.CommandType = CommandType.Text;
            //cmd.CommandText = "insert into JOB_CARD01 values('" + JobCardTXT.Text + "', '" + CustNameTXT.Text + "','" + CustSurnameTXT.Text + "','" + AddressTXT.Text + "','" + JobTypeTXT.Text + "','" + DaysTXT.Text + "','" + MaterialsTXT.Text + "')";
            //cmd.ExecuteNonQuery();
            // con.Close();
        }




        protected void SearchBtn_Click(object sender, EventArgs e)
        {
           SqlCommand comm = new SqlCommand("select * from JOB_CARD01 where JobCardNo = '" + JobCardTXT.Text + "'", con);
            
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);


            SqlCommand comm1 = new SqlCommand("select * from JOB_CARD01 where Cust_Name = '" + CustNameTXT.Text + "'", con);
            SqlDataAdapter d1 = new SqlDataAdapter(comm1);
            d1.Fill(dt);

           

            GridView2.DataSource = dt;
            GridView2.DataBind();
        }

        protected void UpdateBtn_Click(object sender, EventArgs e)
        {
            
            con.Open();
            SqlCommand comm = new SqlCommand("Update JOB_CARD01 set JobCardNo = '"+JobCardTXT.Text+ "',Cust_Name = '" + CustNameTXT.Text + "', Cust_Surname = '" + CustSurnameTXT.Text + "',InstallationAddress = '" + AddressTXT.Text + "',JobType = '" + JobTypeTXT.Text + "',Days = '" + DaysTXT.Text + "',MaterialsUsed = '" + MaterialsTXT.Text + "' where JobCardNo = '"+ JobCardTXT.Text + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated');", true);
            LoadRecord();


        }

        protected void DeleteBtn_Click1(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("Delete JOB_CARD01 where JobCardNo = '" + JobCardTXT.Text + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted');", true);
            LoadRecord();
        }


        /// JOB CARD INFORMATION LOAD

        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("select * from JOB_CARD01", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }



        /// JOB TYPE DAILY RATE INFORMATION

        // Update Job Type Daily Rate Button 
        protected void Button2_Click(object sender, EventArgs e) // JobTypeID UPDATE BUTTON
        {

            con.Open();
            SqlCommand comm = new SqlCommand("Update JobType set JDailyRate = '" + JDailyRate.Text + "' where JobTypeID = '" + JobTypeID.Text + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated');", true);
            LoadJobCard_Record();

        }


        // updated JobType Record
        void LoadJobCard_Record()
        {
            SqlCommand comm = new SqlCommand("select * from JobType", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView3.DataSource = dt;
            GridView3.DataBind();
        }


        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


        // NOT IN USE FOR GRID VIEW 2
        protected void UpdateBtn_Click1(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("Update JOB_CARD01 set JobCardNo = '" + JobCardTXT.Text + "',Cust_Name = '" + CustNameTXT.Text + "', Cust_Surname = '" + CustSurnameTXT.Text + "',InstallationAddress = '" + AddressTXT.Text + "',JobType = '" + JobTypeTXT.Text + "',Days = '" + DaysTXT.Text + "',MaterialsUsed = '" + MaterialsTXT.Text + "' where JobCardNo = '" + JobCardTXT.Text + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated');", true);
            LoadRecord();
        }

       
    }


}