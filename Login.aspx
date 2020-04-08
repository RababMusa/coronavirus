<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="WebApplication1.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div class="container-fluid mycontainer">
            <div class="row">
                <div class="col-md-6 col-12 class1 div1">
                    <h4 style="text-transform:capitalize">Login</h4>
                    <div class="divusername" >
                        <asp:TextBox ID="txtuserlogin" runat="server" CssClass="namelogin" placeholder="Email Address"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtuserlogin" ValidationGroup="Login" ErrorMessage="Email is Required" Font-Names="A Mosalas" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
                    </div>
                    <div class="divpassword">
                        <asp:TextBox ID="passwordlogin" runat="server" CssClass="namelogin" TextMode="Password" placeholder="Password"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ValidationGroup="Login" ControlToValidate="passwordlogin" ErrorMessage="Password is Required" Font-Names="A Mosalas" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
                    </div>
                    <div class="flexforget">
                        <div class="logindiv">
                            <asp:Button ID="btnlogin" runat="server" Text="Login" CssClass="but btnlogin" ValidationGroup="Login" OnClick="btnlogin_Click1" />
                        </div>
                        <div class="divforget">
                            <a>
                                <p class="forget">Forgot Password?</p>
                            </a>
                        </div>
                    </div>
                    <div class="divmsg">
                        <asp:Label ID="lblmsg1" runat="server" Text=""></asp:Label>
                    </div>
                </div>

                <!----part 3-->
                <div class="col-md-6 col-12 class1 div2">
                    <h4 style="text-transform:capitalize">Register Now</h4>
                    <div class="divusernametwo" style="margin-bottom:0px" >
                        <asp:TextBox ID="txtuserRegister" placeholder="User Name" CssClass="username" runat="server"></asp:TextBox>

                        <br />

                        <asp:RequiredFieldValidator ValidationGroup="sign" style="display:block" ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtuserRegister" ErrorMessage="User Name is Required" Font-Names="A Mosalas" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
                       <asp:RegularExpressionValidator ID="rev"  style="display:block" runat="server" ControlToValidate="txtuserRegister"
                        ErrorMessage="Spaces are not allowed!" ValidationExpression="[^\s]+" Font-Names="A Mosalas" ForeColor="Red" Font-Size="Small"/>
                         <asp:RegularExpressionValidator ID="valMin" runat="server"
                        ControlToValidate="txtuserRegister"  ForeColor="Red"
                        ErrorMessage="Minimum length is 3!" Font-Size="Small"
                        ValidationExpression=".{3}.*"
                        Display="Dynamic" />
                    </div>
                    <div class="divpasswordtwo" style="margin-bottom:15px">
                        <asp:TextBox ID="txtemail" TextMode="Email" placeholder="Email" CssClass="username" runat="server"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ValidationGroup="sign" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email is Required" Font-Names="A Mosalas" ForeColor="Red" ControlToValidate="txtemail" Font-Size="Small"></asp:RequiredFieldValidator>
                    </div>
                    <div class="divpasswordtwo" style="margin-bottom:15px">
                        <asp:TextBox ID="txtpasswordRegister" TextMode="Password" CssClass="username" placeholder="Password" runat="server"></asp:TextBox>
                       
                        <div>
                            <asp:RequiredFieldValidator style="display:block" ValidationGroup="sign" ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpasswordRegister" ErrorMessage="Password is Required" Font-Names="A Mosalas" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                            ControlToValidate="txtpasswordRegister" ForeColor="Red"
                            ErrorMessage="Minimum length is 8!" Font-Size="Small"
                            ValidationExpression=".{8}.*"
                            Display="Dynamic" />
                      </div>
                              </div>
                    <div class="divpasswordtwo">             
                      <asp:TextBox ID="txtconfirm"  runat="server" CssClass="username" TextMode="Password" placeholder="Confirm Password"></asp:TextBox>
                        <br />
                       
                       
                           <asp:RequiredFieldValidator ValidationGroup="sign" ID="RequiredFieldValidator1"  runat="server" ControlToValidate="txtconfirm" ErrorMessage="Confirm Password is Required" Font-Names="A Mosalas" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ValidationGroup="sign" ID="CompareValidator1" runat="server" Style="display: block" BackColor="White" ControlToCompare="txtpasswordRegister" ControlToValidate="txtconfirm"  ErrorMessage="Not Match with password" ForeColor="Red" Font-Names="A Mosalas" Font-Size="Small"></asp:CompareValidator>
                    </div>

                    <div class="divpasswordtwo">
                        <div>
                        <asp:TextBox ID="txtphone" MaxLength="10" placeholder="Phone" CssClass="username" runat="server" TextMode="Phone"></asp:TextBox>
                    </div>
                        <div>
                            <asp:RequiredFieldValidator ValidationGroup="sign" Style="display: block" ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtphone" ErrorMessage="Phone is Required" Font-Names="A Mosalas" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator Style="display: block" ID="RegularExpressionValidator3"
                                ControlToValidate="txtphone"
                                ValidationExpression="\d+"
                                Display="Static"
                                ErrorMessage="Please enter numbers only"
                                runat="server" Font-Names="A Mosalas" ForeColor="Red" Font-Size="Small"/>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                ControlToValidate="txtphone" ForeColor="Red"
                                ErrorMessage="Minimum length is 10!" Font-Size="Small"
                                ValidationExpression=".{10}.*"
                                Display="Dynamic" />
                        </div>
                             </div>
                    <asp:TextBox ID="txtrollID" placeholder="RollID" CssClass="username" runat="server" Visible="False"></asp:TextBox>
                    <div class="divbtn">
                        <asp:Button ID="btnRegister" ValidationGroup="sign" runat="server" Text="Register Now" CssClass="but btnregister" OnClick="btnRegister_Click1" />
                    </div>
                    <asp:Label ID="lblmsg2" runat="server" Text=""></asp:Label>
                </div>
            </div>

        </div>
</asp:Content>
