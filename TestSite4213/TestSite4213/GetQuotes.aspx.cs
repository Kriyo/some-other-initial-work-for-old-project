using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Xml;
using System.Xml.Xsl;
using System.Xml.XPath;
using System.Net;
using System.Text;

namespace TestSite4213
{
    public partial class GetQuotes : System.Web.UI.Page
    {
        protected string m_symbol = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["s"] == null)
                    m_symbol = "GOOG";
                else
                    m_symbol = Request.QueryString["s"].ToString().ToUpper();
                txtSymbol.Value = m_symbol;
                divService.InnerHtml = "<br />";
                if (m_symbol.Trim() != "")
                {
                    try
                    {
                        String arg = GetQuote(m_symbol.Trim());
                        if (arg == null)
                            return;
                        XmlDocument xd = new XmlDocument();
                        xd.LoadXml(arg);
                        XslCompiledTransform xslt = new XslCompiledTransform();
                        xslt.Load(Server.MapPath("stock.xsl"));
                        StringWriter fs = new StringWriter();
                        xslt.Transform(xd.CreateNavigator(), null, fs);
                        string result = fs.ToString();
                        divService.InnerHtml = "<br />" + result.Replace("&lt;", "<").Replace("&gt;", ">") + "<br />";
                        String[] symbols = m_symbol.Replace(",", " ").Split(' ');
                        for (int i = 0; i < symbols.Length; ++i)
                        {
                            if (symbols[i].Trim() == "")
                                continue;
                            int index = divService.InnerHtml.ToLower().IndexOf(symbols[i].Trim().ToLower() + " is invalid.");
                            if (index == -1)
                            {
                                Random random = new Random();
                                divService.InnerHtml += "<img id='imgChart_" + i.ToString() + "' src='http://ichart.finance.yahoo.com/b?s=" + symbols[i].Trim().ToUpper() + "& " + random.Next() + "' border=0><br />";
                                // 1 day
                                divService.InnerHtml += "<a style='font-family: Arial, Helvetica, sans-serif; font-size: 14px; color: Blue;' href='javascript:changeChart(0," + i.ToString() + ", \"" + symbols[i].ToLower() + "\");'><span id='div1d_" + i.ToString() + "'><b>1d</b></span></a>&nbsp;&nbsp;";
                                // 5 days
                                divService.InnerHtml += "<a style='font-family: Arial, Helvetica, sans-serif; font-size: 14px; color: Blue;' href='javascript:changeChart(1," + i.ToString() + ", \"" + symbols[i].ToLower() + "\");'><span id='div5d_" + i.ToString() + "'>5d</span></a>&nbsp;&nbsp;";
                                // 3 months
                                divService.InnerHtml += "<a style='font-family: Arial, Helvetica, sans-serif; font-size: 14px; color: Blue;' href='javascript:changeChart(2," + i.ToString() + ", \"" + symbols[i].ToLower() + "\");'><span id='div3m_" + i.ToString() + "'>3m</span></a>&nbsp;&nbsp;";
                                // 6 months
                                divService.InnerHtml += "<a style='font-family: Arial, Helvetica, sans-serif; font-size: 14px; color: Blue;' href='javascript:changeChart(3," + i.ToString() + ", \"" + symbols[i].ToLower() + "\");'><span id='div6m_" + i.ToString() + "'>6m</span></a>&nbsp;&nbsp;";
                                // 1 year
                                divService.InnerHtml += "<a style='font-family: Arial, Helvetica, sans-serif; font-size: 14px; color: Blue;' href='javascript:changeChart(4," + i.ToString() + ", \"" + symbols[i].ToLower() + "\");'><span id='div1y_" + i.ToString() + "'>1y</span></a>&nbsp;&nbsp;";
                                // 2 years
                                divService.InnerHtml += "<a style='font-family: Arial, Helvetica, sans-serif; font-size: 14px; color: Blue;' href='javascript:changeChart(5," + i.ToString() + ", \"" + symbols[i].ToLower() + "\");'><span id='div2y_" + i.ToString() + "'>2y</span></a>&nbsp;&nbsp;";
                                // 5 years
                                divService.InnerHtml += "<a style='font-family: Arial, Helvetica, sans-serif; font-size: 14px; color: Blue;' href='javascript:changeChart(6," + i.ToString() + ", \"" + symbols[i].ToLower() + "\");'><span id='div5y_" + i.ToString() + "'>5y</span></a>&nbsp;&nbsp;";
                                // Max
                                divService.InnerHtml += "<a style='font-family: Arial, Helvetica, sans-serif; font-size: 14px; color: Blue;' href='javascript:changeChart(7," + i.ToString() + ", \"" + symbols[i].ToLower() + "\");'><span id='divMax_" + i.ToString() + "'>Max</span></a><br><br /><br />&nbsp;&nbsp;";
                            }
                        }
                    }
                    catch
                    {
                    }
                }
            }
        }

        public string GetQuote(string symbol)
        {
            string result = null;
            try
            {
                string yahooURL = @"http://download.finance.yahoo.com/d/quotes.csv?s=" + symbol + "&f=sl1d1t1c1hgvbap2";
                string[] symbols = symbol.Replace(",", " ").Split(' ');
                HttpWebRequest webreq = (HttpWebRequest)WebRequest.Create(yahooURL);
                HttpWebResponse webresp = (HttpWebResponse)webreq.GetResponse();
                StreamReader strm = new StreamReader(webresp.GetResponseStream(), Encoding.ASCII);
                string tmp = "<StockQuotes>";
                string content = "";
                for (int i = 0; i < symbols.Length; i++)
                {
                    if (symbols[i].Trim() == "")
                        continue;
                    content = strm.ReadLine().Replace("\"", "");
                    string[] contents = content.ToString().Split(',');
                    if (contents[2] == "N/A")
                    {
                        tmp += "<Stock>";
                        tmp += "<Symbol>&lt;span style='color:red'&gt;" + symbols[i].ToUpper() + " is invalid.&lt;/span&gt;</Symbol>";
                        tmp += "<Last></Last>";
                        tmp += "<Date></Date>";
                        tmp += "<Time></Time>";
                        tmp += "<Change></Change>";
                        tmp += "<High></High>";
                        tmp += "<Low></Low>";
                        tmp += "<Volume></Volume>";
                        tmp += "<Bid></Bid>";
                        tmp += "<Ask></Ask>";
                        tmp += "<Ask></Ask>";
                        tmp += "</Stock>";
                    }
                    else
                    {
                        tmp += "<Stock>";
                        tmp += "<Symbol>" + contents[0] + "</Symbol>";
                        try
                        {
                            tmp += "<Last>" + String.Format("{0:c}", Convert.ToDouble(contents[1])) + "</Last>";
                        }
                        catch
                        {
                            tmp += "<Last>" + contents[1] + "</Last>";
                        }
                        tmp += "<Date>" + contents[2] + "</Date>";
                        tmp += "<Time>" + contents[3] + "</Time>";
                        if (contents[4].Trim().Substring(0, 1) == "-")
                            tmp += "<Change>&lt;span style='color:red'&gt;" + contents[4] + "(" + contents[10] + ")" + "&lt;span&gt;</Change>";
                        else if (contents[4].Trim().Substring(0, 1) == "+")
                            tmp += "<Change>&lt;span style='color:green'&gt;" + contents[4] + "(" + contents[10] + ")" + "&lt;span&gt;</Change>";
                        else
                            tmp += "<Change>" + contents[4] + "(" + contents[10] + ")" + "</Change>";
                        tmp += "<High>" + contents[5] + "</High>";
                        tmp += "<Low>" + contents[6] + "</Low>";
                        try
                        {
                            tmp += "<Volume>" + String.Format("{0:0,0}", Convert.ToInt64(contents[7])) + "</Volume>";
                        }
                        catch
                        {
                            tmp += "<Volume>" + contents[7] + "</Volume>";
                        }
                        tmp += "<Bid>" + contents[8] + "</Bid>";
                        tmp += "<Ask>" + contents[9] + "</Ask>";
                        tmp += "</Stock>";
                    }
                    result += tmp;
                    tmp = "";
                }
                result += "</StockQuotes>";
                strm.Close();
            }
            catch
            {
            }
            return result;
        }
    }
}
