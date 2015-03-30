<%@ Page Title="" Language="C#" MasterPageFile="~/KriStocks.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="TestSite4213.WebForm8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr class="featurette-divider" />
    <div class="container marketing">

        <h2 class="featurette-heading">Kristocks  <span class="muted">&middot;Navigation Page</span></h2>
        <br />
        <p class="lead"></p>
        <br />
        <br />
        <div class="row">
            <div class="span4">
                <img class="img-circle" src="holder.js/140x140" />
                <h2>New to Kristocks?</h2>

                <asp:CreateUserWizard ID="CreateUserWizard1" runat="server">
                    <WizardSteps>
                        <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                        </asp:CreateUserWizardStep>
                        <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                        </asp:CompleteWizardStep>
                    </WizardSteps>
                </asp:CreateUserWizard>
            </div>

            <!-- /.span4 -->
            <div class="span4">
                <img class="img-circle" src="holder.js/140x140" />
                <h2>Why join?</h2>
                <br />
                <p>
                    Kristocks offers a lot more than your average trading website.
                </p>
                <br />
                <p>Accuracy, security and your experience is our goal!</p>
                <br />
                <p>It only takes a moment to register with Kristocks!</p>
                <br />
                <p>Should you require any assistance please email us <a href="Contact.aspx">here</a></p>
            </div>

            <!-- /.span4 -->
            <div class="span4">
                <img class="img-circle" src="holder.js/140x140" />
                <h2>Already a member?</h2>
                <asp:Login ID="Login1" runat="server"></asp:Login>
            </div>
        </div>
        <hr class="featurette-divider" />
        <br />
        <asp:Literal ID="ltrChart" runat="server" />
        <footer>
            <p class="pull-right"><a href="#">Back to top</a></p>
            <p>&copy;Kristocks.  <%: DateTime.Now.Year %> Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
        </footer>
    </div>    
</asp:Content>
