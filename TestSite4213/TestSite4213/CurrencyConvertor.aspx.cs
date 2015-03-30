using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace TestSite4213
{
    public partial class GetStox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {            
            if (!Page.IsPostBack)
            {
                // Fill  from currency dropdown by web service                
                ddfromcurrency.DataSource = Enum.GetValues(typeof(net.webservicex.www.Currency));  
                ddfromcurrency.DataBind();

                // Fill To currency dropdown by web service
                ddtocurrency.DataSource = Enum.GetValues(typeof(net.webservicex.www.Currency));
                ddtocurrency.DataBind();
            }
        }                     

     
            protected void btnconvert_Click(object sender, EventArgs e)
        {
              
             net.webservicex.www.CurrencyConvertor conver = new net.webservicex.www.CurrencyConvertor();
             net.webservicex.www.Currency From = (net.webservicex.www.Currency)Enum.Parse(typeof(net.webservicex.www.Currency), ddfromcurrency.SelectedValue.ToString(), true);
             net.webservicex.www.Currency To = (net.webservicex.www.Currency)Enum.Parse(typeof(net.webservicex.www.Currency), ddtocurrency.SelectedValue.ToString(), true);
             double d = conver.ConversionRate(From, To);

             //Calls conversion rate and displays the labels
             lblcurrency.Text=(d * Convert.ToDouble(txtvalue.Text)).ToString();
             lblCurr.Visible = true;
             lblcurrency.Visible = true;            
        }
    }
}