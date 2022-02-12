<%-- 
    Document   : index
    Created on : Feb 6, 2022, 7:08:05 PM
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
                height: 100px;
                color: white;
                padding: 10px;
                text-align: center;
                background-color: blue;
            }
            

            #lineDiv{
                height: 8px;
                background-color: orange;
            }

        </style>
        
        
    </head>
    <body>
        

        <div class="container">
            <div class="row">
                <div class="col-12" id="headDiv">
                    <h1>BootApp</h1>
                </div>
            </div>

            <div class="row">
                <div class="col-12" id="lineDiv">
                
                </div>
            </div>

            
            <div class="row">
                <div class="col-3">  </div>
                <div class="col-6">  



                    <br><br>
                    <br><br>


                    <form action="NameMakeServlet" method="post"> 
                      <div class="mb-3">
                        <label  class="form-label">Enter First Name</label>
                        <input type="text" class="form-control"  placeholder="Enter your first name" name="fname">
                      </div>
                      <div class="mb-3">
                        <label  class="form-label">Enter Last Name</label>
                        <input type="text" class="form-control"  placeholder="Enter your last name" name="lname">
                      </div>
                      <div class="mb-3">
                        <label  class="form-label">Gender</label>
                        <input type="radio" value="M" name="gender" checked=""/> Male
                        <input type="radio" value="F" name="gender" /> Female
                      </div>
                      <div class="mb-3">
                        <label  class="form-label"></label>
                        <button type="submit" class="btn btn-primary">Submit</button>
                      </div>
                    </form>

                    
                    <h1>${fullname}</h1>

                </div>
                <div class="col-3">  </div>
            </div>
        </div>


    </body>
</html>
