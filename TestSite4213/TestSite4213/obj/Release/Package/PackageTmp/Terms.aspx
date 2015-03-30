<%@ Page Title="" Language="C#" MasterPageFile="~/KriStocks.Master" AutoEventWireup="true" CodeBehind="Terms.aspx.cs" Inherits="TestSite4213.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <hr class="featurette-divider" />
    <div class="container marketing">
        <div class="span11">
            <h2 class="featurette-heading">Kristocks  <span class="muted">Data Disclaimer.</span></h2>
            <p class="lead">Exchanges</p>
            <table id="Disclaimer for Stox">
                <colgroup>
                    <col class="oce-first" />
                </colgroup>

                <tr>
                    <th scope="col">Region
                    </th>
                    <th scope="col">Exchange Code
                    </th>
                    <th scope="col">Description
                    </th>
                    <th scope="col">Delay(Minutes)
                    </th>
                </tr>

                <tbody>
                    <tr>
                        <td>North America</td>
                        <td>NYSE</td>
                        <td>New York Stock Exchange</td>
                        <td>Realtime*</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>NASDAQ</td>
                        <td>The NASDAQ Stock Market, Inc. - NASDAQ Last Sale</td>
                        <td>Realtime*</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>NYSEAMEX</td>
                        <td>NYSE MKT</td>
                        <td>15</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>NYSEARCA</td>
                        <td>NYSE ARCA</td>
                        <td>Realtime*</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>OTC</td>
                        <td>FINRA OTC Bulletin Board</td>
                        <td>15</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>PINK</td>
                        <td>FINRA Other OTC Issues</td>
                        <td>15</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>TSE</td>
                        <td>Toronto Stock Exchange</td>
                        <td>15</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>CVE</td>
                        <td>Toronto TSX Ventures Exchange</td>
                        <td>15</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>CNSX</td>
                        <td>Canadian National Stock Exchange</td>
                        <td>Realtime</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>OPRA</td>
                        <td>Option Chains</td>
                        <td>15</td>
                    </tr>
                    <tr>
                        <td>Europe</td>
                        <td>LON</td>
                        <td>London Stock Exchange</td>
                        <td>Realtime</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>FRA</td>
                        <td>Deutsche Börse Frankfurt Stock Exchange</td>
                        <td>Realtime</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>ETR</td>
                        <td>Deutsche Börse XETRA</td>
                        <td>15</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>BIT</td>
                        <td>Borsa Italiana Milan Stock Exchange</td>
                        <td>Realtime</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>EPA</td>
                        <td>NYSE Euronext Paris</td>
                        <td>15</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>EBR</td>
                        <td>NYSE Euronext Brussels</td>
                        <td>15</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>ELI</td>
                        <td>NYSE Euronext Lisbon</td>
                        <td>15</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>AMS</td>
                        <td>NYSE Euronext Amsterdam</td>
                        <td>15</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>MCX</td>
                        <td>Moscow Exchange</td>
                        <td>Realtime</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>STO</td>
                        <td>NASDAQ OMX Stockholm</td>
                        <td>Realtime</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>CPH</td>
                        <td>NASDAQ OMX Copenhagen</td>
                        <td>Realtime</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>HEL</td>
                        <td>NASDAQ OMX Helsinki</td>
                        <td>Realtime</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>ICE</td>
                        <td>NASDAQ OMX Iceland</td>
                        <td>Realtime</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>TAL</td>
                        <td>NASDAQ OMX Tallinn</td>
                        <td>Realtime</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>RSE</td>
                        <td>NASDAQ OMX Riga</td>
                        <td>Realtime</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>VSE</td>
                        <td>NASDAQ OMX Vilnius</td>
                        <td>Realtime</td>
                    </tr>
                    <tr>
                        <td>Asia</td>
                        <td>BOM</td>
                        <td>Bombay Stock Exchange Limited</td>
                        <td>Realtime</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>NSE</td>
                        <td>National Stock Exchange of India</td>
                        <td>Realtime</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>SHA</td>
                        <td>Shanghai Stock Exchange</td>
                        <td>Realtime</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>SHE</td>
                        <td>Shenzhen Stock Exchange</td>
                        <td>Realtime</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>TPE</td>
                        <td>Taiwan Stock Exchange</td>
                        <td>Realtime</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>HKG</td>
                        <td>Hong Kong Stock Exchange</td>
                        <td>15</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>TYO</td>
                        <td>Tokyo Stock Exchange</td>
                        <td>20</td>
                    </tr>
                    <tr>
                        <td>South Pacific</td>
                        <td>ASX</td>
                        <td>Australian Securities Exchange</td>
                        <td>20</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>NZE</td>
                        <td>New Zealand Stock Exchange</td>
                        <td>20</td>
                    </tr>
                    <tr>
                        <td>Note</td>
                        <td colspan="2">End of day prices provided by SIX Financial Information.</td>
                        <td>End of Day</td>
                    </tr>
                    <tr>
                        <td>Note*</td>
                        <td colspan="2">Real-time price data represents trades which execute on the NASDAQ and NYSE exchanges. Volume information, as well as price data for trades that don’t execute on those exchanges, are consolidated and delayed by 15 minutes (NASDAQ), 20 minutes (NYSE).</td>
                        <td></td>
                    </tr>
                </tbody>
            </table>

            <br />
            <article>

                <p>Data is provided by financial exchanges and may be delayed as specified by financial exchanges or our data providers. Kristocks does not verify any data and disclaims any obligation to do so.</p>
                <p>Kristocks, its data or content providers, the financial exchanges and each of their affiliates and business partners (A) expressly disclaim the accuracy, adequacy, or completeness of any data and (B) shall not be liable for any errors, omissions or other defects in, delays or interruptions in such data, or for any actions taken in reliance thereon. Neither Stox nor any of our information providers will be liable for any damages relating to your use of the information provided herein. As used here, “business partners” does not refer to an agency, partnership, or joint venture relationship between Kristocks and any such parties.</p>
                <p>You agree not to copy, modify, reformat, download, store, reproduce, reprocess, transmit or redistribute any data or information found herein or use any such data or information in a commercial enterprise without obtaining prior written consent. All data and information is provided “as is” for personal informational purposes only, and is not intended for trading purposes or advice. Please consult your broker or financial representative to verify pricing before executing any trade.</p>
                <p>Either Kristocks or its third party data or content providers have exclusive proprietary rights in the data and information provided.</p>
                <p>Please find all listed exchanges and indices covered by Kristocks along with their respective time delays from the table on the left.</p>
                <p>Advertisements presented on Kristocks are solely the responsibility of the party from whom the ad originates. Neither Kristocks nor any of its data licensors endorses or is responsible for the content of any advertisement or any goods or services offered therein.</p>
                <h3>Currency Conversion</h3>
                <p>Kristocks cannot guarantee the accuracy of the exchange rates displayed. You should confirm current rates before making any transactions that could be affected by changes in the exchange rates. Foreign currency rates provided by the European Central Bank and Citibank N.A. and displayed under license. Rates are for information purposes only and are subject to change without notice. Rates for actual transactions may vary, and Citibank is not offering to enter into any transaction at any rate displayed.</p>
                <h3>NYSE Securities</h3>
                <p>The New York Stock Exchange, LLC (“NYSE”) reserves all rights to the NYSE securities prices that Kristocks Inc. makes available to you over its website. You understand and acknowledge that those NYSE securities prices do not reflect trading activity on markets other than NYSE and are intended to provide you with a reference point only, rather than as a basis for making trading decisions. Kristocks Inc. and NYSE do not guarantee that data and shall not be liable for any loss due either to their negligence or to any cause beyond their reasonable control. Any redistribution of that data is strictly prohibited.</p>
                <br />
            </article>

        </div>

        <footer>
            <p class="pull-right"><a href="#">Back to top</a></p>
            <p>&copy;Kristocks. <%: DateTime.Now.Year %> Company, Inc. &middot; <a href="Privacy.aspx">Privacy</a> &middot; <a href="#">Terms</a></p>
        </footer>
    </div>

</asp:Content>
