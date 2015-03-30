<%@ Page Title="" Language="C#" MasterPageFile="~/KriStocks.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="TestSite4213.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <hr class="featurette-divider" />
    <div class="container marketing">

        <h2 class="featurette-heading">Kristocks  <span class="muted">Contact Us.</span></h2>
        <h3>Let's keep in touch</h3>
        <p class="lead">Thank you for visiting my slice of the internet. If you would like to get in contact with me just fill out the form below. Cheers!</p>
        <br />
        <br />

        <div class="row">
            <section class="span6">

                <div class="control-group">
                    <label class="control-label" for="inputEmail"><i class="icon-user"></i>Full Name</label>
                    <div class="controls controls-row">
                        <input type="text" class="input-xxlarge" id="inputName" placeholder="Cool person" />
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="inputEmail"><i class="icon-envelope"></i>Email</label>
                    <div class="controls">
                        <input type="text" class="input-xxlarge" id="inputEmail" placeholder="you@yourdomain.com" />
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="inputEmail"><i class="icon-question-sign"></i>Subject</label>
                    <div class="controls">
                        <input type="text" class="input-xxlarge" id="inputSubject" placeholder="What's up?" />
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="inputEmail"><i class="icon-pencil"></i>Message</label>
                    <div class="controls">
                        <textarea rows="6" class="input-xxlarge" placeholder="What's on your mind"></textarea>
                    </div>
                </div>

                <div class="control-group">
                    <div class="controls">
                        <button type="submit" class="btn btn-inverse">Send Message</button>
                    </div>
                </div>
            </section>
            <!-- end section -->

            <section class="span6">
                <div class="well">
                    <iframe width="100%" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Waterford,+Ireland&amp;aq=4&amp;oq=waterford+&amp;sll=37.0625,-95.677068&amp;sspn=58.598104,135.263672&amp;ie=UTF8&amp;hq=&amp;hnear=Waterford,+County+Waterford,+Ireland&amp;ll=52.25227,-7.127206&amp;spn=0.35957,1.056747&amp;t=m&amp;z=11&amp;output=embed"></iframe>
                </div>
                <!-- end well **Map -->
            </section>
            <!-- end section -->
        </div>
        <!-- End row -->
        <br />
        <br />

        <div class="row">
            <div class="span12">
                <h4>Additional Contact Information</h4>
                <p>Please allow up to 24 hours for response, but we generally are much quicker to respond.</p>
            </div>
        </div><!-- /.row-->
        <br />
        <br />

        <div class="row">
            <div class="span4">

                <h2>Phone</h2>
                <p>
                    <span class="label">Main:</span>
                    <span>+35351xxxxxx</span>
                </p>
                <p>
                    <span class="label">After Hours:</span>
                    <span>+35351xxxxxx</span>
                </p>
            </div>
            <!-- /.span4 -->

            <div class="span4">

                <h2>Email</h2>
                <p>
                    <span class="label">Technical Support:</span>
                    <span><a href="mailto:TechSupport@Kristocks.com">Support@Kristocks.com</a></span>
                </p>
                <p>
                    <span class="label">Marketing:</span>
                    <span><a href="mailto:Marketing@Kristocks.com">Marketing@Kristocks.com</a></span>
                </p>
                <p>
                    <span class="label">General:</span>
                    <span><a href="mailto:GeneralKristocks.com">General@Kristocks.com</a></span>
                </p>
            </div>
            <!-- /.span4 -->

            <div class="span4">

                <h2>Mail</h2>
                <p>Mail us here:</p>
                <p>
                    23 Cloudview,
                    <br />
                    Heaven, Lulz 2322-6399
                </p>
            </div><!--/.span4 -->

      </div><!--/.row-->
        <hr class="featurette-divider" />
        <br />
        <br />
        <br />


        <footer>
            <p class="pull-right"><a href="#">Back to top</a></p>
            <p>&copy;Kristocks.  <%: DateTime.Now.Year %> Company, Inc. &middot; <a href="Privacy.aspx">Privacy</a> &middot; <a href="Terms.aspx">Terms</a></p>
        </footer>

    </div><!--/.container-->
</asp:Content>
