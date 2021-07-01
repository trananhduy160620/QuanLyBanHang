<%-- 
    Document   : list
    Created on : Jun 22, 2021, 1:29:15 AM
    Author     : Administrator
--%>

<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page session="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        ${list[0].getMaSanPham()} - ${list[0].getTenSanPham()} - ${list[0].getQuycach()} - ${list[0].getGiaSanPham()} <br>
        ${list[1].getMaSanPham()} - ${list[1].getTenSanPham()} - ${list[1].getQuycach()} - ${list[1].getGiaSanPham()} <br>
        ${list[2].getMaSanPham()} - ${list[2].getTenSanPham()} - ${list[2].getQuycach()} - ${list[2].getGiaSanPham()} <br>
        ${list[3].getMaSanPham()} - ${list[3].getTenSanPham()} - ${list[3].getQuycach()} - ${list[3].getGiaSanPham()} <br>
       
        
        <h1>Employees List</h1>  
        <table border="2" width="70%" cellpadding="2">  
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Salary</th>
                <th>Designation</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>  
            <c:forEach var="item" items="${list}">   
            <tr>  
                <td>
                    <c:out value="${item.getMaSanPham()}"/>
                </td>  
                <td>
                    <c:out value="${item.getTenSanPham()}"/>
                </td>  
                <td>
                    <c:out value="${item.getQuycach()}"/>
                </td>  
                <td>
                    <c:out value="${item.getGiaSanPham()}"/>
                </td>  
            </tr>  
            </c:forEach> 
        </table>  
        <br/>  
    </body>
</html>
