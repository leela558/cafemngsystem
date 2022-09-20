using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Data.SqlClient;

namespace cafemangement.views.admin
{
    public partial class seller : System.Web.UI.Page
    {
        model.functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new model.functions();
            if(!IsPostBack)
            {
                ShowSellers();
            }
        }
        private void ShowSellers()
        {
            string query = "select * from sellertbl";
            SellerList.DataSource = Con.GetData(query);
            SellerList.DataBind();
        }

        protected void addbtn_Click(object sender, EventArgs e)
        {
            try
            {
                string sname = selnameTb.Value;
                string semail = selemailTb.Value;
                string sphono = selphonoTb.Value;
                string password = passwordTb.Value;
                string query = "insert into sellertbl values('{0}','{1}','{2}','{3}')";
                query = string.Format(query, sname, semail, sphono, password);
                Con.SetData(query);
                ShowSellers();
                ErrMsg.InnerText = "employee info added";
            }
            catch (Exception ex)
            {
                ErrMsg.InnerText = ex.Message;

            }
        }

        protected void SellerList_SelectedIndexChanged(object sender, EventArgs e)
        {
            selnameTb.Value = SellerList.SelectedRow.Cells[2].Text;
            selemailTb.Value = SellerList.SelectedRow.Cells[3].Text;
            selphonoTb.Value = SellerList.SelectedRow.Cells[4].Text;
            passwordTb.Value = SellerList.SelectedRow.Cells[5].Text;
        }

        protected void editbtn_Click(object sender, EventArgs e)
        {
            try
            {
                string sname = selnameTb.Value;
                string semail = selemailTb.Value;
                string sphono = selphonoTb.Value;
                string password = passwordTb.Value;
                string query = "update sellertbl set selname='{0}',selemail='{1}',selphone='{2}',selpass='{3}' where sellid={4}";
                query = string.Format(query, sname, semail, sphono, password, SellerList.SelectedRow.Cells[1].Text);
                Con.SetData(query);
                ShowSellers();
                ErrMsg.InnerText = "empolyee info edited";
            }
            catch (Exception ex)
            {
                ErrMsg.InnerText = ex.Message;

            }
        }

        protected void deletebtn_Click(object sender, EventArgs e)
        {
            try
            {
                string sname = selnameTb.Value;
                string semail = selemailTb.Value;
                string sphono = selphonoTb.Value;
                string password = passwordTb.Value;
                string query = "delete from sellertbl  where sellid={0}";
                query = string.Format(query, SellerList.SelectedRow.Cells[1].Text);
                Con.SetData(query);
                ShowSellers();
                ErrMsg.InnerText = "employee info deleted";
            }
            catch (Exception ex)
            {
                ErrMsg.InnerText = ex.Message;

            }
        }
    }
}