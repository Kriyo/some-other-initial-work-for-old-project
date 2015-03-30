<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChartsNstuff.aspx.cs" Inherits="TestSite4213.ChartsNstuff" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      
    <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $.getJSON('http://www.highcharts.com/samples/data/jsonp.php?filename=aapl-c.json&callback=?', function (data) {
                // Create the chart
                window.chart = new Highcharts.StockChart({
                    chart: {
                        renderTo: 'Div2'
                    },

                    rangeSelector: {
                        selected: 1
                    },

                    title: {
                        text: 'Apple Stock Price'
                    },

                    series: [{
                        name: 'AAPL',
                        data: data,
                        tooltip: {
                            valueDecimals: 2
                        }
                    }]
                });
            });

        });
    </script>

    <script type="text/javascript">
        $(document).ready(function () {
            $.getJSON('http://www.highcharts.com/samples/data/jsonp.php?filename=goog-c.json&callback=?', function (data1) {
                // Create the chart
                window.chart = new Highcharts.StockChart({
                    chart: {
                        renderTo: 'Div1'
                    },

                    rangeSelector: {
                        selected: 1
                    },

                    title: {
                        text: 'Google Stock Price'
                    },

                    series: [{
                        name: 'GOOG',
                        data: data1,
                        tooltip: {
                            valueDecimals: 2
                        }
                    }]
                });
            });

        });
    </script>


    <style type="text/css">
        .accordion
        {
            width: 800px;
        }

        .accordionHeader
        {
            border: 1px solid #2F4F4F;
            color: white;
            background-color: #2E4d7B;
            font-family: Arial, Sans-Serif;
            font-size: 12px;
            font-weight: bold;
            padding: 5px;
            margin-top: 5px;
            cursor: pointer;
        }

        .accordionHeaderSelected
        {
            border: 1px solid #2F4F4F;
            color: white;
            background-color: #5078B3;
            font-family: Arial, Sans-Serif;
            font-size: 12px;
            font-weight: bold;
            padding: 5px;
            margin-top: 5px;
            cursor: pointer;
        }

        .accordionContent
        {
            background-color: #D3DEEF;
            border: 1px dashed #2F4F4F;
            border-top: none;
            padding: 5px;
            padding-top: 10px;
        }
    </style>
</head>
<body>
    <form id="MyForm" runat="server">
        <ajaxToolkit:ToolkitScriptManager runat="server"></ajaxToolkit:ToolkitScriptManager>

        <ajaxToolkit:Accordion
            ID="Accordion1"
            CssClass="accordion"
            HeaderCssClass="accordionHeader"
            HeaderSelectedCssClass="accordionHeaderSelected"
            ContentCssClass="accordionContent"
            runat="server">
            <Panes>

                <ajaxToolkit:AccordionPane ID="AccordPane1" runat="server">
                    <Header>Google Single line chart</Header>
                    <Content>
                        <div id="Div1" style="height: inherit; min-width: inherit" onclick="__doPostBack('UpdatePanel1', '');">
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server" OnLoad="UpdatePanel1_Load">
                            </asp:UpdatePanel>

                        </div>
                    </Content>
                </ajaxToolkit:AccordionPane>

                <ajaxToolkit:AccordionPane ID="AccordPane2" runat="server">
                    <Header>Apple Single line chart</Header>
                    <Content>
                        <div id="Div2" style="min-width: inherit; height: inherit; margin: 0 auto" onclick="__doPostBack('UpdatePanel2', '');">
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server" OnLoad="UpdatePanel2_Load">
                            </asp:UpdatePanel>
                        </div>
                    </Content>
                </ajaxToolkit:AccordionPane>

                <ajaxToolkit:AccordionPane ID="AccorPane3" runat="server">
                    <Header>Random</Header>
                    <Content>
                        <p>Need to work on more charts and piss about with different themes for ajax to stop post back refreshing on the page</p>
                        <p>Derp di derp</p>
                        <p>lalalalla</p>
                    </Content>
                </ajaxToolkit:AccordionPane>

            </Panes>
        </ajaxToolkit:Accordion>

      
   


    </form>
</body>
<script src="http://code.highcharts.com/highcharts.js"></script>
<script src="http://code.highcharts.com/modules/exporting.js"></script>
<script src="http://code.highcharts.com/stock/highstock.js"></script>
<script src="http://code.highcharts.com/stock/modules/exporting.js"></script>
</html>
