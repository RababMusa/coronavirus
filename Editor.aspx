<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" Codefile="Editor.aspx.cs" Inherits="WebApplication1.Editor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  
    <div style="background-color:#F8F9FA;  min-height:1050px">
        <div class="alert container " role="alert" style="width: 60%; background-color:#eee; color:#4C71DE; margin-top:40px">
            <asp:label runat="server" text="Editor" style="font-weight:bold; display:block; font-size:30px"></asp:label>
             <asp:Label ID="Label1" runat="server" Text="" Style=" margin-top: 20px;font-weight:bold;">You Can Add Another Editor:<asp:HyperLink ID="HyperLink2" NavigateUrl="~/AddEditor.aspx" runat="server"><span class="fas fa-plus" style="margin-left:20px"></asp:HyperLink></asp:Label>
        </div>
         <nav class="navbar navbar-light bg-light  container navform" style="width:75%">
  <%--<a class="navbar-brand">Customers</a>--%>
       <div style="display:flex">
  <form class="form-inline">
      <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
      <asp:TextBox ID="txteditor" placeholder="Search" aria-label="Search" class="form-control mr-sm-2 btnsearchcustomer" runat="server"></asp:TextBox>
      <asp:Button ID="btneditor" runat="server" OnClick="btneditor_Click" Text="Search" class="btn btn-outline-primary my-2 my-sm-0"  />
  </form>
   </div>
        <div class="dropdown">
  <a class="btn btn-primary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
 Sort Customers
  </a>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
      <asp:LinkButton ID="linkatoz" OnClick="linkatoz_Click" class="dropdown-item"  runat="server"><span class="fas fa-sort-amount-down"></span></asp:LinkButton>
      <asp:LinkButton ID="linkztoa" OnClick="linkztoa_Click" class="dropdown-item"   runat="server"><span class="fas fa-sort-amount-up"></span></asp:LinkButton>
  </div>
</div>
</nav>
           <div style="display:flex; justify-content:center;">
            <asp:Label ID="lblmsgsearch" runat="server" style="color:red; font-size:30px; " Text=""></asp:Label>
        </div>
        <div class="grideditor">
             <asp:GridView ID="GridView1" AutoGenerateColumns="false" style="margin-top:20px" CssClass="GridView-customer "  DataKeyNames="User_ID" OnRowDeleting="GridView1_RowDeleting" runat="server">
             <Columns>
                   <asp:TemplateField HeaderText="Editor Name ">
                      <ItemTemplate>
                          <asp:Label ID="Label2" Text='<%#Eval("User_Name").ToString() +" "+ Eval("FullName").ToString() %>' runat="server" />
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText=" Email">
                      <ItemTemplate>
                          <asp:Label ID="Label3" Text='<%# Eval("Email") %>' runat="server" />
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText=" Address">
                      <ItemTemplate>
                          <asp:Label ID="Label4" Text='<%# Eval("Address") %>' runat="server" />
                      </ItemTemplate>
                  </asp:TemplateField>

                  <asp:TemplateField HeaderText=" Phone">
                      <ItemTemplate>
                          <asp:Label ID="Label5" Text='<%# Eval("Phone") %>' runat="server" />
                      </ItemTemplate>
                  </asp:TemplateField>


           

                <asp:TemplateField  HeaderText="Actions">
                    <ItemTemplate>
                         <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "UpdateEditor_Admin.aspx?User_ID=" + 
                                 Eval("User_ID") %>'   runat="server"><span class="fas fa-pencil-alt " ></asp:HyperLink>
                         <asp:LinkButton  runat="server" id="icondelete" CommandName="Delete" style="padding-left:20px" OnClientClick = " return confirm('Do you want to delete this editor?');" ><span style="color:red;"  class="fas fa-trash-alt"></span> </asp:LinkButton>

<%--  <asp:LinkButton  runat="server" id="LinkButton1" OnClick="LinkButton1_Click"><span class="fas fa-pencil-alt" style="padding-left:20px"></span> </asp:LinkButton>--%>
                          </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
            </div>
    </div>

</asp:Content>
