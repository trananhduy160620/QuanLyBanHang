<%-- 
    Document   : editKhachHang
    Created on : 3 Jul 2021, 12:32:25
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
                    <input type="hidden" name="makh" value="${kh.makh}"/>
                    <div class="item-input">
                        <label for="tenkh">Tên khách hàng *</label>
                        <input type="text" name="tenkh" id="tenkh" value="${kh.tenkh}"/>
                    </div>
                    <div class="item-input">
                        <label for="diachi">Địa chỉ *</label>
                        <input type="text" name="diachi" id="diachi" value="${kh.diachi}"/>
                    </div>
                    <div class="item-input">
                        <label for="sodienthoai">Số điện thoại *</label>
                        <input type="text" name="sodienthoai" value="${kh.sodienthoai}"/>
                    </div>
                    <div class="item-input">
                        <label for="sodu">Số dư tài khoản *</label>
                        <input type="text" name="sodu" id="sodu" value="${kh.sodu}"/>
                    </div>
                    <div class="item-input">
                        <label for="congno">Công nợ *</label>
                        <input type="text" name="congno" id="congno" value="${kh.congno}"/>
                    </div>
                    <div class="row btn-submit">
                        <input type="submit" value="Cập nhật" />
                        <a href="./list.html">Hủy</a>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
