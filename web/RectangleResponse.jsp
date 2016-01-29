<%-- 
    Document   : RectangleResponse
    Created on : Jan 29, 2016, 12:21:08 PM
    Author     : andre_000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rectangle Response Page</title>
    </head>
    <body>
        <h1>Lab 1 Rectangle Response Page</h1>
         <%
                Object responseObj = request.getAttribute("myMsg");
                Object errObj = request.getAttribute("errorMsg");
                
                if(responseObj != null){
                    out.println(responseObj.toString());
                }
                if(errObj != null) {
                    out.println(errObj.toString());
                }
            %>
    </body>
</html>
