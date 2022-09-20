using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace cafemangement.model
{
    public class functions
    {
        private SqlConnection Con;
        private SqlCommand cmd;
        private DataTable dt;
        private string constr;
        private SqlDataAdapter sda;

        public int SetData(string query)
        {
            int cnt = 0;
            if(Con.State == ConnectionState.Closed)
            {
                Con.Open();
            }
            cmd.CommandText = query;
            cnt = cmd.ExecuteNonQuery();
            Con.Close();
            return cnt;
        }
        public DataTable GetData(string query)
        {
           dt = new DataTable();
            sda= new SqlDataAdapter(query, constr);
            sda.Fill(dt);
            return dt;
        }
        public functions()
        {
            constr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\leela\Documents\cafemng1.mdf;Integrated Security=True;Connect Timeout=30";
            Con = new SqlConnection(constr);
            cmd = new SqlCommand();
            cmd.Connection = Con;
        }
    }
}