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
    </head>
    <body>
        
        <h1>Multi Shape Page</h1>
        
        <form method="POST" action="MultiShape" name="Rectangle" id="rectangle">
            <label>Enter Height</label>
            <input type="text" name="height" value=""/>
            <br>
            <label>Enter Width</label>
            <input type="text" name="width" value=""/>
            <br>
            <input type="submit" name="submit" value="Submit"/>
            <input type="hidden" name="shapeID" value="RECTANGLE" />
        </form>
        
        <form method="POST" action="MultiShape" name="Triangle" id="triangle">
            <label>Enter Height</label>
            <input type="text" name="height" value=""/>
            <br>
            <label>Enter Base</label>
            <input type="text" name="width" value=""/>
            <br>
            <input type="submit" name="submit" value="Submit"/>
            <input type="hidden" name="shapeID" value="TRIANGLE" />
        </form>
        
        <form method="POST" action="MultiShape" name="Circle" id="circle">
            <label>Enter Radius</label>
            <input type="text" name="height" value=""/>
            <br>
            <input type="submit" name="submit" value="Submit"/>
            <input type="hidden" name="shapeID" value="TRIANGLE" />
        </form>
        
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
        
    </body>
</html>
