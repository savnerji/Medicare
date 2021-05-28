
<%@page import="com.medicare.entities.doctor"%>
<%
     doctor doc = (doctor) session.getAttribute("currentDoctor");

    if (doc == null) {
        response.sendRedirect("doctorlogin.jsp");
    }

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>MedCare</title>
        <%@include file="common_bootstrap.jsp" %>

        <link href="./mycss/medcss.css" rel="stylesheet" type="text/css"/>




    </head>

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

                                              
                        <li class="nav-item mr-5">
                            <a data-toggle="modal" data-target="#patient" class="nav-link navtext" href="PatientDetails.jsp" >Search Patient Data</a>
                        </li>

                                                                     
                            <li class="nav-item mr-5">
                            <a class="nav-link navtext" href="DoctorSignOutServlet" >Log out</a>
                        </li>



                        

                    </ul>

                </div>
            </nav>

            <!--end of navbar-->
      <!-- Modal -->
            <div class="modal fade" id="patient" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">

                            <div class="container text-center text-muted">
                                <h5 class="modal-title" id="exampleModalLabel"> <strong>select your Doctor Type </strong></h5>
                            </div>

                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">

                            <form action="SearchPatientData" method="POST">
                                <div class="form-group">
                                    <label for="exampleInputEmail1"> Enter AadharCard nomber :</label>
                                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="aadharCardNomber">

                                </div>

                                <button type="submit" class="btn btn-primary">Submit</button>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

                        </div>
                    </div>
                </div>
            </div>

            <!--modal end for doctor-->
            

