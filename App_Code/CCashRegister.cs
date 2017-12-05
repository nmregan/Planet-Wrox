//Name: Nicholas Regan
//Date: 9/17/2017
//Abstract: Homework2


using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CCashRegister
/// </summary>
public class CCashRegister : CCalculator
{
    public double Add(double a, double b, double c, double d, double e)
    {
        return a + b + c + d + e;
    }

    public double Add2(double a, double b)
    {
        return a + b;
    }

    public double Subtract(double a, double b)
    {
        return a - b;
    }

    public double Multiply(double a, double b)
    {
        return a * b;
    }

    public double Divide(double a, double b)
    {
        return a / b;
    }
}
