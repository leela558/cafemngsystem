<%@ Page Title="" Language="C#" MasterPageFile="~/views/admin/adminMaster.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="cafemangement.views.admin.Categories" %>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <center><h1>Categories List</h1></center>
     <div class"container-fluid " style="margin-right:15px;">
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
    <label for="exampleInputEmail1" class="form-label">Category Name</label>
    <input type="text" autocomplete="off" class="form-control" runat="server" id="CatnameTb">
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
            <div class="col-md-8" style="">
               <center><asp:GridView ID="Categorieslist" class="table table-bordered " runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="Categorieslist_SelectedIndexChanged"></asp:GridView></center>

            </div>
        </div>

    </div>
         </div>



</asp:Content>
