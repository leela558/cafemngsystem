using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cafemangement.views.admin
{
    public partial class products : System.Web.UI.Page
    {
        model.functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new model.functions();
            if (!IsPostBack)
            {
                ShowProducts();
                GetCategories();
            }

        }
        private void ShowProducts()
        {
            string query = "select * from itemtbl";
            ProdutList.DataSource = Con.GetData(query);
            ProdutList.DataBind();
        }
        private void GetCategories()
        {
            string query = "select * from cattbl";
            CatCb.DataTextField = Con.GetData(query).Columns["catname"].ToString();
            CatCb.DataValueField = Con.GetData(query).Columns["catid"].ToString();
            CatCb.DataSource = Con.GetData(query);
            CatCb.DataBind();
        }

        protected void editbtn_Click(object sender, EventArgs e)
        {
            try
            {
                string pname = ProductnameTb.Value;
                string pprice = ProducpriceTb.Value;
                string pcat = CatCb.SelectedValue;
                string qty = qunatityTb.Value;
                string query = "update itemtbl set prname='{0}',prprice='{1}',prcat='{2}',prqty='{3}' where prid={4}";
                query = string.Format(query, pname, pprice, pcat, qty,ProdutList.SelectedRow.Cells[1].Text);
                Con.SetData(query);
                ShowProducts();
                ErrMsg.InnerText = "product updated";
            }
            catch (Exception ex)
            {
                ErrMsg.InnerText = ex.Message;

            }

        }

        protected void addbtn_Click(object sender, EventArgs e)
        {

            try
            {
                string pname = ProductnameTb.Value;
                string pprice = ProducpriceTb.Value;
                string pcat = CatCb.SelectedValue;
                string qty = qunatityTb.Value;
                string query = "insert into itemtbl values ('{0}','{1}','{2}','{3}')";
                query = string.Format(query,pname,pprice,pcat,qty);
                Con.SetData(query);
                ShowProducts();
                ErrMsg.InnerText = "product added";
            }
            catch (Exception ex)
            {
                ErrMsg.InnerText = ex.Message;

            }

        }

        protected void ProdutList_SelectedIndexChanged(object sender, EventArgs e)
        {
            ProductnameTb.Value = ProdutList.SelectedRow.Cells[2].Text;
            ProducpriceTb.Value = ProdutList.SelectedRow.Cells[3].Text;
            CatCb.SelectedValue = ProdutList.SelectedRow.Cells[4].Text;
            qunatityTb.Value = ProdutList.SelectedRow.Cells[5].Text;
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            try
            {
                string pname = ProductnameTb.Value;
                string pprice = ProducpriceTb.Value;
                string pcat = CatCb.SelectedValue;
                string qty = qunatityTb.Value;
                string query = "delete from itemtbl  where prid={0}";
                query = string.Format(query, ProdutList.SelectedRow.Cells[1].Text);
                Con.SetData(query);
                ShowProducts();
                ErrMsg.InnerText = "product  deleted";
            }
            catch (Exception ex)
            {
                ErrMsg.InnerText = ex.Message;

            }
        }
    }
}