<%-- 
    Document   : index.jsp
    Created on : Feb 3, 2022, 8:13:09 PM
    Author     : devzo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <h1>Login</h1>
        
        
       ${msg}
       
        <form action="LoginServlet" method="post">
            <label>Username</label>
            <input type="text" name="username" />
            <label>Password</label>
            <input type="password" name="pword" />
            <input type="submit" />
        </form>
       
       
       
    </body>
</html>
