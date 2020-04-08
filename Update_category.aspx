<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" Codefile="Update_category.aspx.cs" Inherits="WebApplication1.Update_category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<link href="cssAdd/media1.css" rel="stylesheet" />
<link href="cssAdd/style.css" rel="stylesheet" />
<link href="cssAdd/style1.css" rel="stylesheet" />
    <script type="text/javascript">
     var MyDiv1 = Document.getElementById('DIV1');
     MyDiv1.innerHTML = MyDiv1; 
    </script>
    <div class="maingift" style="background-color:#F8F9FA; min-height:1050px" >
        <div class="container">
        <div class=" rowgift" style="padding-top:0px">
            <asp:HiddenField   runat="server" ID="hdExistImage" />
               <div class="divfleximg">
                <div runat="server" id="DIV1" style="height:200px; width:200px; background-color:white">
                     <asp:Image style="height:200px; width:200px;" ImageUrl='<%# Eval("Category_image")+ "~/img/" %>' Width="50" ID="Image1"  runat="server" />
                  <%--  <img src="img/Christmas-card-present-shake.gif" / height="330px" width="330px">--%>
                  </div>
              </div>
                <div class="divfleximg bbtn btnuploadimg " style="display:flex; flex-direction:column; justify-content:center; align-items:center;">
                     <asp:FileUpload  ID="FileUpload1" class="btnupload " placeholder="Upload Image" runat="server" CssClass="btnupload btnuploadfile" />
                     <asp:Image  ImageUrl='<%# "~/img/"+  Eval("Category_image") %>' Width="50" ID="Image2"  runat="server" />
<%--                     <asp:Label ID="Label2"  runat="server" Text='<%# Eval ("Category_Name") %>'></asp:Label>--%>
                       <asp:TextBox Text='<%# Eval("Category_Name") %>' ID="txtcategoryName" style="border: none; border-radius: 10px; padding-left:10px; height: 45px;outline:none; box-shadow:5px 3px 4px 5px #eee"  runat="server"  />
                    <asp:RequiredFieldValidator ControlToValidate="txtcategoryName" style="display:block" ForeColor="Red" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Category Name is Required"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="valMin" runat="server"
                        ControlToValidate="txtcategoryName"  ForeColor="Red"
                        ErrorMessage="Minimum length is 3!" 
                        ValidationExpression=".{3}.*"
                        Display="Dynamic" />
                     <div class="btn divfleximg">
                     <asp:Button ID="Button1" class="btnupload btnadd " OnClick="Button1_Click" runat="server" Text="Update" />
                 </div>
            <div style="display:flex; align-items:center; justify-content:center">
               <asp:Label ID="Label1" style="color:green" class="lbladd" runat="server" Text=""></asp:Label>
               <asp:Label ID="Label2" style="color:red" class="lbladd" runat="server" Text=""></asp:Label>
            </div>
              </div>
            </div>
        </div>
    </div>

</asp:Content>
