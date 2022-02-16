<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="secretarypatientmanagement.aspx.cs" Inherits="WebApplication1.secretarypatientmanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="for-margin" class="container-fluid">
        <div class="row">
            <div class="col-md-5">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="Images/secretary.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Patient Details</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Patient ID</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Patient ID"></asp:TextBox>
                                    <asp:Button class="btn btn-primary" ID="Button3" runat="server" Text="Go" />
                                </div>
                            </div>

                            <div class="col-md-6">
                               <label>Medic Name</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                                    <asp:ListItem Text="Dr. Chavy" Value="Chavy" />
                                    <asp:ListItem Text="Dr. Davidson" Value="Davidson" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Date</label>
                                <asp:TextBox class="form-control" ID="TextBox15" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                            </div>

                            <div class="col-md-6">
                                <label>Time</label>
                                <asp:TextBox class="form-control" ID="TextBox16" runat="server" placeholder="Time" TextMode="Time" ReadOnly="False"></asp:TextBox>
                            </div>
                        </div><br>

                        <div class="row">

                            <div class="col-md-4">
                              
                                <div class="form-group">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Add" />
                                </div>

                            </div>

                            <div class="col-md-4">
                              
                                <div class="form-group">
                                    <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button2" runat="server" Text="Update" />
                                </div>

                            </div>

                            <div class="col-md-4">
                              
                                <div class="form-group">
                                    <asp:Button class="btn btn-danger btn-block btn-lg" ID="Button4" runat="server" Text="Delete" />
                                </div>

                            </div>

                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:Button class="btn btn-warning btn-block btn-lg" ID="Button5" runat="server" Text="View Patient Consultation" />
                            </div>
                        </div>

                    </div>
                </div>

            </div>

            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Patient List</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <a href="homepage.aspx"><< Back to Home</a><br><br>
    </div>

</asp:Content>
