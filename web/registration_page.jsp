<%-- 
    Document   : registration_page
    Created on : Mar 26, 2023, 4:11:05 PM
    Author     : Somanath Gaikwad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
        <!--css bs5.1-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
              rel="stylesheet" 
              integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
              crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <!--for icons-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!--clip path-->
        <style>
            .banner-background{
                clip-path: polygon(33% 0, 100% 0, 100% 41%, 100% 100%, 73% 96%, 39% 100%, 0 100%, 0 0);
            }
        </style>
    </head>
    <body>

        <!--impport navbar-->
        <%@include file="normal_navbar.jsp" %>
        <main class="primary-background p-5 banner-background">
            <div class="container">
                <div class="col-md-6 offset-md-3">
                    <div class="card">
                        <div class="card-header primary-background text-white text-center">
                            <span class="fa fa-2x fa-user-circle"/> <br/>Register Here
                        </div>
                        <div class="card-body">
                            <form id="reg-form" action="RegisterServlet" method="post">
                                <div class="mb-3">
                                    <label for="user_name" class="form-label">User Name</label>
                                    <input type="text"  class="form-control" name="user_name" aria-describedby="emailHelp" placeholder="Enter username" autofocus="">

                                </div>

                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Email address</label>
                                    <input type="email" class="form-control" name="user_email" aria-describedby="emailHelp" placeholder="Enter email">
                                    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                                </div>

                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">Password</label>
                                    <input type="password" class="form-control" name="user_password" placeholder="Enter password">
                                </div>
                                <div class="mb-3">
                                    <label for="gender" class="form-label">Select Gender</label>
                                    <input type="radio" id="gender" name="gender" value="Male">Male
                                    <input type="radio" id="gender" name="gender" value="Female">Female
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1" class="form-label">Enter your message here</label>
                                    <textarea name="about" class="form-control" id="" rows="5" placeholder="Enter something about yourself" ></textarea>

                                </div>

                                <div class="mb-3 form-check">
                                    <input name="check"  type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">Agree terms & conditions</label>
                                </div>
                                <div class="container text-center"id="loader" style="display: none">
                                    <span class="fa fa-refresh fa-spin fa-2x" ></span>
                                    <h4>Please wait..</h4>
                                </div><br/>
                                <button id="submit-btn"type="submit" class="btn btn-primary">Signup</button>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </main>



        <!--javascript bs5.1-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
                integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" 
        crossorigin="anonymous"></script>

        <!--jquery-->
        <script
            src="https://code.jquery.com/jquery-3.6.4.min.js"
            integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8="
        crossorigin="anonymous"></script>
        <!--sweet alert CDN-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <!--ajax implementation-->
        <script>
            $(document).ready(function () {
                console.log("loaded");
                $('#reg-form').on('submit', function (event) {
                    event.preventDefault();


                    let form = new FormData(this);
                    $("#submit-btn").hide();
                    $("#loader").show();

                    //send register servlet
                    $.ajax({
                        url: "RegisterServlet",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            $("#submit-btn").show();
                            $("#loader").hide();
                            if (data.trim()==='User Registered Successfully') {
                                // alert guide
                                swal("Registered successfully!..We are redirecting to login page")
                                        .then((value) => {
                                            window.location = "login_page.jsp"
                                        });
                            }else{
                                swal(data);
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            console.log(jqXHR);
                            $("#submit-btn").show();
                            $("#loader").hide();
                            swal("Something went wrong! please try again")


                        },
                        processData: false,
                        contentType: false

                    });
                });
            });
        </script>
    </body>
</html>
