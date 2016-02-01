<%-- 
    Document   : Lab3
    Created on : Feb 1, 2016, 11:13:04 AM
    Author     : andre_000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet"
        href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <link href="CalcApp.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
         <nav class="navbar navbar-default navbar-static-top">
        <div class="container">
            <div class="navbar-header">
                <a href="#" class="navbar-brand">Multi-Shape Lab 3</a>
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#collapse-menu">
                    <span class="sr-only">Toggle Navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse" id="collapse-menu">
                <ul class="nav navbar-nav navbar-right">
                    <li class="active"><a href="index.html">Home</a></li>
                    <li><a href="lab1.html" target="_blank">Lab 1</a></li>
                    <li><a href="lab2.jsp" target="_blank">Lab 2</a></li>
                    <li><a href="lab3.jsp" target="_blank">lab 3</a></li>
                </ul>
           </div>
        </div>
    </nav>
        
        
    <div class="container">
        <div class="row">
            <div class="col-md-4">
        
        
        <form method="POST" action="MultiShape" name="Rectangle" id="rectangle" class="calcBox">
            <h2>Rectangle Calculator</h2>
            <label>Enter Height</label>
            <input type="text" name="height" value=""/>
            <br>
            <label>Enter Width</label>
            <input type="text" name="width" value=""/>
            <br>
            <input type="submit" name="submit" value="Submit"/>
            <input type="hidden" name="shapeID" value="RECTANGLE" />
        </form>
                    
                </div>
             <div class="col-md-4">
        
        <form method="POST" action="MultiShape" name="Triangle" id="triangle" class="calcBox">
            <h2>Triangle Calculator</h2>
            <label>Enter Height</label>
            <input type="text" name="height" value=""/>
            <br>
            <label>Enter Base</label>
            <input type="text" name="base" value=""/>
            <br>
            <input type="submit" name="submit" value="Submit"/>
            <input type="hidden" name="shapeID" value="TRIANGLE" />
        </form>
             </div>
            
             <div class="col-md-4">
        <form method="POST" action="MultiShape" name="Circle" id="circle" class="calcBox">
            <h2>Circle Calculator</h2>
            <label>Enter Radius</label>
            <input type="text" name="radius" value=""/>
            <br>
            <br>
            <input type="submit" name="submit" value="Submit"/>
            <input type="hidden" name="shapeID" value="CIRCLE" />
        </form>
                 </div>
        </div>
            <br>
            <div class="cotainer" class="calcBox">
            <p>
            <% 
                Object responseObj = request.getAttribute("myMsg");
                Object errObj = request.getAttribute("errorMsg");
                
                if(responseObj != null){
                out.println(request.getAttribute("myMsg"));
                }
                 if(errObj != null) {
                    out.println(errObj.toString());
                }   
            %>

            
            
            
            </p>
            </div>
            
             <nav class="navbar	navbar-inverse	navbar-fixed-bottom">
            <div class="container">
                <p class="navbar-text"><i>&copy; 2016 Andrew Wintermyer</i></p>  
            </div>
                 
        </nav>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>    
    </body>
</html>
