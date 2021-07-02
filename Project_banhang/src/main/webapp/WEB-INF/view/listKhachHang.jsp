<%-- 
    Document   : listKhachHang
    Created on : Jul 2, 2021, 10:00:28 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Danh sach khách hàng</h1>
        <table border="1" cellspacing="0" cellpadding="0">
            <th>MaKhachhang</th>
            <th>TenKhachhang</th>
            <th>DiaChi</th>
            <th>SDT</th>
            <th>SoDu</th>
            <th>CongNo</th>

            <c:forEach var="kh" items="${list}">
                <tr>
                    <td> ${kh.makh} </td>
                    <td> ${kh.tenkh} </td>
                    <td> ${kh.diachi} </td>
                    <td> ${kh.sodienthoai} </td>
                    <td> ${kh.sodu} </td>
                    <td> ${kh.congno} </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>

