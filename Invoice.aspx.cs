using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace CLDV_POE_FIN
{
    public partial class About : Page
    {

        SqlConnection con = new SqlConnection(@"Server=tcp:dbs-vc-cldv-20103712.database.windows.net,1433;Initial Catalog=DB_VC_CLDV6211_20103712;Persist Security Info=False;User ID=KeeganFrank;Password=Milofrank$;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}