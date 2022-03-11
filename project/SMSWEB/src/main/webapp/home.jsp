<%-- 
    Document   : index
    Created on : Feb 19, 2022, 8:07:31 PM
    Author     : devzo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SMS-Home</title>
        
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/sms-style.css" rel="stylesheet" type="text/css"/>
      

    </head>
    <body>

        <div class="containerx">
            <div class="row">
                <div class="col-12" id="headDiv">
                    <h2>SMS</h2>
                    <h6>Student Management System</h6>
                </div>
                <div class="col-12" id="lineDiv">
                  
                </div>
            </div>

            
            
            <div class="row">
                <div class="col-2"> Menu</div>
                <div class="col-10"> 
                    <p style="text-align: right"> ASD Fernando (ADMIN) | <a href="LogoutServlet"> Logout </a> </p>
                    <h2>Home</h2> 
                    ${userdata.role_code}
                </div>
            </div>



        </div>



    </body>
</html>
