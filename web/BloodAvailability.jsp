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
        <title>Register Blood availablity</title>

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
                <form  id="regForm" class="mt-5" action="BloodBankAvailabilityServlet" method="POST" >



                    

                    <div class="form-group mt-5">
                        <label for="contact"> A+ :</label>
                        <input type="number" class="form-control" style="padding: 20px;" id="inputtext" placeholder="enter Quantity in units" name="Ap" required>
                    </div>

                    <div class="form-group mt-5">
                        <label for="contact"> A- :</label>
                        <input type="number" class="form-control" style="padding: 20px;" id="inputtext" placeholder="enter Quantity in units" name="An" required>
                    </div>

                    <div class="form-group mt-5">
                        <label for="contact"> B+ :</label>
                        <input type="number" class="form-control" style="padding: 20px;" id="inputtext" placeholder="enter Quantity in units" name="Bp" required>
                    </div>

                    <div class="form-group mt-5">
                        <label for="contact"> B- :</label>
                        <input type="number" class="form-control" style="padding: 20px;" id="inputtext" placeholder="enter Quantity in units" name="Bn" required>
                    </div>

                    <div class="form-group mt-5">
                        <label for="contact"> O+ :</label>
                        <input type="number" class="form-control" style="padding: 20px;" id="inputtext" placeholder="enter Quantity in units" name="Op" required>
                    </div>

                    <div class="form-group mt-5">
                        <label for="contact"> O- :</label>
                        <input type="number" class="form-control" style="padding: 20px;" id="inputtext" placeholder="enter Quantity in units" name="On" required>
                    </div>

                    <div class="form-group mt-5">
                        <label for="contact"> AB+ :</label>
                        <input type="number" class="form-control" style="padding: 20px;" id="inputtext" placeholder="enter Quantity in units" name="ABp" required>
                    </div>

                    <div class="form-group mt-5">
                        <label for="contact"> AB- :</label>
                        <input type="number" class="form-control" style="padding: 20px;" id="inputtext" placeholder="enter Quantity in units" name="ABn" required>
                    </div>

                     <div class="form-group text-center mt-5">
                        <button class="btn-outline-dark btn-lg" type="submit">Submit</button>
                    </div>


                </form>

            </div>

            <div id="loader" style="height: 40px;width: 40px; top: 50%;left: 50%;position: absolute;z-index: 1;display: none">
                <i class="fa fa-refresh fa-spin fa-3x"></i>
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

                        url: "BloodBankAvailabilityServlet",
                        type: 'POST',

                        data: form,

                        success: function (data, textStatus, jqXHR) {
                            console.log(data);

                            $("#frm").show();
                            $("#loader").hide();

                            if (data.trim() === 'done')
                            {
                                swal("Done..you  registere the blood details..we are rediricting to the Homepage.")
                                        .then((value) => {
                                            window.location = "BloodAvailability.jsp";
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
