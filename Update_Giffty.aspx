<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeFile="Update_Giffty.aspx.cs" Inherits="WebApplication1.Update_Giffty" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link href="cssGift/styleadd.css" rel="stylesheet" />
    <main class="mainadd" style="min-height:1050px; align-items:flex-start" >
        <div >
        <div class="row" style="margin-top:50px">
            <div class=" col-12">
                <div  style="display:flex;justify-content:center; ">
                <div>
                    <asp:hiddenfield runat="server" id="hdimgedit"></asp:hiddenfield>
                    <asp:image id="imagegift" style="height:200px; width:200px;" runat="server"></asp:image>
           <%--         <img class="imgadd" src="img/Christmas-card-present-shake.gif" alt="Gift">--%>
                    
                    <div>
                        <asp:FileUpload ID="FileUpload1" class="inputfile" runat="server" CssClass="btnupload" />
                    
                    </div>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </div>
                    </div>
            </div>
            <div class=" col-12" style="margin-top:-25px; margin-left:10px">
                <div class="card">
                    <div class="card-header">
                        <b>You Can Update this Gift Here</b>
                    </div>
                    <div class="card-body cardcontent">
                        <asp:TextBox ID="txtgiftName" class="inputname" runat="server" placeholder=" Gift Name" ></asp:TextBox>
                   <asp:requiredfieldvalidator runat="server"  errormessage="Gift Name is Required" ControlToValidate="txtgiftName" ForeColor="Red"></asp:requiredfieldvalidator>
                        <asp:TextBox ID="txtarea" class="inputname" Columns="50" Rows="2" runat="server" placeholder=" Update Description Here">
                        </asp:TextBox>
                         <asp:requiredfieldvalidator runat="server"  errormessage="Description is Required" ControlToValidate="txtarea" ForeColor="Red"></asp:requiredfieldvalidator>
                        <div class="flexprice">
                            <div>
                                <asp:TextBox ID="txtprice" runat="server" CssClass="inputname"></asp:TextBox>
                                <asp:requiredfieldvalidator runat="server" errormessage="Price is Required" ControlToValidate="txtprice" ForeColor="Red"></asp:requiredfieldvalidator>

                            </div>
                               <%-- <div >
                                <a class="btn btn-primary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                  Select Category
                                </a>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                  <a class="dropdown-item" href="#">Birthday</a>
                                  <a class="dropdown-item" href="#"> Flowers</a>
                                  <a class="dropdown-item" href="#">Graduation</a>
                                  <a class="dropdown-item" href="#">Wedding</a>
                                </div>
                              </div>--%>
                             <div class="dropdown" >
                      <asp:DropDownList ID="DropDownList1" runat="server" EnableViewState="true">
                      </asp:DropDownList>
                    </div>
                    </div>
                   
                
                        <asp:Button ID="btnUpdate" runat="server" class="btn btn-outline-primary btnaddgift" Text="Update" OnClick="btnUpdate_Click" />
                         <asp:Label ID="lblmsg" runat="server" style="color:green" Text=""></asp:Label>
                         <asp:Label ID="lblmsggift" style="color:red" runat="server" Text=""></asp:Label>
                </div>
            </div>
    </div>
        </div>
       
                    </div>
                    

    </main>

</asp:Content>
