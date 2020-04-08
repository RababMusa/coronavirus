<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" Codefile="Add_Category.aspx.cs" Inherits="WebApplication1.Add_Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

       <link href="cssAdd/media1.css" rel="stylesheet" />
<link href="cssAdd/style.css" rel="stylesheet" />
<link href="cssAdd/style1.css" rel="stylesheet" />
 <%--   <div>
        
        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="btnupload" />
        <asp:Image  ImageUrl='<%# "~/img/"+  Eval("image") %>' Width="50" ID="Image1" runat="server" />
        <label>Name category:</label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Add" OnClick="Add_Click" runat="server" Text="Button" />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </div>--%>
    <div>
        <div class="maingift" style="background-color:#F8F9FA; min-height:1050px" >
        <div class="container">
        <div class=" rowgift">
              <div class="divfleximg" >
                 <asp:HiddenField   runat="server" ID="hdExistImages" />
                <div  style="height:200px; width:200px; background-color:white">
                 <asp:Image style="height:200px; width:200px;" ImageUrl='<%# Eval("Category_image")+ "~/img/" %>' Width="50" ID="imgadd"  runat="server" />
              
                       <%--   <img src="img/Christmas-card-present-shake.gif" / height="330px" width="330px">--%>
                  </div>
              </div>
            
                <div class="divfleximg bbtn btnuploadimg ">
                     <asp:FileUpload  ID="FileUpload1" class="btnupload " placeholder="Upload Image" runat="server" CssClass="btnupload btnuploadfile" />
                     <asp:Image  ImageUrl='<%# "~/img/"+  Eval("image") %>' Width="50" ID="Image2"  runat="server" />
     
                  </div>
                     <asp:RequiredFieldValidator style="display:block; text-align:center"  ID="RequiredFieldValidator2" runat="server" ErrorMessage="Image is Required" ControlToValidate="FileUpload1" ForeColor="Red"></asp:RequiredFieldValidator>
                    

            <div class="divfleximg" >
              <asp:TextBox ID="TextBox1" runat="server" class="inputname" style="border: none; border-radius: 10px; padding-left:10px; height: 45px;outline:none; box-shadow:5px 3px 4px 5px #eee"  placeholder="Category Name"></asp:TextBox>              
            </div>
               <div class="divfleximg" style="display:flex; flex-direction:column"  >
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1"  runat="server" ControlToValidate="TextBox1"  ErrorMessage="Category Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="valMin" runat="server"
                        ControlToValidate="TextBox1"  ForeColor="Red"
                        ErrorMessage="Minimum length is 3!" 
                        ValidationExpression=".{3}.*"
                        Display="Dynamic" />
                   </div>
                 <div class="btn divfleximg">
                   <asp:Button ID="Button2" class="btnupload btnadd " OnClick="Button2_Click" runat="server" Text="Add" />
                 </div>
               <div style="display:flex; align-items:center; justify-content:center">
                  <asp:Label ID="Label1" style="color:green" class="lbladd" runat="server" Text=""></asp:Label>
                  <asp:Label ID="Label2" style="color:red" class="lbladd" runat="server" Text=""></asp:Label>
                  <%--  
              <asp:Label ID="Label3" class="lbladd" runat="server" Text=""></asp:Label>
              <asp:Label ID="Label2" class="lbladd" runat="server" Text=""></asp:Label>--%>
             </div>
              </div>
            </div>
        </div>
        </div>
<%--        <div class="">
        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="btnupload" />
        <asp:Image  ImageUrl='<%# "~/img/"+  Eval("image") %>' Width="50" ID="Image1" runat="server" />
        <label>Name category:</label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Button" />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
         </div>--%>
    <%-- </div>--%>


</asp:Content>
