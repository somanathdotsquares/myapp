<%-- 
    Document   : test
    Created on : 25-Mar-2023, 12:46:31 pm
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="Demo.MyClass"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   <body>
<%
  MyClass tc = new MyClass();
  out.print(tc.testMethod());
%>
<!--Disable right click-->
        <script>
            document.addEventListener("contextmenu", (event) => {
                event.preventDefault();
            });
        </script>
</body>
</html>
