<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="WebApplication1.userprofile" %>
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
                                    <img width="100px" src="Images/userlogin.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Your Profile</h4>
                                    <span>Account Status - </span>
                                    <asp:Label class="badge badge-pill badge-info" ID="Label1" runat="server" Text="Your Status"></asp:Label>

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
                                <label>Full Name</label>
                                <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Full Name"></asp:TextBox>
                            </div>

                            <div class="col-md-6">
                                <label>Date of Birth</label>
                                <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Password" TextMode="Date"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Contact Number</label>
                                <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Contact Number" TextMode="Number"></asp:TextBox>
                            </div>

                            <div class="col-md-6">
                                <label>Email ID</label>
                                <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>State</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Romania" Value="Romania" />
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="City"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Pincode</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="Pincode" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label>Full Address</label>
                                <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                <br><span class="badge badge-pill badge-info">Log In Credentials</span><br><br>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Patient ID</label>
                                <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="Patient ID" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                            </div>

                            <div class="col-md-4">
                                <label>Old Password</label>
                                <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="Old Password" TextMode="Password" ReadOnly="True"></asp:TextBox>
                            </div>

                            <div class="col-md-4">
                                <label>New Password</label>
                                <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="New Password" TextMode="Password" ReadOnly="False"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                <br><span class="badge badge-pill badge-info">Create Appointment</span><br><br>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Patient ID</label>
                                <asp:TextBox class="form-control" ID="TextBox11" runat="server" placeholder="Patient ID" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
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

                            <div class="col-md-6">
                              
                                <div class="form-group">
                                    <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Update Password" />
                                </div>

                            </div>

                            <div class="col-md-6">
                              
                                <div class="form-group">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button2" runat="server" Text="Create Appointment" />
                                </div>

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
                                    <img width="110px" src="Images/img-userprofile.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Your Informations</h4>
                                    <asp:Label class="badge badge-pill badge-info" ID="Label2" runat="server" Text="Your Results"></asp:Label>

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
