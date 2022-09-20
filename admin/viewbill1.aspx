<%@ Page Title="" Language="C#" MasterPageFile="~/views/admin/adminMaster.Master" AutoEventWireup="true" CodeBehind="viewbill1.aspx.cs" Inherits="cafemangement.views.admin.viewbill1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
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
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
</asp:Content>
