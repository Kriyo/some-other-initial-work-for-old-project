﻿using System;
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
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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