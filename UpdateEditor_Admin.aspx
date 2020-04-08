<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" Codefile="UpdateEditor_Admin.aspx.cs" Inherits="WebApplication1.UpdateEditor_Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <main style="background-color:#F8F9FA; height:1200px " >
    <div class="mainprofile"  >
      
            <div  class=" Profilemain" >
                <div class="icondiv">  
                    <span class="fas fa-user-edit fa-10x icons" ></span>
                    <h1 class="H11">Editor</h1>
                </div>
              
                <div style="margin-bottom:20px"> 
                    <div>
                    <asp:TextBox ID="txtuser" runat="server"  placeholder="First Name" class="in" style="border: none; border-radius: 10px; height: 50px;outline:none; box-shadow:5px 3px 4px 5px #eee"></asp:TextBox>
                  </div>
                    <div style="padding-right:590px">
                     <asp:requiredfieldvalidator style="display:block" runat="server" errormessage="First Name is Required" ControlToValidate="txtuser" ForeColor="Red"></asp:requiredfieldvalidator>
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
                     <div style="padding-right:590px">
                          <asp:requiredfieldvalidator style="display:block" runat="server" errormessage="Last Name is Required" ControlToValidate="textlastname" ForeColor="Red"></asp:requiredfieldvalidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                        ControlToValidate="textlastname"  ForeColor="Red"
                        ErrorMessage="Minimum length is 3!"
                        ValidationExpression=".{3}.*"
                        Display="Dynamic" />
                         </div>
<%--                    <input type="text" placeholder="Username" class="in">--%>
                </div>
                <div style="margin-bottom: 20px">
                    <div>
                        <asp:textbox id="txtemail" runat="server" placeholder="Email" cssclass="in" textmode="Email" style="border: none; border-radius: 10px; height: 50px; outline: none; box-shadow: 5px 3px 4px 5px #eee"></asp:textbox>
                    </div>
                    <div style="padding-right:620px">
                        <asp:requiredfieldvalidator id="RequiredFieldValidator1" controltovalidate="txtemail" runat="server" forecolor="Red" errormessage="Email is Required"></asp:requiredfieldvalidator>
                    </div>
                    <%--                    <input type="text" placeholder="Email" class="in">--%>
                </div>
                <div style="margin-bottom:20px">
                    <div>
                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" placeholder="Password" CssClass="in" style="border: none; border-radius: 10px; height: 50px;outline:none; box-shadow:5px 3px 4px 5px #eee"></asp:TextBox>
                   </div>
                   <div style="padding-right:590px">
                        
                      <asp:requiredfieldvalidator runat="server" style="display:block"  ForeColor="Red" errormessage="Password is Required" ControlToValidate="txtpassword"></asp:requiredfieldvalidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                        ControlToValidate="txtpassword"  ForeColor="Red"
                        ErrorMessage="Minimum length is 8!"
                        ValidationExpression=".{8}.*"
                        Display="Dynamic" />
                           </div>
<%--                    <input type="text" placeholder="passwred" class="in">--%>
                 
                     </div>
                <div style="margin-bottom: 0px">
                    <div>
                        <asp:textbox id="txtconfirm" runat="server" placeholder=" confirm Password" textmode="Password" cssclass="in" style="border: none; border-radius: 10px; height: 50px; outline: none; box-shadow: 5px 3px 4px 5px #eee"></asp:textbox>
                    </div>
                    <div style="padding-right:520px">
                        <asp:requiredfieldvalidator style="display:block" runat="server" forecolor="Red" errormessage=" Confirm Password is Required" controltovalidate="txtconfirm"></asp:requiredfieldvalidator>
                        <asp:comparevalidator runat="server" forecolor="Red" style="padding-right:150px" errormessage="Not Match" controltocompare="txtpassword" controltovalidate="txtconfirm"></asp:comparevalidator>
                    </div>
                    <%--                   
     <input type="text" placeholder=" confirm passwred" class="in">--%>
                </div>
                <div style="margin-bottom:50px">
                    <div>
                    <asp:TextBox ID="txtphone" MaxLength="10" runat="server" TextMode="Phone" CssClass="in"  placeholder="phone number" style="border: none; border-radius: 10px; height: 50px;outline:none; box-shadow:5px 3px 4px 5px #eee"></asp:TextBox>
                  </div>
                    <div style="padding-right: 590px">
                        <asp:regularexpressionvalidator style="display: block" id="RegularExpressionValidator4"
                            controltovalidate="txtphone"
                            validationexpression="\d+"
                            display="Static"
                            errormessage="Please enter numbers only"
                            runat="server" font-names="A Mosalas" forecolor="Red" />
                        <asp:regularexpressionvalidator id="RegularExpressionValidator3" runat="server"
                            controltovalidate="txtphone" forecolor="Red"
                            errormessage="Minimum length is 10!"
                            validationexpression=".{10}.*"
                            display="Dynamic" />
                    </div>
<%--                    <input type="text" placeholder="phone number" class="in">--%>
                </div>
                <div style="margin-bottom:20px">
                    <asp:TextBox ID="txtaddress" runat="server" placeholder="Address" CssClass="in" style="border: none; border-radius: 10px; height: 50px;outline:none; box-shadow:5px 3px 4px 5px #eee"></asp:TextBox>
<%--                    <input type="text" placeholder="state" class="in">--%>
                </div>
                <div class=" ADMIN_PR">
                   <%-- <button>Edite Profile </button>--%>
                    <asp:Button ID="btnprofile" runat="server" Text="Update" OnClick="btnprofile_Click" style="color:#eee;margin-bottom:20px" CssClass="Edit-admin"  />
                </div>
                <asp:Label ID="lblmsgphone" runat="server" style="color:red;"  Text=""></asp:Label>
                <asp:Label ID="lblmsgupdate" runat="server" style="color:green; padding-top:30px"  Text=""></asp:Label>
             
              <%--  <asp:Label ID="lblmsg"  runat="server" Style="color:green" Text=""></asp:Label>--%>
            </div>
        </div>
        </main>
</asp:Content>
