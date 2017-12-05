<%--
    Name: Nicholas Regan
    Date: 10/6/2017
    Abstract: Homework 4
--%>



<%@ Page Title="Homework4" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Homework4.aspx.cs" Inherits="Homework_homework4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta charset="utf-8" />
        <title>How to Make a Beautiful Password Strength Indicator</title>

        <!-- The stylesheet -->
        <link href="../Styles/Homework4.css" rel="stylesheet" type="text/css" />

        <!--[if lt IE 9]>
          <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>

    <body>

        <div id="main">

            <h1>Sign up, it's FREE!</h1>

            <form class="" method="post" action="">

                <div class="row email">
                    <input type="text" id="email" name="email" placeholder="Email" />
                </div>

                <div class="row pass">
                    <input type="password" id="password1" name="password1" placeholder="Password" />
                </div>

                <div class="row pass">
                    <input type="password" id="password2" name="password2" placeholder="Password (repeat)" disabled="true" />
                </div>

                <!-- The rotating arrow -->
                <div class="arrowCap"></div>
                <div class="arrow"></div>

                <p class="meterText">Password Meter</p>

                <input type="submit" value="Register" />

            </form>
        </div>

        <p>
	        <i>Tutorial:</i> Create a Beautiful Password Strength Indicator with CSS3
            <a class="tzine" href="https://tutorialzine.com/2012/06/beautiful-password-strength-indicator/">Head on to <i>Tutorial<b>zine</b></i> to download this example</a>
        </p>

        <!-- JavaScript includes - jQuery, the complexify plugin and our own script.js -->
        <script src="../Scripts/jquery-3.2.1.min.js"></script>
        <script src="../Scripts/jquery.complexify.js"></script>
        <script src="../Scripts/complexifyScript.js"></script>

    </body>
</html>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpClientScript" Runat="Server">
</asp:Content>

