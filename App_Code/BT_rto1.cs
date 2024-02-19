using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

using System.Data.SqlClient;
using RTO.DT;

    public class BT_rto1
    {
        private int q_id;
        private string q_name;
        private string opt_1;
        private string opt_2;
        private string opt_3;
        private string ans;
        private string image;

        DT_rto1 dt_rt = new DT_rto1();

        public int Q_id
        {
           get
            {
                return q_id;
            }
            set
            {
                try
                {
                    q_id = value;
                    if (this.q_id.ToString() == "")
                    {
                        throw new Exception("Please q_Id ...");
                    }
                }
                catch (Exception e)
                {
                    throw new Exception(e.Message.ToString());
                }
            }
        }
        public string Q_name
        {
            get
            {
                return q_name;
            }
            set
            {
                try
                {
                    q_name = value;
                    if (this.q_name.ToString() == "")
                    {
                        throw new Exception("Please q_name ...");
                    }
                }
                catch (Exception e)
                {
                    throw new Exception(e.Message.ToString());
                }
            }
        }
        public string Opt_1
        {
            get
            {
                return opt_1;
            }
            set
            {
                try
                {
                    opt_1 = value;
                    if (this.opt_1.ToString() == "")
                    {
                        throw new Exception("Please opt_1 ...");
                    }
                }
                catch (Exception e)
                {
                    throw new Exception(e.Message.ToString());
                }
            }
        }
        public string Opt_2
        {
            get
            {
                return opt_2;
            }
            set
            {
                try
                {
                   opt_2 = value;
                    if (this.opt_2.ToString() == "")
                    {
                        throw new Exception("Please opt_2...");
                    }
                }
                catch (Exception e)
                {
                    throw new Exception(e.Message.ToString());
                }
            }
        }
        public string Opt_3
        {
            get
            {
                return opt_3;
            }
            set
            {
                try
                {
                    opt_3 = value;
                    if (this.opt_3.ToString() == "")
                    {
                        throw new Exception("Please opt_3 ...");
                    }
                }
                catch (Exception e)
                {
                    throw new Exception(e.Message.ToString());
                }
            }
        }
        public string Ans
        {
            get
            {
                return ans;
            }
            set
            {
                try
                {
                    ans= value;
                    if (this.ans.ToString() == "")
                    {
                        throw new Exception("Please ans...");
                    }
                }
                catch (Exception e)
                {
                    throw new Exception(e.Message.ToString());
                }
            }
        }
        public string Image
        {
            get
            {
                return image;
            }
            set
            {
                try
                {
                    image = value;
                    if (this.image.ToString() == "")
                    {
                        throw new Exception("Please image...");
                    }
                }
                catch (Exception e)
                {
                    throw new Exception(e.Message.ToString());
                }
            }
        }
        /////////////////////////////////////////////
        public int Insert_Data(BT_rto1 rt1)
        {
            int i = dt_rt.insert_data(rt1);
            return i;
        }
        /////////////////////////////////////////////
        public int Update_Data(BT_rto1 rt1)
        {
            int i = dt_rt.update_data(rt1);
            return i;
        }
        /////////////////////////////////////////////
        public int Delete_Data(BT_rto1 rt1)
        {
            int i = dt_rt.delete_data(rt1);
            return i;
        }
        /////////////////////////////////////////////
        public DataTable  Select_Data()
        {
            DataTable  dt = dt_rt.select_data();
            return dt;
        }
        /////////////////////////////////////////////
        public DataTable  Select_Data(string q)
        {
            DataTable  dt = dt_rt.select_data(q);
            return dt;
        }
    }
