using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lw_2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ScriptManager.ScriptResourceMapping.AddDefinition("jquery", new ScriptResourceDefinition
            {
                Path = "~/scripts/jquery-1.7.2.min.js",
            });
        }
        
        protected void TreeView1_SelectedNodeChanged1(object sender, EventArgs e)
        {
            if (TreeView1.SelectedNode.Value == "Операнд №1")
            {
                Wizard1.ActiveStepIndex = 0;
            }
            if (TreeView1.SelectedNode.Value == "Операнд №2")
            {
                Wizard1.ActiveStepIndex = 1;
            }
            if (TreeView1.SelectedNode.Value == "Операция")
            {
                Wizard1.ActiveStepIndex = 2;
            }
            if (TreeView1.SelectedNode.Value == "Результат")
            {
                Wizard1.ActiveStepIndex = 3;
            }
        }
        protected void Wizard_FinishButtonClick1(object sender, WizardNavigationEventArgs e)
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
            Site1 master = (Site1)Master;
            master.lab = result.ToString();
        }
    }
}