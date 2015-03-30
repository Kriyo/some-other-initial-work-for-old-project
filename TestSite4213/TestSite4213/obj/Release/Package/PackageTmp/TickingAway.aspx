<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TickingAway.aspx.cs" Inherits="TestSite4213.TickingAway" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ticker Test</title>
    <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="js/jquery.li-scroller.1.0.js"></script>
    <style>
        /* liScroll styles */

        .tickercontainer
        { /* the outer div with the black border */
            border: 1px solid #000;
            background: #fff;
            height: 40px;
            margin: 0;
            padding: 0;
            overflow: hidden;
        }

            .tickercontainer .mask
            { /* that serves as a mask. so you get a sort of padding both left and right */
                position: relative;
                left: 10px;
                top: 8px;
                overflow: hidden;
            }

        ul.newsticker
        { /* that's your list */
            position: relative;
            left: 750px;
            font: bold 10px Verdana;
            list-style-type: none;
            margin: 0;
            padding: 0;
        }

            ul.newsticker li
            {
                float: left; /* important: display inline gives incorrect results when you check for elem's width */
                margin: 0;
                padding: 0;
                background: #fff;
            }

            ul.newsticker a
            {
                white-space: nowrap;
                padding: 0;
                color: #ff0000;
                font: bold 10px Verdana;
                margin: 0 50px 0 0;
            }

            ul.newsticker span
            {
                margin: 0 10px 0 0;
            }
    </style>

</head>
<body>
    <form id="form1" runat="server">
            <ul id="ticker01">
                <li>
                    <span>Google's stock price: </span>
                    <div id="stock"></div>
                </li>            
                <li>
                    <span>Yahoo's stock price: </span>
                    <div id="stock1"></div>
                </li>
                <li>
                    <span>Microsoft's stock price: </span>
                    <div id="stock2"></div>
                </li>
                <li>
                    <span>Apple's stock price: </span>
                    <div id="stock3"></div>
                </li>
                <li><span>Amazon's stock price: </span>
                    <div id="stock4"></div>
                </li>
            </ul>

    </form>
</body>
<script>
    $(function () {
        $("ul#ticker01").liScroll({ travelocity: 0.15 });
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
            $("#stock").append('$' + price);
        },
        error: function () {
            $("#stock").html('Something has gone terribly wrong.>');
        }
    });

    var symbol = 'YHOO';
    $.ajax({
        url: "http://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20csv%20where%20url%3D'http%3A%2F%2Fdownload.finance.yahoo.com%2Fd%2Fquotes.csv%3Fs%3D" + symbol + "%26f%3Dsl1d1t1c1ohgv%26e%3D.csv'%20and%20columns%3D'symbol%2Cprice%2Cdate%2Ctime%2Cchange%2Ccol1%2Chigh%2Clow%2Ccol2'&format=json",
        dataType: 'json',
        success: function (data) {
            console.log(data);
            var price = data.query.results.row.price;
            $("#stock1").append('$' + price);
        },
        error: function () {
            $("#stock1").html('Something has gone terribly wrong.>');
        }
    });

    var symbol = 'MSFT';
    $.ajax({
        url: "http://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20csv%20where%20url%3D'http%3A%2F%2Fdownload.finance.yahoo.com%2Fd%2Fquotes.csv%3Fs%3D" + symbol + "%26f%3Dsl1d1t1c1ohgv%26e%3D.csv'%20and%20columns%3D'symbol%2Cprice%2Cdate%2Ctime%2Cchange%2Ccol1%2Chigh%2Clow%2Ccol2'&format=json",
        dataType: 'json',
        success: function (data) {
            console.log(data);
            var price = data.query.results.row.price;
            $("#stock2").append('$' + price);
        },
        error: function () {
            $("#stock2").html('Something has gone terribly wrong.>');
        }
    });

    var symbol = 'AAPL';
    $.ajax({
        url: "http://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20csv%20where%20url%3D'http%3A%2F%2Fdownload.finance.yahoo.com%2Fd%2Fquotes.csv%3Fs%3D" + symbol + "%26f%3Dsl1d1t1c1ohgv%26e%3D.csv'%20and%20columns%3D'symbol%2Cprice%2Cdate%2Ctime%2Cchange%2Ccol1%2Chigh%2Clow%2Ccol2'&format=json",
        dataType: 'json',
        success: function (data) {
            console.log(data);
            var price = data.query.results.row.price;
            $("#stock3").append('$' + price);
        },
        error: function () {
            $("#stock3").html('Something has gone terribly wrong.>');
        }
    });

    var symbol = 'AMZN';
    $.ajax({
        url: "http://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20csv%20where%20url%3D'http%3A%2F%2Fdownload.finance.yahoo.com%2Fd%2Fquotes.csv%3Fs%3D" + symbol + "%26f%3Dsl1d1t1c1ohgv%26e%3D.csv'%20and%20columns%3D'symbol%2Cprice%2Cdate%2Ctime%2Cchange%2Ccol1%2Chigh%2Clow%2Ccol2'&format=json",
        dataType: 'json',
        success: function (data) {
            console.log(data);
            var price = data.query.results.row.price;
            $("#stock4").append('$' + price);
        },
        error: function () {
            $("#stock4").html('Something has gone terribly wrong.>');
        }
    });
</script>  
      
      
</html>
