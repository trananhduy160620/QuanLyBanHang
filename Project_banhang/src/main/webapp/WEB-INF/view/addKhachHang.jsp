<%-- 
    Document   : addKhachHang
    Created on : 3 Jul 2021, 12:31:52
    Author     : PC
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
        <div class="container">
            <jsp:include page="manageKhachHang.jsp"></jsp:include>
            <div class="custom-customer">
                <form action="./save.html" method="POST">
                    <div class="item-input">
                        <label for="tenkh">Tên khách hàng *</label>
                        <input type="text" name="tenkh" id="tenkh"/>
                    </div>
                    <div class="item-input">
                        <label for="diachi">Địa chỉ *</label>
                        <input type="text" name="diachi" id="diachi"/>
                    </div>
                    <div class="item-input">
                        <label for="sodienthoai">Số điện thoại *</label>
                        <input type="text" name="sodienthoai" id="sodienthoai"/>
                    </div>
                    <div class="item-input">
                        <label for="sodu">Số dư tài khoản *</label>
                        <input type="text" name="sodu" id="sodu"/>
                    </div>
                    <div class="item-input">
                        <label for="congno">Công nợ *</label>
                        <input type="text" name="congno" id="congno"/>
                    </div>
                    <div class="row btn-submit">
                        <input type="submit" value="Thêm"/>
                        <a href="./list.html">Hủy</a>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
