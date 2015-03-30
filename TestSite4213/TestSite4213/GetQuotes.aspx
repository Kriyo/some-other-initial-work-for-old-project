<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GetQuotes.aspx.cs" Inherits="TestSite4213.GetQuotes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
  <meta charset="utf-8"/>
    <title>&middot; Kristocks</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <!-- Le styles -->
    <link href="Styles/bootstrap.css" rel="stylesheet"/>
    <link href="Styles/bootstrap-responsive.css" rel="stylesheet"/>
    <link href="Styles/style.css" rel="stylesheet" />

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/Stox.png" />
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/Stox.png" />
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/Stox.png" />
    <link rel="apple-touch-icon-precomposed" href="assets/Stox.png" />
    <link rel="shortcut icon" href="assets/Stox.png" />

      <script type="text/javascript">
          function SendRequest() {
              var txtSymbol = document.getElementById("txtSymbol");
              window.location = "GetQuotes.aspx?s=" + txtSymbol.value;
              return false;
          }

          function CheckEnter(e) {
              if ((e.keyCode && e.keyCode == 13) || (e.which && e.which == 13))
                  return SendRequest();
              return true;
          }

          function changeChart(type, num, symbol) {
              var div1d = document.getElementById("div1d_" + num);
              var div5d = document.getElementById("div5d_" + num);
              var div3m = document.getElementById("div3m_" + num);
              var div6m = document.getElementById("div6m_" + num);
              var div1y = document.getElementById("div1y_" + num);
              var div2y = document.getElementById("div2y_" + num);
              var div5y = document.getElementById("div5y_" + num);
              var divMax = document.getElementById("divMax_" + num);
              var divChart = document.getElementById("imgChart_" + num);

              div1d.innerHTML = "1d";
              div5d.innerHTML = "5d";
              div3m.innerHTML = "3m";
              div6m.innerHTML = "6m";
              div1y.innerHTML = "1y";
              div2y.innerHTML = "2y";
              div5y.innerHTML = "5y";
              divMax.innerHTML = "Max";

              var rand_no = Math.random();
              rand_no = rand_no * 100000000;

              switch (type) {
                  case 1: // 5 days
                      div5d.innerHTML = "<b>5d</b>";
                      divChart.src = "http://ichart.finance.yahoo.com/w?s=" + symbol + "&" + rand_no;
                      break;
                  case 2: // 3 months 
                      div3m.innerHTML = "<b>3m</b>";
                      divChart.src = "http://chart.finance.yahoo.com/c/3m/" + symbol + "?" + rand_no;
                      break;
                  case 3: // 6 months 
                      div6m.innerHTML = "<b>6m</b>";
                      divChart.src = "http://chart.finance.yahoo.com/c/6m/" + symbol + "?" + rand_no;
                      break;
                  case 4: // 1 year
                      div1y.innerHTML = "<b>1y</b>";
                      divChart.src = "http://chart.finance.yahoo.com/c/1y/" + symbol + "?" + rand_no;
                      break;
                  case 5: // 2 years 
                      div2y.innerHTML = "<b>2y</b>";
                      divChart.src = "http://chart.finance.yahoo.com/c/2y/" + symbol + "?" + rand_no;
                      break;
                  case 6: // 5 years
                      div5y.innerHTML = "<b>5y</b>";
                      divChart.src = "http://chart.finance.yahoo.com/c/5y/" + symbol + "?" + rand_no;
                      break;
                  case 7: // Max
                      divMax.innerHTML = "<b>msx</b>";
                      divChart.src = "http://chart.finance.yahoo.com/c/my/" + symbol + "?" + rand_no;
                      break;
                  case 0: // 1 day
                  default:
                      div1d.innerHTML = "<b>1d</b>";
                      divChart.src = "http://ichart.finance.yahoo.com/b?s=" + symbol + "&" + rand_no;
                      break;
              }
          }
    </script> 
    </head>
<body>
          <!-- NAVBAR
    ================================================== -->
            <div class="navbar-wrapper">
                <div class="container">
                    <div class="navbar navbar-inverse">
                        <div class="navbar-inner">
                            <!-- Responsive Navbar Part 1.-->
                            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </a>
                            <a class="brand" href="Default.aspx">Kristocks</a>
                            <!-- Responsive Navbar Part 2.-->
                            <div class="nav-collapse collapse">
                                <ul class="nav">
                                    <li class="active"><a href="Default.aspx">Home</a></li>
                                    <li><a href="About.aspx">About</a></li>
                                    <li><a href="Contact.aspx">Contact</a></li>
                                    <li><a href="CurrencyConvertor.aspx">Currency Convertor</a></li>
                                    <li><a href="Blog.aspx">My Blog</a></li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Stock Quotes <b class="caret"></b></a>
                                        <ul class="dropdown-menu">
                                            <li class="divider"></li>
                                            <li class="nav-header">Ireland</li>
                                            <li><a href="#">ISEQ</a></li>
                                            <li class="divider"></li>
                                            <li class="nav-header">United Kingdom</li>
                                            <li><a href="#">FTSE</a></li>
                                            <li class="divider"></li>
                                            <li class="nav-header">American</li>
                                            <li><a href="#">NASDAQ</a></li>
                                            <li class="divider"></li>
                                            <li class="nav-header">Custom</li>
                                            <li><a href="GetQuotes.aspx">Search for quotes!</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <!--/.nav-collapse -->
                        </div>
                        <!-- /.navbar-inner -->
                    </div>
                    <!-- /.navbar -->
                </div>
                <!-- /.container -->
            </div>
            <!-- /.navbar-wrapper -->
     <hr class="featurette-divider"/> 
    <div class="container marketing">
    <div class="span11">   
      
        <h2 class="featurette-heading">Kristocks  <span class="muted">Stock Quotes.</span></h2>
        <p class="lead">Just type in the symbol of the quote you wish to check.</p>      
    <br />    
   </div>

    <div class="span11">
     <div id="CentreStockDiv">
        <table>
            <tr>                                            
                <td style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color: #000; text-decoration: none;">
                    <input type="text" value="" id="txtSymbol" runat="server" onkeypress="return CheckEnter(event);" />
                    <input type="button" value="Get Quotes" onclick="return SendRequest();" />
                    <br />
                    <span style="font-family: Arial, Helvetica, sans-serif; font-size: 11px;	color: #666;">
                        To get quotes simply type the stock symbol e.g. "YHOO" or "YHOO GOOG"
                    </span>
                    <%if (m_symbol != "") {%>                        
                        <div id="divService" runat="server">                        
                        </div>
                    <%}%>                                                                                            
                </td>    
            </tr>
        </table>    
    </div>           
        </div>

         <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy;Kristocks. <%: DateTime.Now.Year %> Company, Inc. &middot; <a href="Privacy.aspx">Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer>
        </div>

     <!-- Le javascript
    ================================================== -->    
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/jquery-1.7.2.min.js"><\/script>')</script>
    <!-- Bootstrap jQuery plugins compiled and minified -->
    <script src="js/bootstrap.min.js"></script>    
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap-transition.js"></script>
    <script src="js/bootstrap-alert.js"></script>
    <script src="js/bootstrap-modal.js"></script>
    <script src="js/bootstrap-dropdown.js"></script>
    <script src="js/bootstrap-scrollspy.js"></script>
    <script src="js/bootstrap-tab.js"></script>
    <script src="js/bootstrap-tooltip.js"></script>
    <script src="js/bootstrap-popover.js"></script>
    <script src="js/bootstrap-button.js"></script>
    <script src="js/bootstrap-collapse.js"></script>
    <script src="js/bootstrap-carousel.js"></script>
    <script src="js/bootstrap-typeahead.js"></script>    
</body>
</html>
