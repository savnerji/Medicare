<%-- 
    Document   : bloo0d bank  SignUp
    Created on : 02-Sep-2020, 9:38:45 pm
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
                <form  id="regForm" class="mt-5" action="BankSignUpServlet" method="POST" >

                    <div class="form-group mt-5">
                        <label for="name">Bank-Name :</label>
                        <input type="text" class="form-control" style="padding: 20px; " id="inputtext"  placeholder="Enter bank Name" name="bankName" required>

                    </div>

                    <div class="form-group mt-5">
                        <label for="age">Bank-opening :</label>
                        <input type="date" class="form-control" style="padding: 20px; " id="inputtext"  placeholder="Enter bank opening date" name="opening" required>

                    </div>

                    <div class="form-group mt-5">
                        <label for="gender">Number of Staff :</label>
                        <input type="nomber" class="form-control" style="padding: 20px; " id="inputtext"  placeholder="Enter nomber of staff" name="staff" required>

                    </div>

                    <div class="form-group mt-5">
                        <label for="city">Select bank type :</label>
                        <select class="form-control"  placeholder="enter bank-type :"  name="bank_type">
                            <option selected disabled>select group</option>
                            <option>Government</option>
                            <option>private</option>

                        </select>

                    </div>





                    <div class="form-group mt-5">
                        <label for="email">Your Email :</label>
                        <input type="email" class="form-control" style="padding: 20px;" id="inputtext" placeholder="Enter email" name="bank_email" required>
                        <small  class="form-text text-muted">We'll never share your email with anyone else.</small>
                    </div>

                    <div class="form-group mt-5">
                        <label for="password">Password :</label>
                        <input type="password" class="form-control" style="padding: 20px;" id="inputtext"  placeholder="Enter password" name="bank_password" required>
                        <small  class="form-text text-muted"></small>
                    </div>

                    <div class="form-group mt-5">
                        <label for="contact"> bank-contact :</label>
                        <input type="nomber" class="form-control" style="padding: 20px;" id="inputtext" placeholder="enter contact" name="bank_contact" required>
                    </div>

                    <div class="form-group mt-5">
                        <label for="address">bank-address :</label>
                        <input type="text" class="form-control" style="padding: 20px;" id="inputtext" placeholder="Enter Address" name="bank_address" required>

                    </div>


                    <div class="form-group mt-5">
                        <label for="city">bank-city :</label>
                        <input type="text" class="form-control" style="padding: 20px;" id="inputtext"  placeholder="Enter city" name="bank_city" required>
                        <small  class="form-text text-muted"></small>
                    </div>

                    <div class="form-group mt-5">
                        <label for="state">bank-State :</label>
                        <input type="text" class="form-control" style="padding: 20px;" id="inputtext"  placeholder="Enter State" name="bank_state" required>
                        <small  class="form-text text-muted"></small>
                    </div>






                    <div class="form-group mt-5">
                        <label for="city">License nomber :</label>
                        <input type="nomber" class="form-control" style="padding: 20px; " id="inputtext"  placeholder="Enter license nomber" name="license_nomber" required>

                    </div>

                    <div class="form-group mt-5">
                        <label for="city">License pic :</label>
                        <input type="file" class="form-control" style="padding: 20px; " id="inputtext"   name="licensePic" required>

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

                        url: "BankSignUpServlet",
                        type: 'POST',

                        data: form,

                        success: function (data, textStatus, jqXHR) {
                            console.log(data);

                            $("#frm").show();
                            $("#loader").hide();

                            if (data.trim() === 'done')
                            {
                                swal("Done..you are registered..we are rediricting to the log in page.")
                                        .then((value) => {
                                            window.location = "bloodbanklogin.jsp";
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
