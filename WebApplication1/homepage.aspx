<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="WebApplication1.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="section-1">
       
        <div class="container">
            <div class="row"">
                
                <div class="col-md-7 col-sm-12">
                    <h6>E-HOSPITAL</h6>
                    <h1>THE NEW PLATFORM</h1>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ac nisi risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <asp:Button class="btn btn-outline-primary px-5 py-2" ID="Button1" runat="server" Text="Get Started" OnClick="Button1_Click" />
                </div>

                <div class="col-md-5 col-sm-12">
                    <center>
                        <img src="Images/hp-1.png" width="400" height="400"/>
                    </center>
                </div>

            </div>
        </div>

        <div id="footer1" class="container-fluid">
            <div class="row"">
                
                <div class="col-md-5">
                    <center>
                        <img src="Images/hp-2.png" width="400" height="400"/>
                    </center>
                </div>

                <div class="col-md-7">
                    <h1>DISCOVER A NEW FUTURE</h1>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ac nisi risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <asp:Button class="btn btn-primary px-5 py-2" ID="Button2" runat="server" Text="Log In" OnClick="Button2_Click" />
                </div>
                </div>

            </div>
        </div>

    </section>

</asp:Content>
