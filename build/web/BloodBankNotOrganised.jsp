<%-- 
    Document   : BloodBankNotOrganised.jsp
    Created on : 03-Oct-2020, 7:13:11 pm
    Author     : rahul
--%>
<%@page import="com.medicare.entities.User"%>

<%
    User user = (User) session.getAttribute("currentUser");

    if (user == null) {
        response.sendRedirect("LogIn.jsp");
    }

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search blood camp</title>

        <%@include file="common_bootstrap.jsp" %>

        <link href="./mycss/medcss.css" rel="stylesheet" type="text/css"/>

        <style>
            .containers{
                margin: 0;
                padding-left:0px;
                padding-right: 0px;


            }
            body{
                margin: 0;
                padding: 0;
            }

            .nv{
                background: #06a190;

            }
        </style>

    </head>
    <body>

        <div class="container-fluid containers">

                   <!--navbar-->
            <nav class="navbar navbar-expand-md  navbar-dark  nv"  style="">
                <div class="mx-5 ">
                    <img src="logos/MedicalLogo.png" style="width: 35px;height:  50px">
                </div>

                <div class=display-1 style="float: right;">
                    <h1>Medcare</h1>
                </div>


                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <!--                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"></span>
                                </button>-->

                <div class="collapse navbar-collapse" id="navbarSupportedContent" >

                    <ul class="navbar-nav " style="margin-left: auto!important" >

                        <li class="nav-item active mr-4">
                            <a class="nav-link navtext" href="UserHome.jsp" >Home <span class="sr-only">(current)</span></a>
                        </li>

                    </ul>

                </div>
            </nav>

            <!--end of navbar-->
            
            <div class="container-fluid containers">
                
                <div class="container text-center">
                    <img class="img-fluid" src="images/oops400.jpg">
                    
                    <h1 class="mt-5">There is no result!</h1>
                    <h3>Sorry..</h3>
                    
                    <a class="btn btn-outline-dark mt-4" href="UserHome.jsp">Go back</a>
                </div>
                
            </div>
    </body>
</html>
