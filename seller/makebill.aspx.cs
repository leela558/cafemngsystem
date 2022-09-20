using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace cafemangement.views.seller
{
    public partial class makebill : System.Web.UI.Page
    {
        model.functions Con; 
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new model.functions();
            if (!IsPostBack)
            {
                ShowProducts();
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[5]
                    {
                    new DataColumn("id"),
                    new DataColumn("product"),
                    new DataColumn("price"),
                    new DataColumn("Quantity"),
                    new DataColumn("total")
                });
                ViewState["bill"] = dt;
                this.BindGrid();


            }
        }
        private void BindGrid()
        {
            bill.DataSource = ViewState["bill"];
            bill.DataBind();
        }
        private void ShowProducts()
        {
            string query = "select * from itemtbl";
            ProdutList.DataSource = Con.GetData(query);
            ProdutList.DataBind();
        }
        int grandtoatal;
        public static int amount;
        int Seller = login.sid;
        private void insertbill()
        {
            DateTime date = DateTime.Now;
            try
            {
                
                int amt = amount;
                string query = "insert into billtbl values('{0}','{1}','{2}')";
                query = string.Format(query,date, Seller, amt);
                Con.SetData(query);
                ShowProducts();
                ErrMsg.InnerText = "bill updated";
            }
            catch(Exception ex)
            {
                ErrMsg.InnerText = ex.Message;
            }
        }

        protected void Addtobillbtn_Click(object sender, EventArgs e)
        {
            int total = Convert.ToInt32(qtyTb.Value) * Convert.ToInt32(ProducpriceTb.Value);
            DataTable dt = (DataTable)ViewState["bill"];
            dt.Rows.Add(
            bill.Rows.Count + 1,
            ProductnameTb.Value,
            ProducpriceTb.Value,
            qtyTb.Value,
            total
            );
            ViewState["bill"] = dt;
            this.BindGrid();
            grandtoatal = 0;
            for(int i=0;i<=bill.Rows.Count-1;i++)
            {
                grandtoatal = grandtoatal + Int32.Parse(bill.Rows[i].Cells[4].Text);
            }
            amount = grandtoatal;
            totaltbl.InnerText = "Rs  " + grandtoatal;
        }

        protected void ProdutList_SelectedIndexChanged(object sender, EventArgs e)
        {
            ProductnameTb.Value = ProdutList.SelectedRow.Cells[2].Text;
            ProducpriceTb.Value = ProdutList.SelectedRow.Cells[3].Text;
            

        }

        protected void addbtn_Click(object sender, EventArgs e)
        {
            insertbill();
            Response.Clear();
            Response.Buffer = true;
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=bill.pdf");
            Response.Charset = "";
            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);
            bill.RenderControl(htw);
            Response.Output.Write(sw.ToString());
            Response.End();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
    }
}