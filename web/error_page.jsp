<%-- 
    Document   : error_page
    Created on : Mar 26, 2023, 11:45:20 PM
    Author     : Somanath Gaikwad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page</title>
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
        <div class="container text-center">
            <img src="img/computer.png" class="img-fluid"/>
            <h3 class="display-3">Solly ! Something went wrong...</h3>
            <%= exception %> <br/> 
            <a href="index.jsp" class="btn btn-lg btn-primary text-white mt-3">Home</a>
       </div>
    </body>
</html>
