<%-- 
    Document   : addsp
    Created on : Jul 2, 2021, 1:40:46 AM
    Author     : Administrator
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="teamwork.com.models.KhachHang" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cập nhật sản phẩm</title>
    </head>
    <body>
        
        <div align="center">
            <h1>Cập nhật khách hàng</h1>
            <br>
            <form action="/QuanLyBanHang/updatekh" method="POST">
                <label for="makh">Mã khách hàng <label />
                <input type="text" id="makh" name="makh" value="${listUser[0].getMaKhachHang()}"/> 
                <br>
                
                <label for="tenkh">Tên khách hàng <label />
                <input type="text" id="tenkh" name="tenkh" value="${listUser[0].getTenKhachHang()}"/>
                <br>
                
                <label for="diachi">Địa chỉ <label />
                <input type="text" id="diachi" name="diachi" value="${listUser[0].getDiachi()}"/>
                <br>
                
                <label for="sdt">SĐT <label />
                <input type="text" id="sdt" name="sdt" value="${listUser[0].getSdt()}"/>
                <br>
                
                <label for="sodu">Số dư <label />
                <input type="text" id="sodu" name="sodu" value="${listUser[0].getSodu()}"/>
                <br>
                
                <label for="congno">Công nợ <label />
                <input type="text" id="congno" name="congno" value="${listUser[0].getCongno()}"/>
                <br>
                <input type="submit" value="Cập nhật khách hàng"/>
            </form>
            <br>
            <button>
                <a style="text-decoration:none" href="/QuanLyBanHang/viewuser">Quay lại danh sách khách hàng</a>
            </button>
        </div>
    </body>
</html>
