<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="WebApplication1.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

 <div class="mainprofile">

            <div  class=" Profilemain">
                <div class="icondiv">  
                    <span class="fas fa-user-edit  icons" ></span>
                    <h1 class="H11">Profile</h1>
                </div>
              
               <div>
                    <asp:TextBox ID="txtuser" runat="server" placeholder="Username" CssClass="in" ></asp:TextBox>
                </div>
                    <asp:TextBox ID="txtemail" runat="server"  placeholder="Email" class="in" TextMode="Email"></asp:TextBox>
                </div>
                <div>
                    <asp:TextBox ID="txtpassword" runat="server" placeholder="passwred" TextMode="Password" class="in"></asp:TextBox>
                </div>
                <div>
                    <asp:TextBox ID="txtconfirmpass" runat="server" placeholder=" confirm passwred" TextMode="Password" class="in"></asp:TextBox>
                </div>
                <div>
                    <asp:TextBox ID="txtphone" runat="server" placeholder="phone number" class="in" TextMode="Phone"></asp:TextBox>
                </div>
                <div>
                    <asp:TextBox ID="txtaddress" runat="server" placeholder="Address" class="in"></asp:TextBox>
                </div>
          <button>Edite Profile </button>
                </div>
                <div class="btn">
            <div>
                <asp:Button ID="btnUpdate" OnClick="btnUpdate_Click" runat="server" Text="Update" CssClass="btn btn-primary btn1" data-toggle="button" aria-pressed="false" autocomplete="off" />         
        </div>

            </div>
     
</asp:Content>
