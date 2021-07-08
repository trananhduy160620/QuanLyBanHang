<%-- 
    Document   : addsp
    Created on : Jul 2, 2021, 1:40:46 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thêm sản phẩm</title>
    </head>
    <body>
       
        <div align="center">
            <h1>Thêm khách hàng</h1>
            <br>
            <form action="/QuanLyBanHang/addkh" method="POST">
                <label for="makh">Mã khách hàng <label />
                <input type="text" id="makh" name="makh"/> 
                <br>
                
                <label for="tenkh">Tên khách hàng <label />
                <input type="text" id="tenkh" name="tenkh"/>
                <br>
                
                <label for="diachi">Địa chỉ <label />
                <input type="text" id="diachi" name="diachi"/>
                <br>
                
                <label for="sdt">SĐT <label />
                <input type="text" id="sdt" name="sdt"/>
                <br>
                
                <label for="sodu">Số dư <label />
                <input type="text" id="sodu" name="sodu" value="0"/>
                <br>
                
                <label for="congno">Công nợ <label />
                <input type="text" id="congno" name="congno" value="0"/>
                <br>
                <input type="submit" value="Thêm khách hàng"/>
            </form>
            <br>
            <button>
                <a style="text-decoration:none" href="/QuanLyBanHang/viewuser">Quay lại danh sách khách hàng</a>
            </button>
        </div>
    </body>
</html>
