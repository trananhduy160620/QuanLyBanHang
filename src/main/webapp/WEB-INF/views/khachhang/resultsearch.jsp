<%-- 
    Document   : list
    Created on : Jun 22, 2021, 1:29:15 AM
    Author     : Administrator
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="teamwork.com.models.KhachHang" %>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Khách hàng</title>
    </head>
    <body>
        <div align="center">
            <h1>Danh sách khách hàng cần tìm</h1>
            <table border="2" width="70%" >  
                <tr>
                    <th>Mã khách hàng</th>
                    <th>Tên khách hàng</th>
                    <th>Địa chỉ</th>
                    <th>SĐT</th>
                    <th>Số dư</th>
                    <th>Công nợ</th>
                    <th colspan="2">
                        <a href="addkh"> Thêm khách hàng </a>
                    </th>
                </tr>
                <%
                    ArrayList<KhachHang> list = (ArrayList<KhachHang>) request.getAttribute("listUser");
                    for (int i = 0; i < list.size(); i++) {
                        out.print("<tr>");
                        out.print("<td>" + list.get(i).getMaKhachHang()+ "</td>");
                        out.print("<td>" + list.get(i).getTenKhachHang()+ "</td>");
                        out.print("<td>" + list.get(i).getDiachi() + "</td>");
                        out.print("<td>" + list.get(i).getSdt() + "</td>" + "<br>");
                        out.print("<td>" + list.get(i).getSodu()+ "</td>" + "<br>");
                        out.print("<td>" + list.get(i).getCongno() + "</td>" + "<br>");
                        out.print("<td> <a href='updatekh/" + list.get(i).getMaKhachHang() + "'> Sửa" + "</a> </td>");
                        out.print("<td> <a href='deletekh/" + list.get(i).getMaKhachHang() + "'> Xóa" + "</a> </td>");
                        out.print("</tr>");
                    }
                %> 
            </table>  
            <a href="/QuanLyBanHang/viewuser"> Quay lại danh sách khách hàng </a>
        </div>
    </body>
</html>

