<%-- 
    Document   : index
    Created on : 22-Sep-2020, 6:11:04 pm
    Author     : rahul
--%>

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

                        <li class="nav-item active mr-4">
                            <a class="nav-link navtext" href="#" >Home <span class="sr-only">(current)</span></a>
                        </li>

                        <li class="nav-item dropdown mr-4 navtext">
                            <a class="nav-link dropdown-toggle " href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Sign in as..
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="LogIn.jsp">User</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="doctorlogin.jsp">Doctor</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="bloodbanklogin.jsp">Blood Bank</a>


                            </div>
                        </li>







                        <li class="nav-item dropdown mr-4 navtext">
                            <a class="nav-link dropdown-toggle " href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Register as..
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="SignUp.jsp">User</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="doctorsignup.jsp">Doctor</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="bloodbanksignup.jsp">Blood Bank</a>


                            </div>
                        </li>

                    </ul>

                </div>
            </nav>

            <!--end of navbar-->


            <!--slider-->

            <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel" >
                <div class="carousel-inner">
                    <div class="carousel-item active">

                        <img src="images/docslid.jpg" class="d-block w-100 " alt="..." style="height: 850px;width: 100%">
                        <div class="carousel-caption d-none d-md-block">
                            <h5 class="overh  display-1 my-5" style="color: ">Get medical Help</h5>
                            <p class="overp ">We provide Doctors for you and get appoint by Doctor.</p>
                        </div>

                    </div>
                    <div class="carousel-item">

                        <img src="images/blood.jpg" class="d-block w-100 " alt="..." style="height: 850px;width: 100%">
                        <div class="carousel-caption d-none d-md-block">
                            <h5 class="overh display-1 my-5" >Find Nearest Blood Donation Camp</h5>
                            <p class="overp" >Donate Blood And save Life.</p>
                        </div>

                    </div>
                    <div class="carousel-item">

                        <img src="images/docslid2.jpg" class="d-block w-100 " alt="..." style="height: 850px;width: 100%">
                        <div class="carousel-caption d-none d-md-block">
                            <h5 class="overh display-1 my-5">Doc Care</h5>
                            <p class="overp">In case of illness,do not tell the doctor all,take the right treatment only with the help of your Adhar Card nomber.</p>
                        </div>

                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

            <!--end of slider-->


            <!--  section-->


            <section class="">

                <div class="row text-center">
                    <div class="col-md-6 col-lg-6 ps jumbotron">

                        <div class="row ">
                            <div class="col-md-6 col-lg-6 ps  ">


                                <img src="images/donatebld.jpg" class="img-fluid" style="height: 300px;width: 400px">

                            </div>

                            <div class="col-md-6 col-lg-6 ">
                                <h1 class="text-center my-2">Regarding Blood</h1>
                                <p class="text-break">In <code>Medcare</code> Platform, you can easily find the details of the blood donation camp for easy blood donation.And if patience need blood for particular blood group you can easily find the blood for him/her.And if someone want to donate blood by himself they easily search our nearest and all blood donation camp for blood donation.   </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-6 ps jumbotron">

                        <div class="row ">
                            <div class="col-md-6 col-lg-6 ps  ">


                                <img src="images/appointment.jpg" class="img-fluid" style="height: 300px;width: 400px">

                            </div>

                            <div class="col-md-6 col-lg-6 ">
                                <h1 class="text-center my-2">Regarding Doctor treatment</h1>
                                <p class="text-break">If patient is in mild condition so we connect patient with  particular searched doctor on Medicare.In Medicare platform we can provide treatment with the help of medicine which is suggested by the doctor to the patient. </p>
                            </div>
                        </div>
                    </div>


                </div>

            </section>



            <section class="">

                <div class="row text-center">
                    <div class="col-md-6 col-lg-6 ps jumbotron">

                        <div class="row ">
                            <div class="col-md-6 col-lg-6 ps  ">


                                <img src="images/appoint2.jpg" class="img-fluid" style="height: 300px;width: 400px">

                            </div>

                            <div class="col-md-6 col-lg-6 ">
                                <h1 class="text-center my-4"> Doctor Appointment</h1>
                                <p class="text-break">On Medicare platform you can make an Appointment with your searched doctor.If patient is suffering from high disease so you can make a appointment for him for the next days. </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-6 ps jumbotron">

                        <div class="row ">
                            <div class="col-md-6 col-lg-6 ps  ">


                                <img src="images/blood-donation.jpg" class="img-fluid" style="height: 300px;width: 400px">

                            </div>

                            <div class="col-md-6 col-lg-6 ">
                                <h1 class="text-center my-4">Search Blood donation camp</h1>
                                <p class="text-break">If any hospital and any patient has a need of blood for particular blood group so they can easily find on the Medicare platform.</p>
                            </div>
                        </div>
                    </div>


                </div>

            </section>


            <!-- end fo sections-->

            <!--<medicare story>-->

            <!--< end ofmedicare story>-->

            <main class="row">
                <div class="container-fluid containers jumbotron">
                    <div class="container">
                        <h1 class="text-center"><em>Medicare Story</em></h1>

                        <p class="text-break mt-3" style="font-size: 20px">Medicare is a idea of our team for making a portal or a platform for improving the medical services like (blood bank donation camp, organize a blood donation camp,and find the nearest blood donation camp) and doctor like (make an appointment with doctor and get medicine preseasons in mild conditions) and easiest way for doctor to find all the patient's previous medical data with the help of Aadhar card nomber. </p>
                        <div class="container text-center"> 
                            <p class="text-break mt-3" style="font-size: 20px">For this kind of works we implement this idea and making this web site only and only for you.</p>
                        </div>
                    </div>

                </div>
            </main>






        </div>

        <footer style="height: 300px;background: #06a190;margin-top: -40px">


            <div class="container text-center " >
                <p class="my-5 " style="padding-bottom: 275px"> @Copyright by the Medicare health and medical platform support</p>
            </div>

        </footer>











    </body>

</html>
