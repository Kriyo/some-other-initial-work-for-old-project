using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestSite4213
{
    public partial class ChartsNstuff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void UpdatePanel1_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ClientScript.RegisterStartupScript(GetType(), "key", "someFunction();", true);
            }
        }
        protected void UpdatePanel2_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ClientScript.RegisterStartupScript(GetType(), "key", "someFunction();", true);
            }
        }
    }
}