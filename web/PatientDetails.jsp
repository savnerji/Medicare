<%@page import="com.medicare.entities.doctor"%>
<%
    doctor doc = (doctor) session.getAttribute("currentDoctor");

    if (doc == null) {
        response.sendRedirect("doctorlogin.jsp");
    }

%>
<%@page import="java.util.List"%>
<%@page import="com.medicare.entities.surveydata"%>
<%@page import="com.medicare.dao.Doctordao"%>
<%@page import="com.medicare.helper.ConnectionProvider"%>
<%@page import="com.medicare.entities.doctor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
                            <a class="nav-link navtext" href="DoctorHome.jsp" >Home</a>
                        </li>

                        <li class="nav-item mr-5">
                            <a class="nav-link navtext" href="DoctorSignOutServlet" >Log out</a>
                        </li>





                    </ul>

                </div>
            </nav>             
            <!--end of navbar-->

            <div class="container d-flex justify-content-center">

                <%   String value = request.getParameter("value");
                    System.out.println(value);
                    List<surveydata> patient = null;
                    Doctordao dao = new Doctordao(ConnectionProvider.getConnection());

                    patient = dao.getPatientDetails(value);

                    System.out.println(patient);
                    if (patient.isEmpty()) {
                        response.sendRedirect("BloodBankNotOrganised.jsp");
                    }

                    for (surveydata l : patient) {
                %>


                <div class="card mt-5">


                    <div class="card-header text-white pt-4" style="height: 90px;background: #06a190">
                        <div class=" text-center" >
                            <h3><em> <%=l.getName()%><em></h3>
                                        </div>

                                        </div>

                                        <div class="card-body">
                                            <table class="table text-center">
                                                <thead>

                                                </thead>
                                                <tbody>
                                                    <tr>

                                                        <td><strong>Patient Name :</strong></td>
                                                        <td><%= l.getName()%></td>

                                                    </tr>
                                                    <tr>

                                                        <td><strong>Patient Age :</strong></td>
                                                        <td><%=l.getAge()%> Year.</td>

                                                    </tr>
                                                    <tr>

                                                        <td><strong>Patient Blood Group :</strong></td>
                                                        <td><%= l.getBloodgroup()%></td>

                                                    </tr>

                                                    <tr>

                                                        <td><strong>Disease 1 :</strong></td>
                                                        <td><%= l.getDisease1()%></td>

                                                    </tr>

                                                    <tr>

                                                        <td><strong>Disease 2 :</strong></td>
                                                        <td><%= l.getDisease2()%></td>

                                                    </tr>

                                                    <tr>

                                                        <td><strong>Disease 3 :</strong></td>
                                                        <td><%= l.getDisease3()%></td>

                                                    </tr>

                                                    <tr>

                                                        <td><strong>Disease 4 :</strong></td>
                                                        <td><%= l.getDisease4()%></td>

                                                    </tr>

                                                    <tr>

                                                        <td><strong>Elergic Medicine 1 :</strong></td>
                                                        <td><%= l.getMedicine1()%> </td>

                                                    </tr>
                                                    <tr>

                                                        <td><strong>Elergic Medicine 2 :</strong></td>
                                                        <td><%= l.getMedicine2()%></td>

                                                    </tr>

                                                    <tr>

                                                        <td><strong>Patient Aadhar Nomber:</strong></td>
                                                        <td><%= l.getAadharcard()%></td>

                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="card-footer text-center ">
                                            <p class="pt-3"></p>
                                        </div>


                                        <%
                                            }
                                        %>  
                                        </div>              



                                        </div>
                                        </body>
                                        </html>
