using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuestionDemo_II
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            professional.Items.Add("软件技术");
            professional.Items.Add("移动互联应用技术");
            professional.Items.Add("计算机网络技术");
            professional.Items.Add("大数据技术与应用");
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            Response.Redirect("information.aspx?professional=" + professional.Text.Trim());
        }
    }
}