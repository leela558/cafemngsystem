<%@ Page Title="" Language="C#" MasterPageFile="~/views/admin/adminMaster.Master" AutoEventWireup="true" CodeBehind="seller.aspx.cs" Inherits="cafemangement.views.admin.seller" %>

<asp:Content ID="Content3" ContentPlaceHolderID="Mybody" runat="server">
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
    <label for="exampleInputEmail1" class="form-label">Seller Name</label>
    <input type="text" class="form-control" runat="server" id="selnameTb">

  </div>
     <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Seller Email</label>
    <input type="text" class="form-control" runat="server"  id="selemailTb">

  </div>
 <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Seller Phone no</label>
    <input type="text" class="form-control" runat="server"  id="selphonoTb">

  </div>
     <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Password</label>
    <input type="text" class="form-control" runat="server"  id="passwordTb">

  </div>
  
   
        <div class="row">
            <label id="ErrMsg" class="text-danger" runat="server"></label>
            <div class="col d-grid">
                <asp:Button ID="editbtn" runat="server" Text="Edit" class="btn btn-success btn-block " OnClick="editbtn_Click"  />
            </div>
             <div class="col d-grid">
                <asp:Button ID="addbtn" runat="server" Text="Save" class="btn btn-warning btn-block " OnClick="addbtn_Click" />
            </div>
             <div class="col d-grid">
                <asp:Button ID="deletebtn" runat="server" Text="Delete" class="btn btn-danger btn-block " OnClick="deletebtn_Click" />
            </div>

        </div>
</form>
            </div>
            <div class="col-md-8">
                <h1>Employees info</h1>
                <asp:GridView ID="SellerList" class="table table-bordered " runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="SellerList_SelectedIndexChanged"></asp:GridView>

            </div>
        </div>

    </div>
</asp:Content>
