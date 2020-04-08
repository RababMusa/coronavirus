<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeFile="Home1.aspx.cs" Inherits="WebApplication1.Home1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="img/slider3.png" class="d-block w-100" alt="...">
          <div class="carousel-caption d-none d-md-block">
              <h5>Many Giffts With Suitable Prices</h5>
              <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
            </div>
        </div>
        <div class="carousel-item">
          <img src="img/slider4.png" class="d-block w-100" alt="...">
          <div class="carousel-caption d-none d-md-block">
              <h5>High quality goods</h5>
              <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
            </div>
        </div>
       <%-- <div class="carousel-item">
          <img src="img/33.jpeg" class="d-block w-100" alt="...">
          <div class="carousel-caption d-none d-md-block">
              <h5>Delivery speed </h5>
              <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
            </div>
        </div>--%>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
    <h1 class="titlegift ">All Categories</h1>
       <div>
           <div class="container">
                <div class="row">
               <asp:Repeater ID="repeatercategory" runat="server">
                   <ItemTemplate>
                       <div class="row">
                           <div class="col-lg-3 col-md-6 col-12">
                               <div>
                                   <div class="card border-0 shadow" style="width: 17rem; margin-left:60px";>
                                       <a href=""></a>
                                       <asp:Image ID="Image2" class="card-img-top" alt="..." ImageUrl='<%# "~/img/"+  Eval("Category_image") %>' runat="server" />
                                       <div class="card-body text-center">
                                           <asp:Label Text='<%# Eval("Category_Name") %>' runat="server" class="card-title mb-0" />
                                           <%-- <div class="card-text text-black-50"> Graduation Gifts</div>--%>
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
    <!-- /.container -->
  <h1 class="titlegift ">Gifts Less than 200$</h1>
  <section  class="secgiftprice pricetwo">
      <div class="container">
          <div class="row">
              <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="row">
                      <div class=" col-md-6 col-12">
                          <div class="divcardgift">
                              <div class="card mb-3 " style="width: 500px;">
                                  <div class="row no-gutters">
                                      <div class="col-md-4">
                                       <asp:Image ID="imgGift" ImageUrl='<%# "~/img/"+  Eval("gift_image") %>' class="card-img B1" alt="..."  runat="server" />
                                      </div>
                                      <div class="col-md-8">
                                          <div class="card-body">
                                           <asp:Label ID="Label1" CssClass="boxgift"  class="card-title"  Font-Bold="true" Text='<%# Eval("gift_Name") %>' runat="server" ></asp:Label>
                                           <asp:Label ID="Label2" class="card-text"  runat="server" CssClass="boxgift txtdesc" Text='<%# Eval("Description") %>'   Font-Size="16px"></asp:Label>
                                              <p class="card-text"><span class="fas fa-cart-plus"></span><small class="text-muted">Price:  
                                                <asp:Label ID="Label3" runat="server"  CssClass="boxgift" Font-Size="15px" Text='<%#  "$" + Eval  ("Price")   %> '></asp:Label>  </small></p>
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
      </section>
<h1 class="titlegift ">Gifts More than 200$</h1>

            <section class="secgiftprice ">
                <div class="container">
                    <div class="row">
                        <asp:Repeater ID="Repeater2" runat="server">
                            <ItemTemplate>
                                <div class="card mb-3 " style="max-width: 540px;">
                                    <div class="row no-gutters">
                                        <div class="col-md-4">
                                             <asp:Image ID="Image1" ImageUrl='<%# "~/img/"+  Eval("gift_image") %>' class="card-img B1" alt="..."  runat="server" />
                                        </div>
                                        <div class="col-md-8">
                                            <div class="card-body">
                                                <asp:Label class="card-title" ID="Label4" CssClass="boxgift"  Font-Bold="true" Text='<%# Eval("gift_Name") %>' runat="server" ></asp:Label>
                                               <asp:Label ID="Label5" class="card-text"  runat="server" CssClass="boxgift txtdesc" Text='<%# Eval("Description") %>'   Font-Size="16px"></asp:Label>
                                                 <p class="card-text"><span class="fas fa-cart-plus"></span><small class="text-muted">Price:  
                                                <asp:Label ID="Label6" runat="server"  CssClass="boxgift" Font-Size="15px" Text='<%#  "$" + Eval  ("Price")   %> '></asp:Label>  </small></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </section>
</asp:Content>
