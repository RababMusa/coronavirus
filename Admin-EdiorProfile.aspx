<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" Codefile="Admin-EdiorProfile.aspx.cs" Inherits="WebApplication1.Admin_EdiorProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
 
    <main style="background-color:#F8F9FA; min-height:1050px">
       <div class="mainprofile " >
<%--                  <div >
           <div class="alert container " role="alert" style="width: 65%; background-color: #eee; color: #4C71DE; margin-top: 40px">
          <asp:label runat="server" text=" Profile" style="font-weight: bold; display: block; font-size: 30px"></asp:label>
      </div>--%>
            <div  class=" Profilemain" style="padding-top:0px;">
                <div class="icondiv ">  
                    <span class="fas fa-user-edit fa-10x icons" ></span>
                    <h1 class="H11">Profile</h1>
                </div>
                <div style="margin-bottom:20px">
                <div>
                    <asp:textbox id="txtuser" runat="server" placeholder="First Name" class="in" style="border: none; border-radius: 10px; height: 50px;outline:none; box-shadow:5px 3px 4px 5px #eee"></asp:textbox>
                    <%--<input type="text" placeholder="Username" class="in">--%>
                    </div>
                <div style="padding-right:570px">
                 <asp:requiredfieldvalidator runat="server" style="display:block;" errormessage="First Name is Required" ControlToValidate="txtuser" ForeColor="Red"></asp:requiredfieldvalidator>
                  <asp:RegularExpressionValidator ID="valMin" runat="server"
                        ControlToValidate="txtuser"  ForeColor="Red"
                        ErrorMessage="Minimum length is 3!"
                        ValidationExpression=".{3}.*"
                        Display="Dynamic" />
                </div>
                    </div>
             <div style="margin-bottom:20px"> 
                 <div>
                    <asp:TextBox ID="textlastname" runat="server" placeholder="Last Name" class="in" style="border: none; border-radius: 10px; height: 50px;outline:none; box-shadow:5px 3px 4px 5px #eee"></asp:TextBox>
               </div>
                      
                <div  style="padding-right:570px">
                 <asp:requiredfieldvalidator runat="server" style="display:block;" errormessage="Last Name is Required" ControlToValidate="textlastname" ForeColor="Red"></asp:requiredfieldvalidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ForeColor="Red"
                        ControlToValidate="textlastname"
                        ErrorMessage="Minimum length is 3!"
                        ValidationExpression=".{3}.*"
                        Display="Dynamic" />
<%--                    <input type="text" placeholder="Username" class="in">--%>
                </div>
                  </div> 
                <div style="margin-bottom:20px">
                     <div>
                          <asp:TextBox  ID="txtemail" runat="server" style="border:none;outline:none; border-radius:10px; height:50px; box-shadow:5px 3px 4px 5px #eee" placeholder="Email" CssClass="in" TextMode="Email"></asp:TextBox>
                     </div>
                <div style="padding-right:600px">
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator1"  ControlToValidate="txtemail" runat="server" ForeColor="Red" ErrorMessage="Email is Required"></asp:RequiredFieldValidator>
<%--                    <input type="text" placeholder="Email" class="in">--%>
                </div>
                    </div>
                <div style="margin-bottom:20px">
                    <div>
                    <asp:TextBox ID="txtpassword" style="border:none; border-radius:10px;outline:none; height:50px; box-shadow:5px 3px 4px 5px #eee" runat="server" TextMode="Password" placeholder="Password" CssClass="in"></asp:TextBox>
                      </div>
                    <div style="padding-right:570px">
                    <asp:requiredfieldvalidator runat="server"  errormessage="Password is Required" style="display:block;" ForeColor="Red" ControlToValidate="txtpassword"></asp:requiredfieldvalidator>
                     <asp:RegularExpressionValidator  ID="RegularExpressionValidator1" runat="server" ForeColor="Red"
                        ControlToValidate="txtpassword"
                        ErrorMessage="Minimum length is 8!"
                        ValidationExpression=".{8}.*"
                        Display="Dynamic" />
                    </div>
<%--                    <input type="text" placeholder="passwred" class="in">--%>
                </div>
               <%--   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="input the file required" ForeColor="#FF3300" ControlToValidate="txtpassword"></asp:RequiredFieldValidator>--%>

                <div style="margin-bottom: 0px">
                    <div>
                        <asp:TextBox ID="txtconfirm" Style="border: none; border-radius: 10px; outline: none; height: 50px; box-shadow: 5px 3px 4px 5px #eee" runat="server" placeholder=" confirm passwred" TextMode="Password" CssClass="in"></asp:TextBox>
                    </div>
                    <div style="padding-right:520px">
                         <asp:requiredfieldvalidator  forecolor="Red" runat="server" style="display:block" errormessage=" Confirm Password is Required" controltovalidate="txtconfirm"></asp:requiredfieldvalidator>
                        <asp:comparevalidator runat="server" style="padding-right:150px" forecolor="Red" errormessage="Not Match" controltocompare="txtpassword" controltovalidate="txtconfirm"></asp:comparevalidator>
                    </div>
                    <%--                    <input type="text" placeholder=" confirm passwred" class="in">--%>
                </div>
                                <%--    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpassword" ErrorMessage="input the file required" ForeColor="#FF3300"></asp:RequiredFieldValidator>--%>

                <div style="margin-bottom: 50px">
                    <div>
                        <asp:TextBox ID="txtphone" MaxLength="10" Style="border: none; border-radius: 10px; outline: none; height: 50px; box-shadow: 5px 3px 4px 5px #eee" runat="server" TextMode="Phone" CssClass="in" placeholder="phone number"></asp:TextBox>
                    </div>
                    <div style="padding-right:570px">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" style="display:block" runat="server" ForeColor="Red"
                            ControlToValidate="txtphone"
                            ErrorMessage="Minimum length is 10!"
                            ValidationExpression=".{10}.*"
                            Display="Dynamic" />
                           <asp:RegularExpressionValidator Style="display: block" ID="RegularExpressionValidator4"
                                ControlToValidate="txtphone"
                                ValidationExpression="\d+"
                                Display="Static"
                                ErrorMessage="Please enter numbers only"
                                runat="server" Font-Names="A Mosalas" ForeColor="Red" />
                    </div>
                    <%--<input type="text" placeholder="phone number" class="in">--%>
                </div>
                <div>
                    <asp:TextBox ID="txtaddress" style="border:none; border-radius:10px;outline:none; height:50px; box-shadow:5px 3px 4px 5px #eee" runat="server" placeholder="Address" CssClass="in"></asp:TextBox>
                </div>
                <div class=" ADMIN_PR" >
                   <%-- <button>Edite Profile </button>--%>
                    <asp:Button ID="btnprofile" runat="server" Text="Update" style="color:#eee; margin-top:3%; margin-bottom:20px" OnClick="btnprofile_Click" CssClass="Edit-admin"  />
                </div>
                <asp:Label ID="lblmsgphone" runat="server" style="color:red;"  Text=""></asp:Label>
                <asp:Label ID="lblmsgupdate" runat="server" style="color:green;"  Text=""></asp:Label>
            </div>
        </div>
        </main>
</asp:Content>
