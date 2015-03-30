<%@ Page Title="" Language="C#" MasterPageFile="~/KriStocks.Master" AutoEventWireup="true" CodeBehind="404ErrorPage.aspx.cs" Inherits="TestSite4213.WebForm9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr class="featurette-divider" />
    <div class="container marketing">
        <div class="pagination-centered">
            <div class="row">
                <h2 class="featurette-heading">Kristocks  <span class="muted">Error - 404.</span></h2>
                <img src="/assets/Stox.png" height="500" width="500" />
                <p class="lead">Woops it seems that something went wrong in the background.</p>
                <p class="lead">We May have moved something.</p>
                <p class="lead">Don't worry we will try to fix this issue as soon as possible!</p>
                <a class="btn btn-inverse" href="../Default.aspx">Return Home</a>
            </div>
        </div>
    </div>
</asp:Content>
