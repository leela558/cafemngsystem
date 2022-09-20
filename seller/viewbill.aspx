<%@ Page Title="" Language="C#" MasterPageFile="~/views/seller/selmaster.Master" AutoEventWireup="true" CodeBehind="viewbill.aspx.cs" Inherits="cafemangement.views.seller.viewbill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="container-fluid">
        <div class="row">

        </div>
        <div class="row">
            <div class="col-mdd-2">

            </div>
            <div class="col-md-8">
                <asp:GridView ID="BillList" class="table table-bordered " runat="server"></asp:GridView>

            </div>
            <div class="col-md-2">

            </div>
        </div>
      
        </div>
    </div>
</asp:Content>
