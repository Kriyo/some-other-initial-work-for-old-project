<%@ Page Title="" Language="C#" MasterPageFile="~/KriStocks.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="TestSite4213.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <hr class="featurette-divider" />
    <div class="container marketing">
        <div class="span9">
            <div class="row">
                <h2 class="featurette-heading">Kristocks  <span class="muted">Blog Page.</span></h2>
                <p class="lead">This is my personal blog page that I will post latest updates to the website on.</p>
            </div>
            <br />
            <br />
            <div class="span8">
                <div class="row">
                    <div class="span2">
                        <a href="#" class="thumbnail">
                            <img src="assets/rsz_kayler.jpg" alt="" /></a><br />
                    </div>
                </div>
                <h1>First time dealing with stocks and currency exchange!</h1>
                <p>I have no prior knowledge to this subject matter, any feedback would greatly be appreciated.</p>
                <p>I do hope you enjoy your time spent here, always working on new features.</p>
                <div>
                    <span class="badge badge-success">Posted 2013-03-05 11:29</span><div class="pull-right"><span class="label">Kri</span> <span class="label">story</span> <span class="label">blog</span> <span class="label">personal</span></div>
                </div>
                <hr />
                <div class="row-fluid">
                    <div class="span2">
                        <a href="#" class="thumbnail">
                            <img src="assets/rsz_kayler.jpg" alt="" /></a>
                    </div>
                </div>
                <h1>Kri's first blog</h1>
                <p>Hey, my name is Chris Kennedy. I'm currently studying programming development, this website is a project of mine for college and an effort to apply what I've learned thus far. </p>
                <p>I'm currently learning Microsoft .Net with C# and a few other languages such as:  Ajax, Java, Javascript, jQuery, HTML, SQL, XML and other languages. </p>
                <div>
                    <span class="badge badge-success">Posted 2013-03-05 11:25</span><div class="pull-right"><span class="label">Kri</span> <span class="label">story</span> <span class="label">blog</span> <span class="label">personal</span></div>
                </div>
                <hr class="featurette-divider" />
            </div>
            <br />
            <br />
            <br />

            <footer>
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy;Kristocks. <%: DateTime.Now.Year %> Company, Inc. &middot; <a href="Privacy.aspx">Privacy</a> &middot; <a href="#">Terms</a></p>
            </footer>
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <div class="span2">
            <h4>Some Interests</h4>
            <div id="flashcontent"></div>
        </div>

    </div>


    <script type="text/javascript">swfobject.embedSWF("imagecloud.swf", "flashcontent",
					"280", "280",
					"9", "",
					{ cloud_data: "cloud_data.xml" },
					{ wmode: "transparent", menu: "false", quality: "high", scale: "noscale" }
					);</script>
</asp:Content>
