<%@ Page Title="" Language="C#" MasterPageFile="~/KriStocks.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TestSite4213.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide">
        <div class="carousel-inner">
            <div class="item active">
                <img src="assets/blurCar.png" alt="" />
                <div class="container">
                    <div class="carousel-caption">
                        <h1>We're dynamic!</h1>
                        <p class="lead">We bring the data straight to you in the most secure possible way!</p>

                        <a class="btn btn-large btn-success" href="#">Sign up today</a>
                    </div>
                </div>
            </div>
            <div class="item">
                <img src="assets/BlurColor.png" alt="" />
                <div class="container">
                    <div class="carousel-caption">
                        <h1>Customer Service.</h1>
                        <p class="lead">We do everything we can to bring you the most enjoyable experience possible while using Kristocks.</p>
                        <a class="btn btn-large btn-success" href="#">Learn more</a>
                    </div>
                </div>
            </div>
            <div class="item">
                <img src="assets/blurSpots.png" alt="" />
                <div class="container">
                    <div class="carousel-caption">
                        <h1>Security.</h1>
                        <p class="lead">Our team strive to bring your the most secure experience possible so no data is compromised and to provide an ultimately secure experience.</p>
                        <a class="btn btn-large btn-success" href="#">Secure!</a>
                    </div>
                </div>
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
    </div>
    <!-- /.carousel -->



    <!-- Marketing messaging and featurettes
    ================================================== -->

    <div class="container marketing">

        <!-- Three columns of text below the carousel -->
        <div class="row">
            <div class="span4">

                <h2>Currency Rates</h2>
                <p>We strive to bring you the most up to date and most importantly accurate data as soon as possible</p><br />
                <p><a class="btn btn-inverse" href="CurrencyConvertor.aspx">Check the rates &raquo;</a></p>
            </div>
            <!-- /.span4 -->
            <div class="span4">

                <h2>Security</h2>
                <p>What is as important to us as the data is how secure it is we keep a consistancy with improving security so that your data and details are always highly secure.</p>
                <p><a class="btn btn-inverse" href="Privacy.aspx">Check our privacy page &raquo;</a></p>
            </div>
            <!-- /.span4 -->
            <div class="span4">

                <h2>Instant Stock Changes</h2>
                <p>Here is an example:</p><p></p>
                <div id="stock">
                </div>
                <p><a class="btn btn-inverse" href="GetQuotes.aspx">Get quotes! &raquo;</a></p>
            </div>
        </div>
        <hr class="featurette-divider" />
        <br />      
        <br />

        <!-- FOOTER -->
        <footer>
            <p class="pull-right"><a href="#">Back to top</a></p>
            <p>&copy; <%: DateTime.Now.Year %> Company, Inc. &middot; <a href="Privacy.aspx">Privacy</a> &middot; <a href="Terms.aspx">Terms</a></p>
        </footer>
    </div>


    <!-- Le javascript
    ================================================== -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>

    <script>
        $(document).ready(function () {
            $('.carousel').carousel({
                interval: 8000
            });
        });
    </script>
    <script>
        var symbol = 'GOOG';
        $.ajax({
            url: "http://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20csv%20where%20url%3D'http%3A%2F%2Fdownload.finance.yahoo.com%2Fd%2Fquotes.csv%3Fs%3D" + symbol + "%26f%3Dsl1d1t1c1ohgv%26e%3D.csv'%20and%20columns%3D'symbol%2Cprice%2Cdate%2Ctime%2Cchange%2Ccol1%2Chigh%2Clow%2Ccol2'&format=json",
            dataType: 'json',
            success: function (data) {
                console.log(data);
                var price = data.query.results.row.price;
                $("#stock").append('<p>Google&rsquo;s stock price: $' + price);
            },
            error: function () {
                $("#stock").html('<p>Something has gone terribly wrong.</p>');
            }
        });
    </script>
</asp:Content>

