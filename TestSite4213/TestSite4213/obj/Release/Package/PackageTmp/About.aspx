<%@ Page Title="" Language="C#" MasterPageFile="~/KriStocks.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="TestSite4213.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <hr class="featurette-divider" />
    <div class="container marketing">
        <div class="span11">
            <h2 class="featurette-heading">About  <span class="muted">Kristocks</span></h2>
            <p class="lead">Who are we?</p>
            <p class="lead">Well it is more like who.</p>
            <br />
            <article>
                <p>My name is Chris Kennedy and Kristocks is a project of mine.</p>
                <p>I am currently building this as a part of my college project.</p>
                <p>I am currently studying to become a developer in computer programming.</p>
                <p>Prior to this project I have zero experience in stock trading or currency changes, this is mearly for interest as I found I could learn about a new subject matter while putting my programming knowledge to practice</p>
                <p>If anyone has suggestions or requests for the page please  <a href="#myModal" role="button" class="btn" data-toggle="modal">email me</a></p>
               

                <!-- Modal -->
                <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h3 id="myModalLabel">Email me.</h3>
                    </div>
                    <div class="modal-body">
                        <p>Feel free to email me here at anytime you have a suggestion or question about the site.</p>
                         <div class="control-group">
                    <label class="control-label" for="inputEmail"><i class="icon-user"></i>Full Name</label>
                    <div class="controls controls-row">
                        <input type="text" class="input-xlarge" id="inputName" placeholder="Cool person" />
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="inputEmail"><i class="icon-envelope"></i>Email</label>
                    <div class="controls">
                        <input type="text" class="input-xlarge" id="inputEmail" placeholder="you@yourdomain.com" />
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="inputEmail"><i class="icon-question-sign"></i>Subject</label>
                    <div class="controls">
                        <input type="text" class="input-xlarge" id="inputSubject" placeholder="What's up?" />
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="inputEmail"><i class="icon-pencil"></i>Message</label>
                    <div class="controls">
                        <textarea rows="3" class="input-xlarge" placeholder="What's on your mind"></textarea>
                    </div>
                </div>
                    </div>
                    <div class="modal-footer">
                        <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
                        <button class="btn btn-inverse">Send Message</button>
                    </div>
                </div><!-- End Modal-->
                <br />
                <p>You can also visit my blog on this website <a href="Blog.aspx">here</a> I will post upcoming features and respond to emails.</p>
                <p>I hope you enjoy the website, feedback is always welcome!</p>
                <p>-Chris / Kri</p>
            </article>
            <br />
            <br />
            <br />
            <hr class="featurette-divider" />
        </div>

        <footer>
            <p class="pull-right"><a href="#">Back to top</a></p>
            <p>&copy;Kristocks. <%: DateTime.Now.Year %> Company, Inc. &middot; <a href="Privacy.aspx">Privacy</a> &middot; <a href="#">Terms</a></p>
        </footer>
    </div>
</asp:Content>
