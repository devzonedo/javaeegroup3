<%-- 
    Document   : index.jsp
    Created on : Feb 5, 2022, 7:11:10 PM
    Author     : devzo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="js/bootstrap.js" type="text/javascript"></script>


        <style>
            #headDiv{
                text-align: center;
                background-color: #2e1aa5;
                color: azure;
                height: 80px;
                padding: 15px;
            }

        </style>

    </head>
    <body>


        <div class="container">
            <div class="row">
                <div class="col-12" id="headDiv">
                    <h1>Boot App</h1>
                </div>
            </div>

            <div class="row">
                <div class="col-12" style="background-color: orangered;height: 6px;">

                </div>
            </div>


            <div class="row">
                <div class="col-4">

                </div>
                <div class="col-4">
                    <br><br><br>

                    <form action="NameMakeServlet" method="post">

                        <div class="mb-3">
                            <label class="form-label">Enter Your First Name</label>
                            <input type="text" class="form-control" placeholder="First Name" name="fname">
                        </div>
                        <div class="mb-3">
                            <label  class="form-label">Enter Your Last Name</label>
                            <input type="text" class="form-control" placeholder="Last Name" name="lname">
                        </div>
                        <div class="mb-3">
                            <label  class="form-label">Gender</label>
                            <input type="radio" value="M" name="gender" checked/> Male
                            <input type="radio" value="F" name="gender"/> Female
                        </div>
                        <div class="mb-3">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>


                    </form>

                    <h1> ${UserFullName} </h1>



                    <hr>



                    <form class="row g-3" action="" method="">
                        <div class="col-auto">
                            <input type="text" class="form-control" placeholder="Enter Your Name" name="uname">
                        </div>
                        <div class="col-auto">
                            <input type="text" class="form-control" placeholder="Repeat Count" name="rcount">
                        </div>
                        <div class="col-auto">
                            <button type="submit" class="btn btn-primary mb-3">Submit</button>
                        </div>
                    </form>


                    <c:forEach var = "i" begin = "1" end = "5">
                       <p> Item ${subuname}<p>
                    </c:forEach>

                </div>
                <div class="col-4">

                </div>
            </div>



        </div>

    </body>
</html>
