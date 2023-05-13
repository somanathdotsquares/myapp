<%-- 
    Document   : profile
    Created on : 27-Mar-2023, 7:25:54 pm
    Author     : Admin
--%>
<%@page import="com.myapp.entities.User" %>
<%@page errorPage="error_page.jsp" %>
<%
    User user=(User)session.getAttribute("currentUser");
    if(user==null){
    response.sendRedirect("login_page.jsp");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
       <!--Navbar bootstarp-->
<nav class="navbar navbar-expand-lg navbar-dark primary-background">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp"> <span class="fa fa-certificate"></span> My App</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#"> <span class="fa fa-snowflake-o"></span> Learn awasome</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <span class="fa fa-check-square"/> Categories
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#">Programing</a></li>
                        <li><a class="dropdown-item" href="#">Project</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="#">Tasks</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact_us.jsp"><span class="fa fa-phone-square"/> Contact</a>
                </li>
                
              

                <li class="nav-item">
                    <a class="nav-link disabled">More...</a>
                </li>
            </ul>
             <li class="navbar-nav mr-right">
                    <a class="nav-link" href="#"><span class="fa fa-user-circle"/> <%=user.getName()%></a>
                </li>
           <li class="navbar-nav mr-right">
                    <a class="nav-link" href="LogoutServlet"><span class="fa fa-user-logout"/> Logout</a>
                </li>
        </div>
    </div>
</nav>
        <%=
        user.getName()%>
        
        <br/>
       <%=  user.getEmail()%>
         <br/>
        
       <%=  user.getAbout()
        %>
    </body>
</html>
