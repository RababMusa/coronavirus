<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeFile="AddEditor.aspx.cs" Inherits="WebApplication1.AddEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <main style="height:1200px; background-color:#F8F9FA">
      <div class="mainprofile">
            <div  class=" Profilemain" style="padding-top:0px;">
               <div class="icondiv">  <i class="fas fa-user-plus fa-10x icons" ></i>
        <h1 class="AddEditore">Add Editor</h1>
        </div>
                <div style="margin-bottom:20px">
                    <div>
                        <asp:textbox id="txtuser" style="border: none; outline:0px; box-shadow: 5px 3px 4px 5px #eee; border-radius: 10px; height: 50px" runat="server" placeholder="First Name" class="in"></asp:textbox>
                    </div>
                    <div  style="padding-right:590px">
                        <asp:requiredfieldvalidator style="display: block" runat="server" errormessage="First Name is Required" controltovalidate="txtuser" forecolor="Red"></asp:requiredfieldvalidator>
                        <asp:regularexpressionvalidator id="valMin" runat="server" forecolor="Red"
                            controltovalidate="txtuser"
                            errormessage="Minimum length is 3!"
                            validationexpression=".{3}.*"
                            display="Dynamic" />
                    </div>
                </div>
                 <div style="margin-bottom:20px"> 
                     <div>
                    <asp:TextBox ID="textlastname" runat="server" placeholder="Last Name" class="in" style="border: none; outline:0px; border-radius: 10px; height: 50px;outline:none; box-shadow:5px 3px 4px 5px #eee"></asp:TextBox>
                   </div>
                     <div  style="padding-right:590px">
                          <asp:requiredfieldvalidator runat="server"  style="display: block" errormessage="Last Name is Required" ControlToValidate="textlastname" ForeColor="Red"></asp:requiredfieldvalidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ForeColor="Red"
                        ControlToValidate="textlastname"
                        ErrorMessage="Minimum length is 3!"
                        ValidationExpression=".{3}.*"
                        Display="Dynamic" />
                         </div>
<%--                    <input type="text" placeholder="Username" class="in">--%>
                </div>
                <div style="margin-bottom:20px">

                    <asp:TextBox ID="txtemail" style="border:none;outline:0px; border-radius:10px; box-shadow:5px 3px 4px 5px #eee; height:50px" runat="server"  placeholder="Email" CssClass="in" TextMode="Email"></asp:TextBox>
                    <div  style="padding-right:620px">
                        <asp:requiredfieldvalidator id="RequiredFieldValidator1" controltovalidate="txtemail" runat="server" forecolor="Red" errormessage="Email is Required"></asp:requiredfieldvalidator>
                    </div>
                 </div>
                 <div style="margin-bottom:20px">
                <div>
                    <asp:TextBox ID="txtpassword" style="border:none ; outline:0px; border-radius:10px; box-shadow:5px 3px 4px 5px #eee ; height:50px" runat="server" TextMode="Password" placeholder="Password" CssClass="in"></asp:TextBox>
                </div>
                     <div  style="padding-right:590px">
                  <asp:RequiredFieldValidator style="display:block" ID="RequiredFieldValidator3" runat="server" ErrorMessage=" Password is Required" ForeColor="Red" ControlToValidate="txtpassword"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ForeColor="Red"
                        ControlToValidate="txtpassword"
                        ErrorMessage="Minimum length is 8!"
                        ValidationExpression=".{8}.*"
                        Display="Dynamic" />
                   </div>
                           </div>
                <div>
                <div>
                    <asp:TextBox ID="txtconfirm" style="border:none; outline:0px; border-radius:10px; height:50px; box-shadow:5px 3px 4px 5px #eee ;" runat="server"  placeholder=" Confirm Password" TextMode="Password" CssClass="in" ></asp:TextBox>
                </div>
                    <div  style="padding-right:520px">
                  <asp:RequiredFieldValidator style="display:block" ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtconfirm" ErrorMessage="Confirm Password is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                 <asp:comparevalidator runat="server" errormessage="Not Match" ControlToCompare="txtpassword" ControlToValidate="txtconfirm" ForeColor="Red"></asp:comparevalidator>
               </div>
                    </div>
                <div style="margin-bottom:50px" >
                 <div >
                    <asp:textbox id="txtphone" MaxLength="10" style="border: none; outline:0px; border-radius: 10px; height: 50px; box-shadow: 5px 3px 4px 5px #eee;" runat="server" textmode="Phone" cssclass="in" placeholder="phone number"></asp:textbox>
                </div>
                    <div style="padding-right: 590px">
                        <asp:regularexpressionvalidator style="display: block" id="RegularExpressionValidator4"
                            controltovalidate="txtphone"
                            validationexpression="\d+"
                            display="Static"
                            errormessage="Please enter numbers only"
                            runat="server" font-names="A Mosalas" forecolor="Red"/>
                        <asp:regularexpressionvalidator id="RegularExpressionValidator2" runat="server"
                            controltovalidate="txtphone" forecolor="Red"
                            errormessage="Minimum length is 10!"
                            validationexpression=".{10}.*"
                            display="Dynamic" />
                    </div>
                    </div>
                <div>
                    <asp:TextBox ID="txtaddress" style="border:none; outline:0px; border-radius:10px; height:50px;box-shadow:5px 3px 4px 5px #eee ;" runat="server" placeholder="Address" CssClass="in"></asp:TextBox>
                </div>
            <div class=" ADMIN_PR" style="margin-bottom:20px">
                    <asp:Button ID="btnADD" runat="server" Text="Add" style="color:#eee" OnClick="btnADD_Click" CssClass="Edit-admin" />
                </div>
                <asp:Label ID="lblmsgphone" runat="server" style="color:red;"  Text=""></asp:Label>
                
                <asp:Label ID="lblmsgupdate" runat="server" style="color:green; padding-top:30px"  Text=""></asp:Label>
             
                     <%--     <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>--%>
            </div>
       </div>
             </main>
</asp:Content>
