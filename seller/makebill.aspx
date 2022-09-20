<%@ Page Title="" Language="C#" MasterPageFile="~/views/seller/selmaster.Master" AutoEventWireup="true" CodeBehind="makebill.aspx.cs" Inherits="cafemangement.views.seller.makebill" %>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="row">
                    <div class="col">
                         <div class="mb-3">
                            <label for="ProductnameTb" class="form-label">Product  Name</label>
                                <input type="text" autocomplete="off" class="form-control" runat="server" id="ProductnameTb">
                     </div>
                    </div>
                     <div class="col">
                         <div class="mb-3">
                            <label for="ProductnameTb" class="form-label">Product  Price</label>
                                   <input type="text" autocomplete="off" class="form-control" runat="server" id="ProducpriceTb">
                                    </div>
                            </div>
                      <div class="row">
                         <div class="col">
                         <div class="mb-3">
                                <label for="ProductnameTb" class="form-label">Product  Quantity</label>
                                    <input type="text" autocomplete="off" class="form-control" runat="server" id="qtyTb">
                            </div>
                            </div>
                     
                  


              <div class="row">
            <label id="ErrMsg" class="text-danger" runat="server"></label>
            <div class="col d-grid">
                <asp:Button ID="Addtobillbtn" runat="server" Text="Add to bill" class="btn btn-success btn-block " OnClick="Addtobillbtn_Click"  />
            </div>
             <div class="col d-grid">
                <asp:Button ID="resetbtn" runat="server" Text="Reset" class="btn btn-warning btn-block "  />
            </div>

              </div>

                </div>
            <div class="row">
                <h1>ProductList</h1>
                <asp:GridView ID="ProdutList" class="table table-bordered " runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="ProdutList_SelectedIndexChanged"></asp:GridView>
            </div>
                    </div>
                 </div>
                    <div class="col-md-7">
                        <h5 class="text-center">user bill</h5>
                <asp:GridView ID="bill" class="table table-bordered table-light table-hover" runat="server"></asp:GridView>
                 <div  class="row">
                     <div class="col-4">

                     </div>
                     <div class="col-8">
                         <label id="totaltbl" class="text-dark h5 text-center" runat="server"></label>
                         <asp:Button ID="addbtn" runat="server" Text="Save Bill" Class="btn btn-warning  btn-block" OnClick="addbtn_Click" />
                     </div>
                 </div>
                     </div>
                    </div>
    </div>
</div>

</asp:Content>
