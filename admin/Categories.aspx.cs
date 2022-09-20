using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cafemangement.views.admin
{
    public partial class Categories : System.Web.UI.Page
    {
        model.functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new model.functions();
            if (!IsPostBack)
            {
                ShowCategories();
          
            }

        }
        private void ShowCategories()
        {
            string query = "select * from cattbl";
            Categorieslist.DataSource = Con.GetData(query);
            Categorieslist.DataBind();
        }


        protected void addbtn_Click(object sender, EventArgs e)
        {
            try
            {
                string Cname = CatnameTb.Value;
              
                string query = @"insert into cattbl values('{0}')";
                query = string.Format(query, Cname);
                Con.SetData(query);
                ShowCategories();
                ErrMsg.InnerText = "category added";
                CatnameTb.Value = "";
            }
            catch (Exception ex)
            {
                ErrMsg.InnerText = ex.Message;

            }

        }

        protected void Categorieslist_SelectedIndexChanged(object sender, EventArgs e)
        {
            CatnameTb.Value = Categorieslist.SelectedRow.Cells[2].Text;
        }

        protected void editbtn_Click(object sender, EventArgs e)
        {
            try
            {
                string Cname = CatnameTb.Value;

                string query = @"update cattbl set catname = ('{0}')";
                query = string.Format(query, Cname);
                Con.SetData(query);
                ShowCategories();
                ErrMsg.InnerText = "category added";
                CatnameTb.Value = "";
            }
            catch (Exception ex)
            {
                ErrMsg.InnerText = ex.Message;

            }

        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            try
            {
                string Cname = CatnameTb.Value;

                string query = @"delete  from  cattbl where catid=('{0}')";
                query = string.Format(query, Categorieslist.SelectedRow.Cells[2].Text );
                Con.SetData(query);
                ShowCategories();
                ErrMsg.InnerText = "category added";
                CatnameTb.Value = "";
            }
            catch (Exception ex)
            {
                ErrMsg.InnerText = ex.Message;

            }
        }

       
    }
}