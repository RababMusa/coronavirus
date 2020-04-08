<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" Codefile="View_Orders.aspx.cs" Inherits="WebApplication1.View_Orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div style="min-height:1050px">
  <div >
       <div class="alert container " role="alert" style="width: 60%; background-color: #eee; color: #4C71DE; margin-top: 40px">
          <asp:label runat="server" text="Orders" style="font-weight: bold; display: block; font-size: 30px"></asp:label>
           </div>
   <nav class="navbar navbar-light bg-light  container" style="width:75%">
  <%--<a class="navbar-brand">Customers</a>--%>
       <div style="display:flex">
  <form class="form-inline">
      <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
      <asp:TextBox ID="txtordername" placeholder="Search" aria-label="Search" class="form-control mr-sm-2 btnsearchcustomer" runat="server"></asp:TextBox>
      <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" class="btn btn-outline-primary my-2 my-sm-0"  />
  </form>
   </div>
        <div class="dropdown">
  <a class="btn btn-primary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
 Sort Customers
  </a>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
      <asp:LinkButton ID="LinkButton1" OnClick="LinkButton1_Click" class="dropdown-item" runat="server"><span class="fas fa-sort-amount-down"></span></asp:LinkButton>
      <asp:LinkButton ID="LinkButton2" OnClick="LinkButton2_Click"  class="dropdown-item" runat="server"><span class="fas fa-sort-amount-up"></span></asp:LinkButton>
  </div>
</div>
</nav>
 </div>
     <div class="divgridcustomer" style=" height:997px; margin-top:20px"">
           <div style="display:flex; justify-content:center;">
            <asp:Label ID="Label3" runat="server" style="color:red; font-size:30px; " Text=""></asp:Label>
        </div>
          <div class="grideditor">
        <asp:GridView ID="GridView1"  AutoGenerateColumns="false"  CssClass="GridView-customer" runat="server" OnRowDeleting="GridView1_RowDeleting">
              <Columns>
                  <asp:TemplateField HeaderText="User ID">
                      <ItemTemplate>
                          <asp:Label ID="lblorderid" Text='<%# Eval("Ordre_ID") %>' runat="server" />
                      </ItemTemplate>
                  </asp:TemplateField>

                   <asp:TemplateField HeaderText="Gift Name">
                      <ItemTemplate>
                          <asp:Label Text='<%# Eval("Gift Name") %>' runat="server" />
                      </ItemTemplate>
                  </asp:TemplateField>

                      <asp:TemplateField HeaderText="Cutomer Name">
                      <ItemTemplate>
                          <asp:Label Text='<%# Eval("Cutomer Name") %>' runat="server" />
                      </ItemTemplate>
                  </asp:TemplateField>

                   <asp:TemplateField HeaderText="Price">
                      <ItemTemplate>
                          <asp:Label Text='<%# Eval("Price") %>' runat="server" />
                      </ItemTemplate>
                  </asp:TemplateField>

<%--
                   <asp:TemplateField HeaderText="Full Name">
                      <ItemTemplate>
                          <asp:Label Text='<%# Eval("FullName") %>' runat="server" />
                      </ItemTemplate>
                  </asp:TemplateField>--%>

                   <asp:TemplateField HeaderText="Quantity">
                      <ItemTemplate>
                          <asp:Label Text='<%# Eval("Quantity") %>' runat="server" />
                      </ItemTemplate>
                  </asp:TemplateField>

                    <asp:TemplateField HeaderText="Date">
                      <ItemTemplate>
                          <asp:Label Text='<%# Eval("Date") %>' runat="server" />
                      </ItemTemplate>
                  </asp:TemplateField>

                    

                <asp:TemplateField  HeaderText="Delete">
                    <ItemTemplate>
                      <asp:LinkButton CommandName="Delete" runat="server" ID="btndelcustomer"  OnClientClick="return confirm('Do you want to delete this order')"><span  style="color:red;"  class="fas fa-trash-alt "></span></asp:LinkButton>
                            </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
           </div>
         </div>
        </div>
</asp:Content>
