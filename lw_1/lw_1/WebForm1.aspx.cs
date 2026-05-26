using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lw_1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ScriptManager.ScriptResourceMapping.AddDefinition("jquery", new ScriptResourceDefinition
            {
                Path = "~/Content/Js/jquery-3.2.1.min.js",
            });
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            sbyte value1 = sbyte.Parse(TextBox1.Text);
            decimal value2 = decimal.Parse(TextBox2.Text);
            if (RadioButtonList1.SelectedValue == "+")
            {
                if (CheckBox1.Checked)
                {
                    Response.Write((Convert.ToByte(Math.Abs(value1)) + value2).ToString());   
                }
                else
                {
                    Response.Write((value1 + value2).ToString());
                }
                
            }
            else if (RadioButtonList1.SelectedValue == "-")
            {
                if (CheckBox1.Checked)
                {
                    Response.Write((Convert.ToByte(Math.Abs(value1)) - value2).ToString());
                }
                else
                {
                    Response.Write((value1 + -value2).ToString());
                }
            }
            else if (RadioButtonList1.SelectedValue == "*")
            {
                if (CheckBox1.Checked)
                {
                    Response.Write((Convert.ToByte(Math.Abs(value1)) * value2).ToString());
                }
                else
                {
                    Response.Write((value1 * value2).ToString());
                }
            }
            else
            {
                if (CheckBox1.Checked)
                {
                    Response.Write((Convert.ToByte(Math.Abs(value1)) / value2).ToString());
                }
                else
                {
                    Response.Write((value1 / value2).ToString());
                }
            }
        }

        protected void Unnamed2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            try
            {
                args.IsValid = (int.Parse(args.Value) % 2 == 0);
            }
            catch
            {
                args.IsValid = false;
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            sbyte value1 = sbyte.Parse(TextBox1.Text);
            decimal value2 = decimal.Parse(TextBox2.Text);
            decimal result;
            if (RadioButtonList1.SelectedValue == "+")
            {
                if (CheckBox1.Checked)
                {
                    result = ((Convert.ToByte(Math.Abs(value1)) + value2));
                }
                else
                {
                    result = ((value1 + value2));
                }

            }
            else if (RadioButtonList1.SelectedValue == "-")
            {
                if (CheckBox1.Checked)
                {
                    result = ((Convert.ToByte(Math.Abs(value1)) - value2));
                }
                else
                {
                    result = ((value1 + -value2));
                }
            }
            else if (RadioButtonList1.SelectedValue == "*")
            {
                if (CheckBox1.Checked)
                {
                    result = ((Convert.ToByte(Math.Abs(value1)) * value2));
                }
                else
                {
                    result = ((value1 * value2));
                }
            }
            else
            {
                if (CheckBox1.Checked)
                {
                    result = ((Convert.ToByte(Math.Abs(value1)) / value2));
                }
                else
                {
                    result = ((value1 / value2));
                }
            }
            Response.Redirect("WebForm2.aspx?result=" + result.ToString());
        }
    }
}