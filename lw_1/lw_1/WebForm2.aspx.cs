using System;
using System.Web.UI.WebControls;
using System.Drawing;

namespace lw_1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        void Page_Load(object sender, EventArgs e)
        {
            this.Title = "Page 2";
            Literal literal = new Literal();
            this.Controls.Add(literal);
            literal.Text = Request.QueryString["result"];
        }
    }
}