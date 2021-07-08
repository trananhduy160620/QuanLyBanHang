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
        <title>Thêm hóa đơn</title>
    </head>

    <body>
        <div align="center">
            <h1>Danh sách sản phẩm</h1>  
            <form action="/QuanLyBanHang/addhd/" method="POST">
                <label for="mahd"> Mã hóa đơn </label>
                <input type="text" id="mahoadon" name="mahd" placeholder="Nhập mã hóa đơn"/>
                <br>
                <br>
                <table border="2" width="70%" >  
                    <tr>
                        <th>Mã sản phẩm</th>
                        <th>Tên sản phẩm</th>
                        <th>Quy cách (kg)</th>
                        <th>Giá gốc (ĐV: 1000Đ)</th>
                        <th>Mua sản phẩm</th>
                        <th>Số lượng</th>
                    </tr>
                    <%
                        ArrayList<SanPham> list = (ArrayList<SanPham>) request.getAttribute("list");
                        for (int i = 0; i < list.size(); i++) {
                            out.print("<tr>");
                            out.print("<td>" + list.get(i).getMaSanPham() + "</td>");
                            out.print("<td>" + list.get(i).getTenSanPham() + "</td>");
                            out.print("<td>" + list.get(i).getQuycach() + "</td>");
                            out.print("<td> <input type='text' name='giasp' value='" + list.get(i).getGiaSanPham() + "' readonly/>" + "</td>");
                            out.print("<td> <input type='checkbox' name='masp' value='" + list.get(i).getMaSanPham() + "'/>" + "</td>");
                            out.print("<td> <input type='number' name='soluong'/>" + "</td>");
                            out.print("</tr>");
                        }
                    %> 
                </table> 
                <br>
                <input type="submit" value="Lập hóa đơn" />
            <form>
            <br>
            <button>
                <a style="text-decoration:none" href="/QuanLyBanHang/viewhoadon">Quay lại danh sách hóa đơn</a>
            </button>
        </div>
    </body>
</html>
