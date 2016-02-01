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
    </head>
    <body>
        
        <h1>Multi Shape Page</h1>
        
        
    <div class="container">
        <div class="row">
            <div class="col-md-4">
        
        
        <form method="POST" action="MultiShape" name="Rectangle" id="rectangle">
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
        
        <form method="POST" action="MultiShape" name="Triangle" id="triangle">
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
        <form method="POST" action="MultiShape" name="Circle" id="circle">
            <h2>Circle Calculator</h2>
            <label>Enter Radius</label>
            <input type="text" name="radius" value=""/>
            <br>
            <input type="submit" name="submit" value="Submit"/>
            <input type="hidden" name="shapeID" value="CIRCLE" />
        </form>
                 </div>
        </div>
            <br>
            <div class="cotainer">
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
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>    
    </body>
</html>
