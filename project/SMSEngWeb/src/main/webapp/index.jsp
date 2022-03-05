<%-- 
    Document   : index.jsp
    Created on : Mar 5, 2022, 8:09:24 PM
    Author     : devzo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="js/bootstrap.js" type="text/javascript"></script>

        <link href="css/sms-style.css" rel="stylesheet" type="text/css"/>


    </head>
    <body>



        <div class="row">
            <div class="col-12" id="headDiv">
                <h2>SMS</h2>
                <p>Student Management System</p>
            </div>
        </div>
        <div class="row">
            <div class="col-12" id="lineDiv">
            </div>
        </div>

        <div class="row">
            <div class="col-4">
            </div>
            <div class="col-4">
                <br>
                <center>
                    <img src="images/logo.png" alt=""/>
                </center>
                
                <form action="LoginServlet" method="post">
                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Username</label>
                        <input type="text" class="form-control" id="exampleFormControlInput1" name="username" >
                    </div>
                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Password</label>
                        <input type="password" class="form-control" id="exampleFormControlInput1" name="pword">
                    </div>
                    <div class="mb-3">
                        <input type="submit" class="btn btn-warning" value="Login" />
                    </div>
                </form>



            </div>
            <div class="col-4">
            </div>
        </div>



    </body>
</html>
