<%-- 
    Document   : SearchBloodBank By City
    Created on : 02-Oct-2020, 9:27:54 pm
    Author     : rahul
--%>

<%@page import="com.medicare.entities.BloodBank"%>
<%@page import="com.medicare.entities.Organizecamp"%>
<%@page import="com.medicare.helper.ConnectionProvider"%>
<%@page import="com.medicare.dao.Bloodbankdao"%>
<%@page import="java.util.List"%>
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
                            <a data-toggle="modal" data-target="#exampleModal"  class="nav-link navtext" href="!#" >Search By city</a>
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


                            <form action="SearchBankByCityServlet" method="POST">
                                <div class="form-group">
                                    <label for="exampleInputEmail1"> Enter City</label>
                                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="city">

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


            <!--            Modal for the search by city-->


            <div class="row">

                <div class="col-md-2">

                </div>

                <div class="col-md-8">

                    <div class="card-columns">

                        <%   String value = request.getParameter("value");
                            List<BloodBank> list = null;
                            Bloodbankdao dao = new Bloodbankdao(ConnectionProvider.getConnection());
                            if (value.equals("all")) {
                                list = dao.getAllBloodBank();
                            } else {

                                list = dao.getBloodBankByCity(value);
                                if (list.isEmpty()) {
                                    response.sendRedirect("BloodBankNotOrganised.jsp");
                                }

                            }

                            for (BloodBank l : list) {
                        %>


                        <div class="card mt-5">


                            <div class="card-header text-white pt-4" style="height: 90px;background: #06a190">
                                <div class=" text-center" >
                                    <h3><em><%=l.getBank_name()%><em></h3>
                                                </div>

                                                </div>

                                                <div class="card-body">
                                                    <table class="table text-center">
                                                        <thead>

                                                        </thead>
                                                        <tbody>
                                                            <tr>

                                                                <td><strong>Bank Opening :</strong></td>
                                                                <td><%= l.getBank_opening()%></td>

                                                            </tr>
                                                            <tr>

                                                                <td><strong>Blood Bank Type :</strong></td>
                                                                <td><%=l.getBank_type()%></td>

                                                            </tr>
                                                            <tr>

                                                                <td><strong>Licence Number :</strong></td>
                                                                <td><%= l.getLicenseNomber()%></td>

                                                            </tr>

                                                                         <tr>

                                                                <td><strong>Address :</strong></td>
                                                                <td><%= l.getBank_address()%></td>

                                                            </tr>
                                                            
                                                            
                                                            <tr>

                                                                <td><strong>city :</strong></td>
                                                                <td><%= l.getBank_city()%></td>

                                                            </tr>
                                                            
                                                            <tr>

                                                                <td><strong>State :</strong></td>
                                                                <td><%= l.getBank_state()%></td>

                                                            </tr>
                                                            <tr>

                                                                <td><strong>Bank Contact :</strong></td>
                                                                <td><%= l.getBank_contact()%></td>

                                                            </tr>
                                                            <tr>

                                                                <td><strong>Bank Email :</strong></td>
                                                                <td><%= l.getBank_email()%></td>

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
