<%@ Page Title="" Language="C#" MasterPageFile="~/views/admin/adminMaster.Master" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="cafemangement.views.admin.products" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class"container-fluid" style="margin-right:15px;">
        <div class="row">

        </div>
        <div class="row">
            <div class="col-md-4">
            <div class="row">
                <div class="col">

                </div>
                <div class="col">

                </div>
                <div class="col">

                </div>
            </div>
   
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Product Name</label>
    <input type="text" class="form-control" runat="server" id="ProductnameTb">

  </div>
     <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Product price</label>
    <input type="text" class="form-control" runat="server"  id="ProducpriceTb">

  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">categories</label>
      <asp:DropDownList ID="CatCb" class="form-control" runat="server"></asp:DropDownList>
  
  </div>
     <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Product quantity</label>
    <input type="text" class="form-control" runat="server"  id="qunatityTb">

  </div>
        <div class="row">
            <label id="ErrMsg" class="text-danger" runat="server"></label>
            <div class="col d-grid">
                <asp:Button ID="editbtn" runat="server" Text="Edit" class="btn btn-success btn-block " OnClick="editbtn_Click" />
            </div>
             <div class="col d-grid">
                <asp:Button ID="addbtn" runat="server" Text="Save" class="btn btn-warning btn-block " OnClick="addbtn_Click" />
            </div>
             <div class="col d-grid">
                <asp:Button ID="Delete" runat="server" Text="Delete" class="btn btn-danger btn-block " OnClick="Delete_Click" />
            </div>

        </div>
</form>
            </div>
            <div class="col-md-8">
                <h1>ProductList</h1>
                <asp:GridView ID="ProdutList" class="table table-bordered " runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="ProdutList_SelectedIndexChanged"></asp:GridView>

            </div>
        </div>

    </div>
</asp:Content>
