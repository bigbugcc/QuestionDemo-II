using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuestionDemo_II
{
    public partial class End : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var status = Request.QueryString["method"];
            if (status == "success")
            {
                Image1.ImageUrl = "/Scripts/img/checkmark.png";
                endLable.Text = "提交成功";
            }
            else if(status == "failure")
            {
                Image1.ImageUrl = "/Scripts/img/delete.png";
                endLable.Text = "提交失败";

            }
            else if (status == "existing")
            {
                Image1.ImageUrl = "/Scripts/img/delete.png";
                endLable.Text = "您已经提交问卷，请不要再次提交";

            }


        }
    }
}