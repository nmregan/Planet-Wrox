//Name: Nicholas Regan
//Date: 9/17/2017
//Abstract: Homework 2


using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Homework_Homework2 : CBasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnCalculateTotal_Click(object sender, EventArgs e)
    {
        if (txtItem1.Text.Length > 0 && txtItem2.Text.Length > 0 && txtItem3.Text.Length > 0 && txtItem4.Text.Length > 0 && txtItem5.Text.Length > 0)
        {
            double dblResult = 0;
            double dblValue1 = Convert.ToDouble(txtItem1.Text);
            double dblValue2 = Convert.ToDouble(txtItem2.Text);
            double dblValue3 = Convert.ToDouble(txtItem3.Text);
            double dblValue4 = Convert.ToDouble(txtItem4.Text);
            double dblValue5 = Convert.ToDouble(txtItem5.Text);

            CCashRegister clsCashRegister = new CCashRegister();
            {
                dblResult = clsCashRegister.Add(dblValue1, dblValue2, dblValue3, dblValue4, dblValue5);
            }
            lblCalcSubTotal.Text = dblResult.ToString();
        }

        if (chkCoupon.Checked == true)
        {
            double dblSubTotal = Convert.ToDouble(lblCalcSubTotal.Text);
            double dblCoupon = 0.10;
            double dblCouponTotal = 0;

            CCashRegister clsCashRegister = new CCashRegister();
            {
                dblCouponTotal = clsCashRegister.Multiply(dblSubTotal, dblCoupon);
                dblSubTotal = clsCashRegister.Subtract(dblSubTotal, dblCouponTotal);     
            }

            lblCalcSubTotal.Text = dblSubTotal.ToString();
        }

        else if (chkCoupon.Checked == false)
        {
            double dblResult = 0;
            double dblValue1 = Convert.ToDouble(txtItem1.Text);
            double dblValue2 = Convert.ToDouble(txtItem2.Text);
            double dblValue3 = Convert.ToDouble(txtItem3.Text);
            double dblValue4 = Convert.ToDouble(txtItem4.Text);
            double dblValue5 = Convert.ToDouble(txtItem5.Text);

            CCashRegister clsCashRegister = new CCashRegister();
            {
                dblResult = clsCashRegister.Add(dblValue1, dblValue2, dblValue3, dblValue4, dblValue5);
            }
            lblCalcSubTotal.Text = dblResult.ToString();
        }

        if (lblCalcSubTotal.Text.Length > 0)
        {
            double dblTax = 0.0625;
            double dblSubTotal = Convert.ToDouble(lblCalcSubTotal.Text);
            double dblTotalTax = 0;

            CCashRegister clsCashRegister = new CCashRegister();
            {
                dblTotalTax = clsCashRegister.Multiply(dblSubTotal, dblTax);
            }

            lblCalcTax.Text = dblTotalTax.ToString();
        }
        else
        {
            lblCalcTax.Text = string.Empty;
        }

        if (lblCalcSubTotal.Text.Length > 0 && lblCalcTax.Text.Length > 0)
        {
            double dblTotal = 0;
            double dblSubTotal = Convert.ToDouble(lblCalcSubTotal.Text);
            double dblTax = Convert.ToDouble(lblCalcTax.Text);

            CCashRegister clsCashRegister = new CCashRegister();
            {
                dblTotal = clsCashRegister.Add2(dblSubTotal, dblTax);
            }

            lblCalcTotal.Text = dblTotal.ToString();
        }
        else
        {
            lblCalcTotal.Text = string.Empty;
        }

    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtItem1.Text = string.Empty;
        txtItem2.Text = string.Empty;
        txtItem3.Text = string.Empty;
        txtItem4.Text = string.Empty;
        txtItem5.Text = string.Empty;

        lblCalcSubTotal.Text = string.Empty;
        lblCalcTax.Text = string.Empty;
        lblCalcTotal.Text = string.Empty;

        chkCoupon.Checked = true;

    }
}