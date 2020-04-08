<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeFile="Repeter_Gift.aspx.cs" Inherits="WebApplication1.Repeter_Gift" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div class="Firstdiv">
                    <div class="container giftdiv">
                          <div class="row">
                                  <div class="col-md-6">
      <div class="dropdown" id="Categories">
  <a class="btn btn-primary dropdown-toggle" href="#" role="button" id="Categoriess" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
 Filter By:
  </a>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
      <asp:LinkButton ID="wedding" OnClick="wedding_Click" class="dropdown-item" runat="server">Wedding</asp:LinkButton>
      <asp:LinkButton ID="BirthdayG" OnClick="BirthdayG_Click" class="dropdown-item" runat="server">Birthday</asp:LinkButton>
<%--        <asp:LinkButton ID="Birthday" OnClick="Birthday_Click" class="dropdown-item" runat="server">Birthday</asp:LinkButton> --%>
    <asp:LinkButton ID="Frindship" OnClick="Frindship_Click" class="dropdown-item" runat="server">Frindship</asp:LinkButton>  
    <asp:LinkButton ID="Graduation" OnClick="Graduation_Click" class="dropdown-item" runat="server">Graduation</asp:LinkButton> 
    <asp:LinkButton ID="Valintine" OnClick="Valintine_Click" class="dropdown-item" runat="server">Valintine</asp:LinkButton>  
    <asp:LinkButton ID="Flowers" OnClick="Flowers_Click" class="dropdown-item" runat="server">Flowers</asp:LinkButton>
</div>
          </div>

                                 <div class="FilterPRice">
                                
                                     <h5 class="Pricee">Price</h5>
                                     <div class="Price">
                                     <input type="text" placeholder="MAX">
                                     <input type="text" placeholder="Min">
                                 </div>
                                 <div class="OK">
                                <%-- <input type="button" value="ok" class="BTNOK3">--%>
                                     <asp:Button ID="OK" runat="server" Text="OK"  CssClass="OKBTN" OnClick="OK_Click"></asp:Button>
                                </div>
                              </div>
                            </div>
                            <div class="col-md-6"> 
                              <div class="sort">   
                                  
                            
                               <%-- <ul>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Some Dropdown<b class="caret"></b></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="#"><i class="fas fa-sort-amount-up">A to Z</i></a></li>
                                            <li><a href="#"><i class="fas fa-sort-amount-down">Z to A</i></a></li>
                                           
                                        </ul>
                                    </li>
                                </ul>          --%> 
                                   <div class="dropdown">
  <a class="btn btn-primary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
 Sort Gifts
  </a>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
      <asp:LinkButton ID="LinkButton1" OnClick="LinkButton1_Click" class="dropdown-item" runat="server"><span class="fas fa-sort-alpha-up"></span></asp:LinkButton>
      <asp:LinkButton ID="LinkButton2" OnClick="LinkButton2_Click" class="dropdown-item" runat="server"><span class="fas fa-sort-alpha-up"></span></asp:LinkButton>
  </div>
</div>
                                    </div>                                     
                   </div>
              
               </div>
              </div>
                        <div class="DIVADD">
                         <h3 class="add">
                                    you can add another Editor: <a href="#">
                                        <asp:LinkButton ID="add" runat="server"><span class="fas fa-plus plus"></span></asp:LinkButton></a>
                                </h3>
             </div>
              <div class="seconddiv">
                <div class="container">
                    <div class="row">
                            <asp:Repeater OnItemDataBound="rpGift_ItemDataBound" ID="rpGift" runat="server">
                            <ItemTemplate>
                            <div class="col-md-6 giftcard">
                               
                                                    

                                <div class="divimage">
                                    <div class="imgDiv">
                                <asp:Image ImageUrl='<%# "~/img/" + Eval("gift_image") %>' Width="100%" ID="imgGift"  runat="server" CssClass="immmage"/>

                                    </div>
                                   <div class="giftName">
                                       
                                        <asp:TextBox CssClass="boxgift" Text='<%# Eval("gift_Name") %>' ID="txtname"  runat="server"  />

                                       
                                   </div>
                                   <div class="Discription">
                                       

                                         <asp:TextBox Text='<%# Eval("Description") %>' ID="txtDescription"  runat="server" CssClass="boxgift" />

                                    </div>
                                    <div class="GiftPrice">
                                            
                                        <asp:TextBox Text='<%# Eval("Price") %>' ID="txtprice" runat="server" CssClass="boxgift" />

                                                
                                        </div>
                                        <div class="GiftCategory">
                                                <asp:DropDownList ID="ddlCategory" runat="server" CssClass="boxgift">
                                    </asp:DropDownList>
                                            </div>

                                            <div class="Edits">
                                                <div class="Updates">
                         <asp:LinkButton CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px"  Text='<i class="fas fa-edit fa-lg text-success mr-3" aria-hidden="true" ></i>' runat="server" />
                                                </div>
                                                <div class="delete">
                          <asp:LinkButton CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px"  Text='<i class="fas fa-trash-alt fa-lg text-danger"></i>' runat="server" />
                                                </div>
                                            </div>
                                </div>
                                </div>
                              
                                      </ItemTemplate>
                                </asp:Repeater> 
                          
                          
              </div>

</asp:Content>
