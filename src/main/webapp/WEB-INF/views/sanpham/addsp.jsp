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
            <h1> Thêm sản phẩm</h1>
            <br>
            <form action="/QuanLyBanHang/addsp" method="POST">
                <label for="masp">Mã sản phẩm<label />
                <input type="text" id="masp" name="masp"/> 
                <br>
                <label for="tensp">Tên sản phẩm<label />
                <input type="text" id="tensp" name="tensp"/>
                <br>
                <label for="quycach">Quy cách (kg)<label />
                <input type="text" id="quycach" name="quycach"/>
                <br>
                <label for="giasp">Giá sản phẩm<label />
                <input type="text" id="giasp" name="giasp"/>
                <br>
                <input type="submit" value="Thêm sản phẩm"/>
            </form>
            <br>
            <button>
                <a style="text-decoration:none" href="/QuanLyBanHang/viewproduct">Quay lại danh sách sản phẩm</a>
            </button>
        </div>
    </body>
</html>
