<%-- 
    Document   : addsp
    Created on : Jul 2, 2021, 1:40:46 AM
    Author     : Administrator
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="teamwork.com.models.SanPham" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cập nhật sản phẩm</title>
    </head>
    <body>
        
        <div align="center">
            <h1>Cập nhật sản phẩm</h1>
            <br>
            <form action="/QuanLyBanHang/updateSp" method="POST">
                
                <label for="masp">Mã sản phẩm<label />
                <input type="text" id="masp" name="masp" value="${listProduct[0].getMaSanPham()}"/> 
                <br>
                <label for="tensp">Tên sản phẩm<label />
                <input type="text" id="tensp" name="tensp" value="${listProduct[0].getTenSanPham()}"/>
                <br>
                <label for="quycach">Quy cách (kg)<label />
                <input type="text" id="quycach" name="quycach" value="${listProduct[0].getQuycach()}"/>
                <br>
                <label for="giasp">Giá sản phẩm<label />
                <input type="text" id="giasp" name="giasp" value="${listProduct[0].getGiaSanPham()}"/>
                <br>
                <input type="submit" value="Cập nhật sản phẩm"/>
            </form>
        </div>
    </body>
</html>
