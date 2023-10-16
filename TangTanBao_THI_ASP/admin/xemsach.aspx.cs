using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TangTanBao_THI_ASP.admin
{
    public partial class xemsach : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            FileUpload fileupload = (FileUpload)DetailsView1.FindControl("Fileupload1");
            if (fileupload.ToString() != "")
            {
                fileupload.SaveAs(MapPath("/image/" + fileupload.FileName));
            }
        }

        protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            FileUpload fileupload = (FileUpload)DetailsView1.FindControl("Fileupload1");
            if (fileupload.ToString() != "")
            {
                e.Values["TenFileAnh"] = fileupload.FileName;
            }
        }

        protected void DetailsView1_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
        {
            Response.Redirect("~/admin/sach.aspx");
        }
    }
}