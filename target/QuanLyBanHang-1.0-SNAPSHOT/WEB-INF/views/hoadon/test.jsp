<%-- 
    Document   : test
    Created on : Jul 5, 2021, 2:44:40 PM
    Author     : Administrator
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="teamwork.com.models.HoaDon" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result Page</title>
    </head>
    <body>
        <h1>Result !!!</h1>
        <%
            ArrayList<String> list = (ArrayList<String>) request.getAttribute("result");
            out.print("msg: " + list.get(0));
            out.print("<br>");
        %>
    </body>
</html>
