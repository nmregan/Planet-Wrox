<%--
    Name: Nicholas Regan
    Date: 10/14/2017
    Abstract: MidTerm
--%>



<%@ Page Title="MidTerm" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="MidTerm.aspx.cs" Inherits="Homework_MidTerm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <link href="../Styles/MidTerm.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.2.1.js"></script>
    <script src="../Scripts/jquery.simpleWeather.js"></script>
    <script src="../Scripts/gulpfile.js"></script>

    <div id="weather"></div>

    <script>

        $(document).ready(function () {
            $.simpleWeather({
                location: 'Cincinnati, OH',
                woeid: '',
                unit: 'f',
                success: function (weather) {
                    html = '<h2><i class="icon-' + weather.code + '"></i> ' + weather.temp + '&deg;' + weather.units.temp + '</h2>';
                    html += '<ul><li>' + weather.city + ', ' + weather.region + '</li>';
                    html += '<li class="currently">' + weather.currently + '</li>';
                    html += '<li>' + weather.wind.direction + ' ' + weather.wind.speed + ' ' + weather.units.speed + '</li></ul>';

                    $("#weather").html(html);
                },
                error: function (error) {
                    $("#weather").html('<p>' + error + '</p>');
                }
            });
        });

    </script>    <p class="PluginLink">        I found this jQuery Plugin at <a href="http://simpleweatherjs.com/"target ="_blank"> Simple Weather </a>

    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpClientScript" Runat="Server">
</asp:Content>

