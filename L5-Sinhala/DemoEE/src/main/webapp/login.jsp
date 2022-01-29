<%-- 
    Document   : login
    Created on : Jan 29, 2022, 7:37:19 PM
    Author     : devzo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>


        <form action="LoginServlet" method="post">
            <label>Username</label>
            <input type="text" name="username"/>
            <label>Password</label>
            <input type="password" name="pword"/>
            <input type="submit" />
        </form>

    </body>
</html>
