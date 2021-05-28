<%-- 
    Document   : treatByMedicineInMildCondition
    Created on : 05-Oct-2020, 1:40:42 pm
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
<%@page import="java.util.List"%>
<%@page import="com.medicare.helper.ConnectionProvider"%>
<%@page import="com.medicare.entities.doctor"%>
<%@page import="com.medicare.dao.Doctordao"%>
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



                        <li class="nav-item mr-5">
                            <a class="nav-link navtext" href="Editsurvey.jsp" >Edit Survey</a>
                        </li>




                        <li class="nav-item mr-5">
                            <a data-toggle="modal" data-target="#exampleModal"  class="nav-link navtext" href="!#" >Search Doctor By Type</a>
                        </li>





                        <li class="nav-item mr-5">
                            <a class="nav-link navtext" href="SignOutServlet" >Log out</a>
                        </li>





                    </ul>

                </div>
            </nav>

            <!--end of navbar-->

            <!--            Modal for the search by city-->


            <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <div class="container text-center">
                                <h5 class="modal-title" id="exampleModalLabel">Select City</h5>
                            </div>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>

                        </div>
                        <div class="modal-body">


                            
           
                            
                            
                            <form action="SearchDoctorServlet" method="POST">
                                

                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <label class="input-group-text" for="inputGroupSelect01">Options</label>
                                    </div>
                                    <select class="custom-select" id="inputGroupSelect01" name="Doctor">
                                        <option selected>Choose...</option>
                                        <option value="physicians"> PHYSICIANS</option>
                                        <option value="dentist">DENTIST</option>
                                        <option value="dermatologists">DERMATOLOGISTS</option>
                                        <option value="physiotherapist">PHYSIOTHERAPIST</option>
                                        <option value="homyopethik">HOMYOPETHIK</option>
                                        <option value="gynecolagists">GYNECOLOGISTS</option>
                                        <option value="neurologists">NEUROLOGISTS</option>
                                        
                                    </select>
                                </div>

                                <div class="container text-center">
                                    
                                    <button type="submit" class="btn btn-outline-dark">Submit</button>
                                </div>
                                
                            </form>


                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

                        </div>
                    </div>
                </div>
            </div>


            <!--            Modal for the search by city-->


            <div class="row">

                <div class="col-md-2">

                </div>

                <div class="col-md-8">

                    <div class="card-columns">

                        <%   String value = request.getParameter("value");
                            List<doctor> list = null;
                            Doctordao dao = new Doctordao(ConnectionProvider.getConnection());
                            if (value.equals("all")) {
                                list = dao.getAllDoctor();
                            } else {

                                list = dao.getDoctorByType(value);
                                if (list.isEmpty()) {
                                    response.sendRedirect("BloodBankNotOrganised.jsp");
                                }

                            }

                            for (doctor l : list) {
                        %>


                        <div class="card mt-5" style="width: auto">


                            <div class="card-header text-white pt-4" style="height: 90px;background: #06a190">
                                <div class=" text-center" >
                                    <h3><em>Dr. <%=l.getDocName()%><em></h3>
                                                </div>

                                                </div>

                                                <div class="card-body">
                                                    <table class="table text-center">
                                                        
                                                        <tbody>
                                                            <tr>

                                                                <td><strong>Doctor occupation :</strong></td>
                                                                <td><%= l.getDocDegree()%></td>

                                                            </tr>
                                                            <tr>

                                                                <td><strong>Doctor Specialization :</strong></td>
                                                                <td><%=l.getDocSpecialist()%></td>

                                                            </tr>
                                                            <tr>

                                                                <td><strong>Doctor Type :</strong></td>
                                                                <td><%= l.getDocCategory()%></td>

                                                            </tr>

                                                            <tr>

                                                                <td><strong>Doctor Clinic Name :</strong></td>
                                                                <td><%= l.getDocClinicName()%></td>

                                                            </tr>

                                                            <tr>

                                                                <td><strong>Address :</strong></td>
                                                                <td><%= l.getClinicAddress()%></td>

                                                            </tr>

                                                            <tr>

                                                                <td><strong>Clinic City :</strong></td>
                                                                <td><%= l.getClinicCity()%></td>

                                                            </tr>

                                                            <tr>

                                                                <td><strong>Clinic State :</strong></td>
                                                                <td><%= l.getClinicState()%></td>

                                                            </tr>

                                                            <tr>

                                                                <td><strong>Experience :</strong></td>
                                                                <td><%= l.getExperienceYear()%> Year..</td>

                                                            </tr>
                                                            <tr>

                                                                <td><strong>Doctor Email :</strong></td>
                                                                <td><%= l.getDocEmail()%></td>

                                                            </tr>

                                                            <tr>

                                                                <td><strong>Doctor Contact :</strong></td>
                                                                <td><%= l.getDocContact()%></td>

                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <div class="card-footer text-center ">
                                                    <p class="pt-3"> Call for more information..</p>
                                                </div>

                                                </div>              


                                                <%
                                                    }
                                                %>  

                                                </div>

                                                </div>
                                                <div class="col-md-2">

                                                </div>

                                                </div>



                                                <div class="container">



                                                </div>



                                                </body>
                                                </html>
