<%-- 
    Document   : ConductSurvey
    Created on : 27-Sep-2020, 11:39:24 am
    Author     : rahul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>

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
                background: #06a190;

            }
            
            label{
                font-size: 25px;
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


            </nav>

            <!--end of navbar-->
        </div>
        
        <div class="container text-center">
            <p class="mt-3" style="text-decoration: underline"><strong>This survey is only for trace your previous medical data for the Doctor.</strong> </p>
        </div>

        <div class="container">

            <!--            <--form-->

            <div id="frm" style="background: transparent">
                <form  id="regForm" class="mt-5" action="surveyServlet" method="POST" >

                    <div class="form-group mt-5">
                        <label for="name">Your Name :</label>
                        <input type="text" class="form-control" style="padding: 20px; " id="inputtext"  placeholder="Enter Name" name="name" required>
                        <small  class="form-text text-muted">Enter your full name. Like: First + Last name.</small>
                    </div>

                    <div class="form-group mt-5">
                        <label for="name">Your Age :</label>
                        <input type="nomber" class="form-control" style="padding: 20px; " id="inputtext"  placeholder="Enter Age" name="age" required>
                        <small  class="form-text text-muted">Enter your full name. Like: First + Last name.</small>
                    </div>

                    <div class="form-group mt-5">
                        <label for="city">Aadhar-card number :</label>
                        <input type="nomber" class="form-control" style="padding: 20px; " id="inputtext"  placeholder="Enter aadhar card nomber" name="aadhar" required>

                    </div>

                    <div class="form-group mt-5">
                        <label for="city">disease 1 :</label>
                        <input type="text" class="form-control" style="padding: 20px; " id="inputtext"  placeholder="Enter disease-1  " name="disease1" required>

                    </div>
                    <div class="form-group mt-5">
                        <label for="city">disease 2 :</label>
                        <input type="text" class="form-control" style="padding: 20px; " id="inputtext"  placeholder="Enter disease-2  " name="disease2" required>

                    </div>
                    <div class="form-group mt-5">
                        <label for="city">disease 3 :</label>
                        <input type="text" class="form-control" style="padding: 20px; " id="inputtext"  placeholder="Enter disease-3 " name="disease3" required>

                    </div>
                    <div class="form-group mt-5">
                        <label for="city">disease 4 :</label>
                        <input type="text" class="form-control" style="padding: 20px; " id="inputtext"  placeholder="Enter disease-4  " name="disease4" required>

                    </div>

                    <div class="form-group mt-5">
                        <label for="city">current medicine-1 :</label>
                        <input type="text" class="form-control" style="padding: 20px; " id="inputtext"  placeholder="Enter medicine-1  " name="medicine1" required>

                    </div>

                    <div class="form-group mt-5">
                        <label  for="city">current medicine-2 :</label>
                        <input type="text" class="form-control" style="padding: 20px; " id="inputtext"  placeholder="Enter medicine-2  " name="medicine2" required>

                    </div>

                    <div class="form-group mt-5">
                        <label for="city">current medicine-3 :</label>
                        <input type="text" class="form-control" style="padding: 20px; " id="inputtext"  placeholder="Enter medicine-3  " name="medicine3" required>

                    </div>


                    <div class="form-group mt-5">
                        <label for="city">Blood Group :</label>
                        <select class="form-control"  placeholder="enter group" name="blood">
                            <option selected disabled>select group</option>
                            <option>AB+</option>
                            <option>AB-</option>
                            <option>A+</option>
                            <option>A-</option>
                            <option>B+</option>
                            <option>B-</option>
                            <option>O+</option>
                            <option>O-</option>
                        </select>

                    </div>


                    <div class="form-group mt-5">
                        <label for="report">recent any medical report :</label>
                        <input type="file" class="form-control" style="padding: 20px; " id="inputtext"  placeholder="Enter medicine-4  " name="report" required>

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

                        url: "surveyServlet",
                        type: 'POST',

                        data: form,

                        success: function (data, textStatus, jqXHR) {
                            console.log(data);

                            $("#frm").show();
                            $("#loader").hide();

                            if (data.trim() === 'done')
                            {
                                swal("Done..you are registered.. your medical survey and you are redirecting to your home page")
                                        .then((value) => {
                                            window.location = "UserHome2.jsp";
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
