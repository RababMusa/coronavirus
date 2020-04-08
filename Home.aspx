<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="WebApplication1.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link href="css%20Home/bootstrap.min.css" rel="stylesheet" />

    <link href="css%20Home/style.css" rel="stylesheet" />
    <link href="css%20Home/media.css" rel="stylesheet" />
    <link href="css%20Home/all.css" rel="stylesheet" />
     <link href="https://fonts.googleapis.com/css?family=Paytone+One&display=swap" rel="stylesheet">
    <title>UserPart</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <script src="js/jQuery.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/function.js"></script>
     <div class="hadder">
            <header>
                <div class="navbar1">
                        <nav class="navbar navbar-expand-lg navbar-dark ">
                                
                                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                                  <span class="navbar-toggler-icon"></span>
                                </button>
                                <div class="collapse navbar-collapse" id="navbarText">
                                  <ul class="navbar-nav mr-auto">
                                    <li class="nav-item active">
                                      <a class="nav-link" href="#"><span class="fab iconnavone fa-facebook-square"></span> <span class="sr-only">(current)</span></a>
                                    </li>
                                    <li class="nav-item">
                                      <a class="nav-link" href="#"><span class="fab iconnavone fa-instagram insta"></span></a>
                                    </li>
                                    <li class="nav-item">
                                      <a class="nav-link" href="#"><span class="fab iconnavone fa-twitter-square"></span></a>
                                    </li>
                                  </ul>
                                  
                                  <span class="navbar-text ">
                                   <span class="fas fa-phone-alt iconnavone">  059-915-8762 </span>
                                 
                                  </span>
                                  <span class="navbar-text">
<%--                                    <span class="fas fa-user-alt iconnavone"></span>--%>
                                       
                                      <asp:HyperLink ID="linkuser" NavigateUrl="~/Login.aspx" runat="server"><span class="fas fa-user-alt iconnavone"></span></asp:HyperLink>
                                  </span>
                                  <span class="navbar-text">
                                    <span class="fas fa-shopping-cart iconnavone" ></span>
                                  </span>
                                </div>
                              </nav>
                </div>
                <div class="navbar2">
                    <nav class="navbar navbar-light bg-light">
                        <a class="navbar-brand">
<%--                            <img class="logo" src="img/logo.png"/>--%>
                            <img class="logo" src="img/logonew.png" />
                            <span style="color: white;">Giffty</span>
                        </a>

                        <div class="form-inline">
<%--                          <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">--%>
                            <asp:TextBox ID="search" runat="server" CssClass="form-control mr-sm-2" placeholder="Search" aria-label="Search" TextMode="Search"></asp:TextBox>
                          <button class="btn  my-2 my-sm-0" type="submit">Search</button>
                        </div>
                      </nav>
                </div>
                <div class="navbar3">
                  <ul class="nav justify-content-between">
                    <li class="nav-item">
                      <a class="nav-link active" href="#">Wedding</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">Brithday</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">Frindship</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">Graduation</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">Valintineday</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">Flowers</a>
                    </li>
                    
                  </ul>
                </div>
            </header>
        </div>
  
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
                                             <asp:Image ID="imgGift" ImageUrl='<%# "~/img/"+  Eval("gift_image") %>' class="card-img B1" alt="..."  runat="server" />
                                        </div>
                                        <div class="col-md-8">
                                            <div class="card-body">
                                                <asp:Label class="card-title" ID="Label1" CssClass="boxgift"  Font-Bold="true" Text='<%# Eval("gift_Name") %>' runat="server" ></asp:Label>
                                               <asp:Label ID="Label2" class="card-text"  runat="server" CssClass="boxgift txtdesc" Text='<%# Eval("Description") %>'   Font-Size="16px"></asp:Label>
                                                 <p class="card-text"><span class="fas fa-cart-plus"></span><small class="text-muted">Price:  
                                                <asp:Label ID="Label3" runat="server"  CssClass="boxgift" Font-Size="15px" Text='<%#  "$" + Eval  ("Price")   %> '></asp:Label>  </small></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </section>
<%--<h1 class="titlegift ">Customer Feedback</h1>
<section class="secfeedback">
  <div class="card  feedback mb-3" style="max-width: 18rem;">
  <div class="card-header"><span class="fas fa-comments"></span>Rabab Mousa</div>
  <div class="card-body">
    <h5 class="card-title">Good treatment</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
<div class="card feedback mb-3" style="max-width: 18rem;">
  <div class="card-header"><span class="fas fa-comments"></span>Asmaa Ahmed</div>
  <div class="card-body">
    <h5 class="card-title">High quality goods</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
<div class="card  feedback  mb-3" style="max-width: 18rem;">
  <div class="card-header"><span class="fas fa-comments"></span>Basema Qanan</div>
  <div class="card-body">
    <h5 class="card-title">Delivery speed </h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
<div class="card  feedback  mb-3" style="max-width: 18rem;">
    <div class="card-header"><span class="fas fa-comments"></span>Osma Khatib</div>
    <div class="card-body">
      <h5 class="card-title">Suitable prices</h5>
      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    </div>
  </div>
</section>--%>
<div class="card text-center">
    <div class="card-body foot">
      <h5 class="card-title">Giffty Shop</h5>
      <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
      <a href="#" class="btn ">Go to bove</a>
    </div>
    <div class="card-footer text-muted">
     <p><small>© copyright Giffty 2019</small></p> 
      <a class="asocial" href="#"><span class="fab fa-twitter"></span></a>
      <a class="asocial" href="#"><span class="fab fa-instagram"></span></a>
      <a class="asocial" href="#"><span class="fab fa-facebook-f"></span></a>
    </div>
  </div>
        </div>
    </form>
</body>
</html>--%>
                  </div>
    </form>
</body>
</html>
