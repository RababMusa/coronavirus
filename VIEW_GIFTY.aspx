<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeFile="VIEW_GIFTY.aspx.cs" Inherits="WebApplication1.VIEW_GIFTY" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link href="cssGift/stylegift2.css" rel="stylesheet" />
    <div style="min-height:1050px">
      <div class="alert container " role="alert" style="width: 70%; background-color:#eee; color:#4C71DE; margin-top:40px">
    <asp:label runat="server" text="Gifts" style="font-weight: bold; display: block; font-size: 30px"></asp:label>
           <asp:label  style="margin-top: 20px;font-weight:bold" runat="server" text=""> You Can Add Another Gift:<asp:HyperLink ID="HyperLink2" NavigateUrl="~/ADD_Gift.aspx" runat="server"><span class="fas fa-plus " style="padding-left:20px"></asp:HyperLink></asp:label>
      </div>
      <nav class="navbar navbar-light bg-light container" style="width:85%">
  <%--<a class="navbar-brand">Customers</a>--%>
     
   <div style="display:flex" class="itemsss">
  <form class="form-inline">
      <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
      <asp:TextBox  ID="txtsearchgift" placeholder="Search" aria-label="Search" class="form-control mr-sm-2 btnsearchcustomer" runat="server"></asp:TextBox>
      <asp:Button id="btnsearchgift" runat="server"  OnClick="btnsearchgift_Click" Text="Search" class="btn btn-outline-primary my-2 my-sm-0"  />
      <%--<a href="VIEW_GIFTY.aspx">VIEW_GIFTY.aspx</a>--%>
      </form>
   </div>
</nav>
  <%--  <nav class="navbar navbar-light bg-light container" style="width:75%">--%>
  <%--<a class="navbar-brand">Customers</a>--%>
     
  <%-- <div style="display:flex">
  <form class="form-inline">
      <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
      <asp:TextBox ID="txtsearchcustomer" placeholder="Search" aria-label="Search" class="form-control mr-sm-2 btnsearchcustomer" runat="server"></asp:TextBox>
      <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" class="btn btn-outline-primary my-2 my-sm-0"  />
  </form>
   </div>
        <div class="dropdown">
  <a class="btn btn-primary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
 Sort Customers
  </a>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
      <asp:LinkButton ID="LinkButton3" OnClick="LinkButton1_Click" class="dropdown-item" runat="server"><span class="fas fa-sort-alpha-up"></span></asp:LinkButton>
      <asp:LinkButton ID="LinkButton4" OnClick="LinkButton2_Click"  class="dropdown-item" runat="server"><span class="fas fa-sort-alpha-up"></span></asp:LinkButton>
  </div>
</div>
</nav>--%>
         <div class="card container" style="width: auto; margin-top:0px">
        <div  class="card-header row ">
        <div  class="col-lg-8 col-md-6 col-12">
        <h3>Gifts</h3>
        </div>
             <div class="sort col-lg-2 col-md-3 col-12">
                <div class="dropdown">
                    <a class="btn btn-primary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Sort Gifts
                    </a>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                        <asp:LinkButton ID="LinkButton1" OnClick="LinkButton1_Click" class="dropdown-item" runat="server"><span class="fas fa-sort-amount-down"></span></asp:LinkButton>
                        <asp:LinkButton ID="LinkButton2" OnClick="LinkButton2_Click" class="dropdown-item" runat="server"><span class="fas fa-sort-amount-up"></span></asp:LinkButton>
                    </div>
                </div>
            </div> 
        <div class="col-lg-2 col-md-3 col-12">
  <div class="dropdown" id="Categories">
 <%-- <a class="btn btn-primary dropdown-toggle" href="#" role="button" id="Categoriess" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
 Filter By:
  </a>--%>
                      <asp:DropDownList  OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" style="color:#4C71DE; font-weight:bold;outline:0px; width:90%; border:none; background-color:#eee;" AutoPostBack="true"  ID="ddlCategory" runat="server" EnableViewState="true">
                      </asp:DropDownList>
<%--                       <asp:DropDownList ID="ddlCategory" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged1" style="color:#4C71DE; font-weight:bold;outline:0px; width:90%; border:none; background-color:#eee;" runat="server">
                       </asp:DropDownList>--%>
<%--  <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
      <asp:LinkButton ID="wedding" OnClick="wedding_Click" class="dropdown-item" runat="server">Wedding</asp:LinkButton>
      <asp:LinkButton ID="BirthdayG" OnClick="BirthdayG_Click" class="dropdown-item" runat="server">Birthday</asp:LinkButton>
    <asp:LinkButton ID="Frindship" OnClick="Frindship_Click" class="dropdown-item" runat="server">Frindship</asp:LinkButton>  
    <asp:LinkButton ID="Graduation" OnClick="Graduation_Click" class="dropdown-item" runat="server">Graduation</asp:LinkButton> 
    <asp:LinkButton ID="Valintine" OnClick="Valintine_Click" class="dropdown-item" runat="server">Valintine</asp:LinkButton>  
    <asp:LinkButton ID="Flowers" OnClick="Flowers_Click" class="dropdown-item" runat="server">Flowers</asp:LinkButton>
</div>--%>
          </div>
       </div>
       </div>
       
  <div class="card-body">
      <div class="row">
          <div class="col-lg-8">
              <h5 class="Pricee">Filter by Price</h5>
          </div>
          <div class="Price col-lg-4 row">
              <div class="col-md-4 col-12">
                  <asp:TextBox ID="txtMAx" style="outline:0px; width:100px" class="MAX" placeholder="Max" runat="server" />
              </div>
              <div class="col-md-4 col-12">
                  <asp:TextBox ID="txtMin" style="outline:0px; width:100px" class="Min" placeholder="Min" runat="server" />
              </div>
              <div class="OK col-md-4">
              <asp:Button ID="OK" runat="server" Text="OK"  class="btn btn-outline-primary btnokprice" OnClick="OK_Click"></asp:Button>
          </div>
          </div>
      </div>

      <div class="seconddiv" style="margin-top:20px; height:100%">
          <div class="container">
              <div class="row" >
                  <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                   <div style="display:flex; justify-content:center;text-align:center">
                  <asp:Label id="lblgift" runat="server" style="color:red; font-size:30px; " Text=""></asp:Label>
                  </div>
                 <div style="display:flex; text-align: center; justify-content:center;">
                    <asp:Label ID="Label3" runat="server" style="color:red; font-size:30px; text-align:center" Text=""></asp:Label>
                   </div>
                  <asp:Repeater OnItemDataBound="rpGift_ItemDataBound" OnItemCommand="rpGift_ItemCommand" ID="rpGift" runat="server">
                      <ItemTemplate>
                          <div class="row">
                          <div class="col-lg-4 col-md-6 col-12">
                              <div class="Giftty1">
                                  <div class="card" style="width: 17rem; margin-left:60px";>
                                      <div class="card-Pic">
                                          <div class="Pic">
                                              <asp:Image ID="imgGift"   ImageUrl='<%# "~/img/"+  Eval("gift_image") %>' Width="100%" CssClass="B1"  runat="server" />
                                             <%-- <asp:Image ImageUrl='<%#  "~/img/"+  Eval("gift_image") %>' Width="100%" ID="imgGift" runat="server" CssClass="B1" />--%>
<%--                                              <div class="overlay">
                                                  <a href="#">
                                                      <div class="text">Giffty</div>
                                                  </a>
                                              </div>--%>
                                          </div>
                                      </div>
                                      <div class="details">
                                          <h1 class="NameGIFT">
                                              <asp:TextBox CssClass="boxgift" Font-Bold="true" Text='<%# Eval("gift_Name") %>' ID="txtname" runat="server" />

                                          </h1>
                                          <h4 class="price" style="margin-top:-20px">
                                              <asp:TextBox Text='<%#  "$" + Eval  ("Price")   %> ' ID="txtprice" Font-Size="15px" runat="server" CssClass="boxgift" />

                                          </h4>
                                           <div class="earaa txtdivdesc" style="margin-top:-20px; ">

                                              <asp:TextBox Text='<%# Eval("Description") %>'   Font-Size="16px" ID="txtDescription" runat="server" CssClass="boxgift txtdesc" />
                                          </div>

                                          <div class="GiftCategory">
                                              <asp:DropDownList ID="ddlCategory" Font-Size="16px" style="color:#4C71DE; font-weight:bold;outline:0px; width:90%; border:none; background-color:#eee;" runat="server" CssClass="boxgift">
                                              </asp:DropDownList>
                                          </div>

                                          <div class="Edits">
                                              <div class="Updates">
                                                  <asp:HyperLink NavigateUrl='<%# "~/Update_Giffty.aspx?gift_id=" + Eval("gift_id") %>' ToolTip="Edit" Width="20px" Height="20px" Text='<i class="fas fa-edit fa-lg text-primary mr-3" aria-hidden="true" ></i>' runat="server" />
                                              </div>
                                              <div class="delete">
<%--                                               <asp:LinkButton ID="LinkButton1" CommandName="Delete" OnClientClick="javascript:if(!confirm('Delete this information? this will delete permanently'))return false;" CommandArgument='<%#Eval("gift_id") %>' runat="server">Delete</asp:LinkButton>--%>
                                          <%--        <asp:LinkButton CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px" ID="delete" OnClick="delete_Click" Text='<i class="fas fa-trash-alt fa-lg text-dark"></i>' runat="server" />--%>
                                                  <asp:LinkButton CommandArgument=  <%# Eval("gift_id") %>  ToolTip="Delete"  ID="btndelete"  Width="20px" Height="20px" CommandName="delete" runat="server"  OnClientClick="return confirm('Do you want to delete this gift')"><span  style="color:red;"  class='fas fa-trash-alt fa-lg '></span></asp:LinkButton>
                                           <%--  <asp:Button  CommandArgument=  <%# Eval("gift_id") %>  ToolTip="Delete"  ID="btndelete"  Width="20px" Height="20px" CommandName="delete" runat="server" Text="<i class='fas fa-trash-alt fa-lg text-dark'></i>" />--%>
<%--                                                  <asp:LinkButton ommandArgument=  <%# Eval("gift_id") %>  ToolTip="Delete"  ID="btndelete"  Width="20px" Height="20px" CommandName="delete" runat="server"><i class="fas fa-trash-alt fa-lg text-dark"></i></asp:LinkButton>--%>
                                                  <asp:Label ID="lblmsgdelete" runat="server" Text=""></asp:Label>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                          </div>
                          </div>
                              </div>
                      </ItemTemplate>
                  </asp:Repeater>

              </div>
          </div>
      </div>
         </div>
       </div>
        </div>
  

</asp:Content>
