using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cafemangement.views.seller
{
    public partial class viewbill : System.Web.UI.Page
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
    }
}