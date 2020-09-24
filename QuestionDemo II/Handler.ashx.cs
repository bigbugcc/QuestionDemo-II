using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;

namespace QuestionDemo_II
{
    /// <summary>
    /// Handler 的摘要说明
    /// </summary>
    public class Handler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/html;charset=utf-8";


            var fun = HttpContext.Current.Request["method"];
            //response.setHeader("content-type", "text/html; charset=UTF-8");

            //context.Response.Write("Hello World");
            if (fun == "storage")
            {
                context.Response.Write(DataSave());
            }
        }




        public bool IsReusable
        {
            get
            {
                return false;
            }
        }

        public static string DataSave()
        {
            using (db.StuEntities stuEntities = new db.StuEntities())
            {
                var id = HttpContext.Current.Request["stuid"];
                var start = stuEntities.Stus.Any(s => s.stuid == id);

                if (start) {
                    Debug.WriteLine("已存在");
                    return "existing";
                }
                var pro = HttpUtility.UrlDecode(HttpContext.Current.Request.UrlReferrer.Query.Split('=')[1]);
                db.Stu stuMsg = new db.Stu();


                stuMsg.stuid = HttpContext.Current.Request["stuid"].ToString().Trim();
                stuMsg.professional = pro;
                stuMsg.name = HttpContext.Current.Request["name"].ToString().Trim();
                stuMsg.gender = HttpContext.Current.Request["gender"].ToString().Trim();
                stuMsg.nationality = HttpContext.Current.Request["nationality"].ToString().Trim();
                stuMsg.number = HttpContext.Current.Request["number"].ToString().Trim();
                stuMsg.InternshipType = HttpContext.Current.Request["shixianpai"].ToString().Trim();
                stuMsg.InternshipLocation = HttpContext.Current.Request["shixididian"].ToString().Trim();
                stuMsg.money = HttpContext.Current.Request["money"].ToString().Trim();
                stuMsg.accommodation = HttpContext.Current.Request["zhusu"].ToString().Trim();
                stuMsg.msg = HttpContext.Current.Request["msg"].ToString().Trim();
                stuMsg.date = DateTime.Now;
                stuEntities.Stus.Add(stuMsg);
                try
                {
                    if (stuEntities.SaveChanges() > 0)
                    {
                        return "success";
                    }
                    else
                    {
                        return "failure";
                    }
                }
                catch (Exception ex)
                {

                    throw;
                }

            }
        }
    }

    /*
  var pro = $('#pro').val();
var name = $('#name').val();
var stuid = $('#stuid').val();
var gender = $('#gender').val();
var nationality = $('#nationality').val();
var number = $('#number').val();
var shixianpai = $('#shixianpai').val();
var shixididian = $('#shixididian').val();
var money = $('#money').val();
var zhusu = $('#zhusu').val();

 */
}
