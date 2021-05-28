<%-- 
    Document   : LogIn
    Created on : 25-Sep-2020, 1:34:54 pm
    Author     : rahul
--%>

<%@page import="com.medicare.entities.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LogIn page</title>
        <%@include file="common_bootstrap.jsp" %>
    </head>

    <style>

        #inputtext{

            font-size: 15px;
        }

        body{

            /*                 background: url(images/ba.jpg);*/
            background: url(images/);
            background-size:cover;
            background-repeat: no-repeat;
            background-attachment: fixed;

        }

        input{
            background: transparent;
        }

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
                            <a class="nav-link navtext" href="index.jsp" >Home <span class="sr-only">(current)</span></a>
                        </li>

                    </ul>

                </div>
            </nav>
            <div class="row">

                <div class="col-lg-8  ">
                    <!-- image-->

                    <img class="img-fluid img-thumbnail" src="images/docslid3.jpg" style="height:950px;width: auto">

                </div>


                <div class="col-lg-4 ">




                    <div class="container  my-5 mt-5" style=";">

                        <div class="card text-break" style="width: 30rem;">

                            <div class="card-header bg-dark text-white text-center">
                                <h1>LogIn  here</h1>

                            </div>

                            <div class="card-body">
                                <form action="DoctorsSignInServlet" method="POST">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Email address</label>
                                        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="doctor_email">
                                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Password</label>
                                        <input type="password" class="form-control" id="exampleInputPassword1" name="doctor_password">
                                    </div>

                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </form>


                            </div>
                            <div class="card-footer text-muted text-center">
                                <%
                                    Message mg = (Message) session.getAttribute("msg");
                                    if (mg != null) {

                                %>

                                <div class="text-center" style="color: <%=mg.getCss()%>">
                                    <%= mg.getContent()%>
                                </div>
                                <%
                                        session.removeAttribute("msg");
                                    }

                                %>
                            </div>
                        </div>


                    </div> 

                </div>


            </div>

        </div>

    </body>
</html>
