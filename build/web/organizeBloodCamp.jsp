<%-- 
    Document   : bloo0d bank  SignUp
    Created on : 02-Sep-2020, 9:38:45 pm
    Author     : rahul
--%>

<%@page import="com.medicare.entities.BloodBank"%>
<%
    BloodBank bank = (BloodBank) session.getAttribute("currentBloodBank");

    if (bank == null) {
        response.sendRedirect("bloodbanklogin.jsp ");
    }

%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Blood Camp</title>

        <%@include file="common_bootstrap.jsp" %>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
                background: #8f0611;

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



                </div>
            </nav>

            <!--end of navbar-->
        </div>




        <div class="container">

            <!--            <--form-->

            <div id="frm" style="background: transparent">
                <form  id="regForm" class="mt-5" action="BloodBankOrganizationServlet" method="POST" >

                    <div class="form-group mt-5">
                        <label for="name">BloodCamp-Name :</label>
                        <input type="text" class="form-control" style="padding: 20px; " id="inputtext"  placeholder="Enter Blood-Camp Name" name="campName" required>

                    </div>

                        <div class="form-group mt-5">
                        <label for="contact"> Organizer-Name :</label>
                        <input type="text" class="form-control" style="padding: 20px;" id="inputtext" placeholder="enter contact" name="camp_organiser" required>
                    </div>

                    

                             
                   

                    <div class="form-group mt-5">
                        <label for="contact"> camp-contact :</label>
                        <input type="nomber" class="form-control" style="padding: 20px;" id="inputtext" placeholder="enter contact" name="camp_contact" required>
                    </div>

                    <div class="form-group mt-5">
                        <label for="address">camp-address :</label>
                        <input type="text" class="form-control" style="padding: 20px;" id="inputtext" placeholder="Enter Address" name="camp_address" required>

                    </div>


                    <div class="form-group mt-5">
                        <label for="city">camp-city :</label>
                        <input type="text" class="form-control" style="padding: 20px;" id="inputtext"  placeholder="Enter city" name="camp_city" required>
                        <small  class="form-text text-muted"></small>
                    </div>

                    <div class="form-group mt-5">
                        <label for="state">camp-State :</label>
                        <input type="text" class="form-control" style="padding: 20px;" id="inputtext"  placeholder="Enter State" name="camp_state" required>
                        <small  class="form-text text-muted"></small>
                    </div>
                    
                    <div class="form-group mt-5">
                        <label for="age">BloodCamp-Discription :</label>
                        <input type="text" class="form-control" style="padding: 20px; " id="inputtext"  placeholder="Enter camp organised date" name="Discription" required>

                    </div>

                    
                     <div class="form-group mt-5">
                        <label for="age">BloodCamp-date :</label>
                        <input type="date" class="form-control" style="padding: 20px; " id="inputtext"  placeholder="Enter camp organised date" name="date" required>

                    </div>

                    
                    
                    
                    <div class="form-group text-center mt-5">
                        <button class="btn-outline-dark btn-lg" type="submit">Submit</button>
                    </div>
                </form>

            </div>

            <div id="loader" style="height: 40px;width: 40px; top: 50%;left: 50%;position: absolute;z-index: 1;display: none">
                <i class="	fa fa-refresh fa-spin fa-3x"></i>
                <h4>Please wait...!</h4>
            </div>
        </div>


        <div class="container-fluid containers" >

            <!--navbar-->
            <nav class="navbar navbar-expand-md  navbar-dark  nv"  style="height: 60px">





                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <!--                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"></span>
                                </button>-->

                <div class="collapse navbar-collapse" id="navbarSupportedContent" >


                </div>
            </nav>

            <!--end of navbar-->
        </div>


        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <script>
            $(document).ready(function () {
                console.log("loaded");

                $('#regForm').on('submit', function (event) {


                    event.preventDefault();
                    let form = new FormData(this);
                    $("#frm").hide();
                    $("#loader").show();




                    console.log(form);
                    //send register servlet

                    $.ajax({

                        url: "BloodBankOrganizationServlet",
                        type: 'POST',

                        data: form,

                        success: function (data, textStatus, jqXHR) {
                            console.log(data);

                            $("#frm").show();
                            $("#loader").hide();

                            if (data.trim() === 'done')
                            {
                                swal("Done..you  registere the camp details..we are rediricting to the Homepage.")
                                        .then((value) => {
                                            window.location = "BloodBankHome.jsp";
                                        });

                            } else
                            {
                                swal(data);

                            }


                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            console.log(jqXHR);

                            $("#frm").show();
                            $("#loader").hide();

                            swal("Something went wrong..try again.. .");


                        },

                        processData: false,
                        contentType: false

                    });

                });
            });
        </script>    
    </body>
</html>
