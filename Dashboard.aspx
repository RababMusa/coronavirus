<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="WebApplication1.Dashboard1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div style="min-height:1050px">
    <section class="sectionmain">
       <%-- <div class="alert container " role="alert" style="width: 72%; background-color: #eee; color: #4C71DE; margin-top: 40px">
          <asp:label runat="server" text="Dashboard" style="font-weight: bold; display: block; font-size: 30px"></asp:label>
           </div>--%>
    <div class="container-fluied">
      <div class="row">
        <div class="col-lg-3 col-md-6 col-12">
          <div class="boxone">
            <div class="divprice">
            <p class="pboxone">Earnings (monthly)</p>
            <p class="pricebox">$12,900</p>
          </div>
          <div class="divicon">
            <span class="fas fa-calendar calender"></span>
          </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 col-12">
          <div class="boxone boxtwo">
            <div class="divprice">
            <p class="pboxone  pboxtwo">Earnings (Yearly)</p>
            <p class="pricebox">$5900</p>
          </div>
          <div class="divicon">
            <span class="fas fa-calendar calender"></span>
          </div>
          </div>
        </div> 
         <div class="col-lg-3 col-md-6 col-12">
          <div class="boxone boxthree">
            <div class="divprice">
            <p class="pboxone pboxthree">Orders</p>
            <p class="pricebox">$900</p>
          </div>
          <div class="divicon">
            <span class="fas fa-comments calender"></span>
          </div>
          </div>
         </div>
         <div class="col-lg-3 col-md-6 col-12">
          <div class="boxone boxfour">
            <div class="divprice">
            <p class="pboxone pboxfour">Sales</p>
            <p class="pricebox">$11,000</p>
          </div>
          <div class="divicon">
            <span class="fas fa-dollar-sign calender"></span>
          </div>
          </div>
         </div>
      </div>
    </div>
        </section>
    <div class="container ">
      <div class="row">
        <div class="card col-lg-7 col-md-11">
          <div class="card-header">
            Earnings Overview
          </div>
          <div class="card-body">
              <div class="chartline" id='polynomial2_div'  ></div>
          </div>
        </div>
        <div class="card col-lg-4 col-md-11"  >
          <div class="card-header">
            Orders
          </div>
          <div class="card-body">
            <div id="donutchart"></div>
          </div>
        </div>
      </div>
      </div>
<div class="container-fluied divprogress">
  <div class="row"> 
  <div class="card col-lg-5 col-12" >
    <div class="card-header">
      Sales
    </div>
    <div class="card-body">
      <p class="">Flowers</p>
      <div class="progress">
        <div class="progress-bar progress-bar-striped" role="progressbar" style="width: 10%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
      </div>
      <p class="">Valintine Day</p>
      <div class="progress">
        <div class="progress-bar progress-bar-striped bg-success" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
      </div>
      <p class="">Birthday</p>
      <div class="progress">
        <div class="progress-bar progress-bar-striped bg-info" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
      </div>
      <p class="">Frindship</p>
      <div class="progress">
        <div class="progress-bar progress-bar-striped bg-warning" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
      </div>
      <p class="">Graduation</p>
      <div class="progress">
        <div class="progress-bar progress-bar-striped bg-danger" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
      </div>
    </div>
  </div>
  <div class="card col-lg-5 col-12">
    <div class="card-header">
      About Our System 
    </div>
    <div class="card-body aboutsystem">
    <img src="img/aboutsystem .jpg" style="height: 200px; width: 350px;">
    <p> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries</p>
    </div>
  </div>
  
</div>
<!-- <div class="row">
  <div class="col-sm-6">
    <div class="card ">
        <div class="card-header">
            Featured
          </div>
      <div class="card-body">
          <div id='polynomial2_div' style='width: 900px; height: 500px;'></div>
    </div>
    </div>
  </div>
  <div class="col-sm-6">
    <div class="card">
        <div class="card-header">
            Featured
          </div>
      <div class="card-body">
       
      </div>
    </div>
  </div>
</div> -->
</div>


    <script src="jQuery/jQuery.js"></script>
    <script src="jQuery/popper.js"></script>
    <script src="jQuery/bootstrap.min.js"></script>
    <script src="jQuery/functions.js"></script>
        </div>
</asp:Content>
