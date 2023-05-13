<%-- 
    Document   : login_page
    Created on : Mar 26, 2023, 12:22:31 PM
    Author     : Somanath Gaikwad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.myapp.entities.Message" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
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
        <main class="d-flex align-items-center primary-background banner-background "style="height:80vh">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 offset-md-4">
                        <div class="card">
                            <div class="card-header primary-background text-white text-center">
                                <span class="fa fa-user-circle fa-2x"/>
                                <br/>
                                <p> Login Here</p>
                            </div>

                            <%
                       Message msg= (Message) session.getAttribute("msg");
                    
                       if(msg != null){
                            %>
                            <div class="alert <%= msg.getCssClass()%>" role="alert">
                                <%= msg.getContent()%>
                            </div>
                            <%
                                session.removeAttribute("msg");
                            }
                            %>
                            <div class="card-body">
                                <form action="LoginServlet" method="post">
                                    <div class="mb-3">
                                        <label for="exampleInputEmail1" class="form-label">Email address</label>
                                        <input type="email"name="email" required class="form-control" id="user_email" aria-describedby="emailHelp" placeholder="Enter email" autofocus="on">
                                        <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                                    </div>
                                    <div class="mb-3">
                                        <label for="exampleInputPassword1" class="form-label">Password</label>
                                        <input type="password" name ="password" required class="form-control" id="user_password" placeholder="Enter password">
                                    </div>
                                    <div class="container text-center">

                                        <button type="submit" class="btn btn-primary">Submit</button>
                                    </div>
                                </form>
                            </div>
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
    </body>
</html>
