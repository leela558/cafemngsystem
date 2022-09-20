using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace cafemangement.views.admin
{
    public partial class viewbill1 : System.Web.UI.Page
    {
        model.functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new model.functions();
            if (!IsPostBack)
            {
                ShowBills();

            }
        }
        private void ShowBills()
        {
            string query = "select bilid,bildate as Date,selname as seller ,amount from billtbl join sellertbl on sellertbl.sellid = billtbl.seller";
            BillList.DataSource = Con.GetData(query);
            BillList.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Clear();
            Response.Buffer = true;
            Response.ContentType = "application/ms-excel";
            Response.AddHeader("content-disposition", "filename=bills.xls");
            Response.Charset = "";
            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);
            BillList.RenderControl(htw);
            Response.Output.Write(sw.ToString());
            Response.End();



        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            
        }
    }

}