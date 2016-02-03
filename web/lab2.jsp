<%-- 
    Document   : indexLab2
    Created on : Jan 29, 2016, 12:55:42 PM
    Author     : andre_000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
        <link href="CalcApp.css" rel="stylesheet" type="text/css"/>
    </head>
  
    <body>
        
        <nav class="navbar navbar-default navbar-static-top">
        <div class="container">
            <div class="navbar-header">
                <a href="#" class="navbar-brand">Calculator Lab: Andrew Wintermyer</a>
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
                    <li><a href="lab1.html" >Lab 1</a></li>
                    <li><a href="lab2.jsp" >Lab 2</a></li>
                    <li><a href="lab3.jsp" >lab 3</a></li>
                </ul>
           </div>
        </div>
    </nav>
        
        
        
        <div id ="rectangleBox">
        <form method="POST" action="RectangleControllerLab2">
            <label>Enter Height</label>
            <input type="text" name="height" value=""/>
            <br>
            <label>Enter Width</label>
            <input type="text" name="width" value=""/>
            <br>
            <input type="submit" name="submit" value="Say Hello"/>
            
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
            
        
        </form>
                         <nav class="navbar	navbar-inverse	navbar-fixed-bottom">
            <div class="container">
                <p class="navbar-text"><i>&copy; 2016 Andrew Wintermyer</i></p>  
            </div>
                 
        </nav>
            
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>     
    </body>
</html>
