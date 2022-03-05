<%-- 
    Document   : index
    Created on : Feb 19, 2022, 8:07:31 PM
    Author     : devzo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SMS</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>


        <style>
            #headDiv{
                background-color:#1818b1;
                color:#ffffff;
                padding:15px;
            }

            #lineDiv{
                background-color:orange;
                height: 10px;
            }

        </style>

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
                <div class="col-4"></div>
                <div class="col-4">
                    <br><br>
                    <center>
                        <img src="images/logo.png" alt=""/>
                    </center>
                    <h3>Login</h3>

                    
                    
                    <form action="LoginServlet" method="post">
                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Username</label>
                        <input type="text" name="username" class="form-control"  placeholder="Enter username">
                    </div>

                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Password</label>
                        <input type="password" name="pword" class="form-control"  placeholder="Enter password">
                    </div>

                    <div class="mb-3">
                        <input type="submit" class="btn btn-primary"  value="Login">
                    </div>
                    </form>

                </div>
                <div class="col-4"></div>
            </div>



        </div>



    </body>
</html>
