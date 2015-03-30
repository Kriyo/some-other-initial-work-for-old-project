<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CurrencyConvertor.aspx.cs" Inherits="TestSite4213.GetStox" %>

<!DOCTYPE html>
<<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8" />
    <title>&middot; Kristocks</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <!-- Le styles -->
    <link href="Styles/bootstrap.css" rel="stylesheet" />
    <link href="Styles/bootstrap-responsive.css" rel="stylesheet" />
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
</head>
<body>
    <form id="ccForm" runat="server">
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
        <hr class="featurette-divider" />
        <div class="container marketing">

            <h2 class="featurette-heading">Kristocks  <span class="muted">Prices.</span></h2>
            <p class="lead">Here you can search for stock prices and changes in currency</p>
            <p>We strive to bring you the most up to date data for information on data delays click <a href="About.aspx">here</a>.</p>
            <p>You can also check our list of currency symbols <a href="CurrencySymbols.aspx">here.</a></p>
            <br />
            <div class="row">
                <div class="span9">
                    <asp:Label ID="lblFirst" runat="server" Text="Enter the amount of units you want to convert:"></asp:Label><br />
                    <asp:TextBox ID="txtvalue" runat="server"></asp:TextBox>

                    <div class="row">
                        <div class="span6">
                            <asp:DropDownList ID="ddfromcurrency" runat="server"></asp:DropDownList>
                            <asp:DropDownList ID="ddtocurrency" runat="server"></asp:DropDownList>
                            <asp:Button ID="btnconvert" runat="server" Text="Convert" OnClick="btnconvert_Click" />
                        </div>
                        <br />
                        <br />
                        <br />
                        <div class="span3">
                            <asp:Label ID="lblCurr" runat="server" Visible="false">The currency rate is:</asp:Label> 
          <asp:Label ID="lblcurrency" runat="server"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="span4">
                </div>
                <hr class="featurette-divider" />
            </div>
            <br />
            <br />
            <br />

            <footer>
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy;Kristocks.  <%: DateTime.Now.Year %> Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
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
    </form>
</body>
</html>

