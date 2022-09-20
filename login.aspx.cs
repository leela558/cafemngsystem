using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace cafemangement.views
{
    public partial class login : System.Web.UI.Page
    {
        model.functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new model.functions();
            if (!IsPostBack)
            {
                //ShowCategories();

            }

        }
        public static int sid;
        public static string sname="";
        protected void loginbtn_Click(object sender, EventArgs e)
        {
            if(EmailTb.Value == "lk@gmail.com" && PasswordTb.Value =="123456")
            {
                Response.Redirect("admin/products.aspx");
            }
            else
            {
                string query = "select sellid,selname,selemail,selphone,selpass from sellertbl where selemail='{0}' and selpass='{1}'";
                    query = string.Format(query, EmailTb.Value, PasswordTb.Value);
                DataTable dt = Con.GetData(query);
                if(dt.Rows.Count ==0)
                    {
                    ErrMsg.InnerText = "username or password is in correct";
                    EmailTb.Value = "";
                }
                else
                {

                    sid =Convert.ToInt32(dt.Rows[0][0].ToString());
                    sname = dt.Rows[0][1].ToString();
                    Response.Redirect("seller/makebill.aspx");
                }

            }
        }
    }
}