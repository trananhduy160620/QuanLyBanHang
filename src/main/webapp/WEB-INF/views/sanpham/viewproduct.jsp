<%-- 
    Document   : list
    Created on : Jun 22, 2021, 1:29:15 AM
    Author     : Administrator
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="teamwork.com.models.SanPham" %>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sản phẩm</title>
    </head>
    <body>
        <div align="center">
            <h1>Danh sách sản phẩm</h1>  
            <form action="/QuanLyBanHang/viewproduct" method="POST">
                <input type="text" name="masp" placeholder="Nhập mã sản phẩm"/>
                <input type="submit" value="Tìm kiếm" />
            <form>
            <table border="2" width="70%" >  
                <tr>
                    <th>Mã sản phẩm</th>
                    <th>Tên sản phẩm</th>
                    <th>Quy cách (kg)</th>
                    <th>Giá gốc (ĐV: 1000Đ)</th>
                    <th colspan="2">
                        <a href="addsp"> Thêm sản phẩm </a>
                    </th>
                </tr>
                <%
                    
                    ArrayList<SanPham> list = (ArrayList<SanPham>) request.getAttribute("list");
                    out.print("<p> Số lượng sản phẩm: " + list.size() + "</p>");
                    for (int i = 0; i < list.size(); i++) {
                        out.print("<tr>");
                        out.print("<td>" + list.get(i).getMaSanPham() + "</td>");
                        out.print("<td>" + list.get(i).getTenSanPham() + "</td>");
                        out.print("<td>" + list.get(i).getQuycach() + "</td>");
                        out.print("<td>" + list.get(i).getGiaSanPham() + "</td>" + "<br>");
                        out.print("<td> <a href='updatesp/" + list.get(i).getMaSanPham() + "'> Sửa" + "</a> </td>");
                        out.print("<td> <a href='deletesp/" + list.get(i).getMaSanPham() + "'> Xóa" + "</a> </td>");
                        out.print("</tr>");
                    }
                %> 
            </table>  
            <a href="/QuanLyBanHang/index.jsp">Quay lại trang chủ</a>
        </div>
    </body>
</html>
