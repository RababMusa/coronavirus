<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" Codefile="View_Categories.aspx.cs" Inherits="WebApplication1.View_Categories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  <main style="background-color:#F8F9FA; min-height:1050px">
     
 
      <div class="alert container " role="alert" style=" width: 60%; background-color: #eee; color: #4C71DE; margin-top: 40px">
          <asp:label runat="server" text="Cateogories" style="font-weight: bold; display: block; font-size: 30px"></asp:label>
          <asp:label id="Label1" style="margin-top: 20px; font-weight: bold;" text="">You Can Add Another Categories:<asp:HyperLink ID="HyperLink2" NavigateUrl="~/Add_Category.aspx" runat="server"><span class="fas fa-plus" style="padding-left:20px"></asp:HyperLink></asp:label>
      </div>
        <nav class="navbar navbar-light bg-light container itemsss" style="width:75%">
  <%--<a class="navbar-brand">Customers</a>--%>
     
        <div style="display:flex" class="itemsss">
  <form class="form-inline">
      <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
      <asp:TextBox ID="txtsearchcategory" placeholder="Search" aria-label="Search" class="form-control mr-sm-2 btnsearchcustomer" runat="server"></asp:TextBox>
      <asp:Button  runat="server" id="btnsearchcategory"  OnClick="btnsearchcategory_Click" Text="Search" class="btn btn-outline-primary my-2 my-sm-0"  />
  </form>
   </div>
        <div class="dropdown">
  <a class="btn btn-primary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
 Sort Customers
  </a>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
      <asp:LinkButton ID="LinkButton1"  OnClick="LinkButton1_Click" class="dropdown-item" runat="server"><span class="fas fa-sort-amount-down"></span></asp:LinkButton>
      <asp:LinkButton ID="LinkButton2"  OnClick="LinkButton2_Click" class="dropdown-item" runat="server"><span class="fas fa-sort-amount-up"></span></asp:LinkButton>
     
       </div>
</div>
</nav>
       <div style="display:flex; justify-content:center;">
            <asp:Label ID="Label3" runat="server" style="color:red; font-size:30px; " Text=""></asp:Label>
        </div>
        <div class="grideditor">
           <asp:GridView ID="GridView1" style="margin-top:20px" runat="server" AutoGenerateColumns="false"  CssClass="GridView-customer" DataKeyNames="Category_ID" OnRowDeleting="GridView1_RowDeleting">
         <Columns>
               <asp:TemplateField HeaderText="Category Name">
                      <ItemTemplate>
                          <asp:Label Text='<%# Eval("Category_Name") %>' runat="server" />
                      </ItemTemplate>
                  </asp:TemplateField>
                       <asp:TemplateField HeaderText="Image">
                   <ItemTemplate>
                       <asp:Image ID="Image1" ImageUrl='<%# "~/img/"+  Eval("Category_image") %>' Width="50" runat="server" />
                   </ItemTemplate>
                  </asp:TemplateField>
               <asp:TemplateField  HeaderText="Actions">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "Update_category.aspx?Category_ID=" + Eval("Category_ID") %>'   runat="server"><span class="fas fa-pencil-alt "></asp:HyperLink>
                       <asp:LinkButton  runat="server" CommandName="Delete" id="icondelcategoyr" OnClientClick = " return confirm('Do you want to delete this category?');"><span  class="fas fa-trash-alt "  style="color:red;padding-left:20px" ></span> </asp:LinkButton>
                       <asp:LinkButton  runat="server" id="iconeditcategory" OnClick="iconeditcategory_Click"></span> </asp:LinkButton>
                 <%--      <asp:LinkButton runat="server" ID="iconviewcategory" OnClick="iconviewcategory_Click"><span class="fas fa-eye" style="padding-left:20px"></span></asp:LinkButton>--%>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
    </asp:GridView>
           </div>
      </main>
</asp:Content>
