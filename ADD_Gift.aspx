<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeFile="ADD_Gift.aspx.cs" Inherits="WebApplication1.ADD_Gift" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
       <link href="cssGift/styleadd.css" rel="stylesheet" />
  <main class="mainadd" style="min-height:1050px; align-items:flex-start"  >
        <div >
        <div class="row " style="margin-top:50px">
            <div class=" col-12">
                <div  style="display:flex;justify-content:center; ">
                    <div>
                  <asp:hiddenfield runat="server" id="hdimggift"></asp:hiddenfield>
                    <div style="height:200px; width:200px; background-color:white" >
                        <asp:image runat="server" style="height:200px; width:200px;" id="imggift"></asp:image>
                      <%--  <img class="imgadd" src="img/Christmas-card-present-shake.gif" alt="Gift" />--%>
                    </div>
                    <div class="bbtn btnuploadimg">
                        <%--<input class="btnupload " placeholder="Upload Image" type="file">--%>
                        <asp:fileupload id="FileUpload1" runat="server" class="inputfile" cssclass="btnupload" />
                        <asp:RequiredFieldValidator style="display:block;"  ID="RequiredFieldValidator1" runat="server" ErrorMessage="Image is Required" ControlToValidate="FileUpload1" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                        </div>
                </div>
            </div>
            <div class=" col-12" style="margin-top:-25px; margin-left:10px">
                 <div class="card">
                    <div class="card-header">
                        <b>You Can Add Gift in this form </b>
                    </div>
                 <div class="card-body cardcontent">
                <asp:TextBox ID="txtgiftName" runat="server" placeholder=" Gift Name" CssClass="inputname"></asp:TextBox>
                        <asp:requiredfieldvalidator runat="server"  errormessage="Gift Name is Required" ControlToValidate="txtgiftName" ForeColor="Red"></asp:requiredfieldvalidator>
<%--                <input type="text" class="inputname" placeholder=" Gift Name">--%>
                <asp:TextBox ID="txtarea" class="inputname" Columns="50" Rows="2" runat="server" placeholder=" Add Description Here">
                </asp:TextBox>
                 <asp:requiredfieldvalidator runat="server"  errormessage="Description is Required" ControlToValidate="txtarea" ForeColor="Red"></asp:requiredfieldvalidator>
                <div class="flexprice">
                <div>
                    <asp:TextBox  ID="txtprice" runat="server" CssClass="inputname" placeholder=" Price"></asp:TextBox>
                    <asp:requiredfieldvalidator runat="server" errormessage="Price is Required" ControlToValidate="txtprice" ForeColor="Red"></asp:requiredfieldvalidator>
                     </div>
                <div class="dropdown">
                       <asp:DropDownList ID="ddlCategory" runat="server">
                       </asp:DropDownList>
                </div>
                
                     </div>
                     <asp:Button ID="btnADD" runat="server"  class="btn btn-outline-primary btnaddgift" Text="Add" OnClick="btnADD_Click" />
                      <asp:Label ID="lblmsg" runat="server" style="color:green;" Text=""></asp:Label>
                      <asp:Label ID="lblmsgimg" style="color:red;" runat="server" Text=""></asp:Label>
              </div>
            </div>
        </div>
                              </div>
      </div>
    </main>
</asp:Content>
