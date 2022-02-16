<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="medicpanel.aspx.cs" Inherits="WebApplication1.medicpanel" EnableEventValidation="false" %>
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
                                    <h4>Consultation Sheet</h4>
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
                                <label>Full Name</label>
                                <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                               <label>Referral to</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                                    <asp:ListItem Text="Hospital" Value="Hospital" />
                                    <asp:ListItem Text="Laboratory" Value="Laboratory" />
                                    <asp:ListItem Text="Radiology" Value="Radiology" />
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Date</label>
                                <asp:TextBox class="form-control" ID="TextBox15" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label>Medical Letter</label>
                                <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" TextMode="MultiLine" Rows="4" placeholder="Medical Letter"></asp:TextBox>
                            </div>
                        </div><br>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Interventions</label>
                                <form>
                                    <div class="multiselect">
                                        <div class="selectBox" onclick="showCheckboxes()">
                                            <select>
                                                <option>Select Interventions</option>
                                            </select>
                                        <div class="overSelect"></div>
                                    </div>
                                    
                                    <div id="checkboxes">
                                        <label for="one">
                                            <input type="checkbox" id="one" />First checkbox</label>
                                        <label for="two">
                                            <input type="checkbox" id="two" />Second checkbox</label>
                                        <label for="three">
                                            <input type="checkbox" id="three" />Third checkbox</label>
                                    </div>
                                    </div>
                                </form>
                                
                            </div>
                        </div><br>

                        <div class="row">
                            <div class="col">
                                <label>Cost</label>
                                <asp:TextBox class="form-control" ID="TextBox4" runat="server" placeholder="Cost" TextMode="Number"></asp:TextBox>
                            </div>
                        </div><br>
                        
                        <div class="row">
                            <div class="col">
                                <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Send" OnClick="Button1_Click" />
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
