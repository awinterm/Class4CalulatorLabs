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
    </head>
    <body>
         <h1>Rectangle Calculator Lab2</h1>
        
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
    </body>
</html>
