//Name: Nicholas Regan
//Date: 12/1/2017
//Abstract: Week 13 Labs


using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_CalculatorDemo : CBasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CalculateButton_Click(object sender, EventArgs e)
    {
        if (txtValueBox1.Text.Length > 0 && txtValueBox2.Text.Length > 0)
        {
            double dblResult = 0;
            double dblValue1 = Convert.ToDouble(txtValueBox1.Text);
            double dblValue2 = Convert.ToDouble(txtValueBox2.Text);

            CCalculator clsCalculator = new CCalculator();
            Trace.Write(string.Format("Performing the calculation with the {0} operator", OperatorList.SelectedValue));
            switch (OperatorList.SelectedValue)
            {
                case "+":
                    dblResult = clsCalculator.Add(dblValue1, dblValue2);
                    break;
                case "-":
                    dblResult = clsCalculator.Subtract(dblValue1, dblValue2);
                    break;
                case "*":
                    dblResult = clsCalculator.Multiply(dblValue1, dblValue2);
                    break;
                case "/":
                    dblResult = clsCalculator.Divide(dblValue1, dblValue2);
                    break;
            }
            lblResultLabel.Text = dblResult.ToString();
        }
        else
        {
            lblResultLabel.Text = string.Empty;
            Trace.Warn("Custom Category", "TextBox controls are empty; time to add Validation controls?");
        }
    }
}
