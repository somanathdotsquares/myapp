<%-- 
    Document   : index.jsp
    Created on : 25-Mar-2023, 12:28:15 pm
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.myapp.helper.ConnectionProvider" %>
<!DOCTYPE html>
<html >
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
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
    <body >
        
        <!--impport navbar-->
        <%@include file="normal_navbar.jsp" %>

        <!--Banner-->
        <div class="container-fluid p-0 m-0 banner-background">
            <div class="jumbotron primary-background text-white">
                <div class="container">
                    <h3 class="display-3" >Welcome, Friends</h3>
                    <h3>The content below shows all Font Awesome </h3>
                    <p>It is a long established when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy.</p>
                    <p>A programming language is a system of notation for writing computer programs.[1] Most programming languages are text-based formal languages, but they may also be graphical. They are a kind of computer language.

                        The description of a programming language is usually split into the two implementation that is treated as a reference. Some languages have both, with the basic language defined by a standard and extensions taken from the dominant implementation being common.</p>
                    <button btn btn-outline-light btn-lg > <span class="fa fa-user-plus"/> Start! It's free</button>
                    <button href="login_page.jsp" btn btn-outline-light btn-lg ><span class="fa fa-user-circle"/> Login</button>
                </div>
            </div>

        </div> <br/>
        <!--bootstrap cards-->
        <div class="container ">
            <div class="row mb-2" >
                <div class="col-md-4">
                    <div class="card mb-2" ">
                        <div class="card-body">
                            <h5 class="card-title">Python</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-white">Read more</a>
                        </div>
                    </div>

                </div>
                <div class="col-md-4">
                    <div class="card mb-2" ">
                        <div class="card-body">
                            <h5 class="card-title">C++</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-white">Read more</a>
                        </div>
                    </div>

                </div>

                <div class="col-md-4">
                    <div class="card mb-2" ">
                        <div class="card-body">
                            <h5 class="card-title" >Javascript</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-white">Read more</a>
                        </div>
                    </div>
                </div>
            </div> 
            <div class="row mb-2">
                <div class="col-md-4">
                    <div class="card mb-2" ">
                        <div class="card-body">
                            <h5 class="card-title">C#</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-white">Read more</a>
                        </div>
                    </div>

                </div>
                <div class="col-md-4">
                    <div class="card mb-2" ">
                        <div class="card-body">
                            <h5 class="card-title">Html</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-white">Read more</a>
                        </div>
                    </div>

                </div>

                <div class="col-md-4">
                    <div class="card mb-2" ">
                        <div class="card-body">
                            <h5 class="card-title">PHP</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-white">Read more</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>










        <!--javascript bs5.1-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
                integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" 
        crossorigin="anonymous"></script>

        <!--jquery-->
        <script
            src="https://code.jquery.com/jquery-3.6.4.min.js"
            integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8="
        crossorigin="anonymous"></script>
        <!--myjs-->




    </body>
</html>
