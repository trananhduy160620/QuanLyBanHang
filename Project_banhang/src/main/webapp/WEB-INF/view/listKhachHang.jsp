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
        <div class="container">
            <jsp:include page="manageKhachHang.jsp"></jsp:include>
        
            <div class="form-search-customer">
                <div class="row">
                    <div class="offset-5 col-5">
                        <form action="./search.html" method="POST">
                            <input type="text" name="tenkh" value="${nv.tenkh}" placeholder="Nhập tên khách hàng"/>
                            <input type="submit" value="Tìm kiếm"/>
                        </form>
                    </div>
                    <div class="col-2 btn-add">
                        <a href="./add.html">Thêm khách hàng</a>
                    </div>
                </div>
            </div>
            <table class="list-customer">
                <th>Tên khách hàng</th>
                <th>Địa chỉ</th>
                <th>Điện thoại</th>
                <th>Số dư</th>
                <th>Công nợ</th>
                <th>Cập nhật</th>
                <th>Xóa</th>

                <c:forEach var="kh" items="${list}">
                    <tr>
                        <td> ${kh.tenkh} </td>
                        <td> ${kh.diachi} </td>
                        <td> ${kh.sodienthoai} </td>
                        <td> ${kh.sodu} </td>
                        <td> ${kh.congno} </td>
                        <td><a href="./edit.html?makh=${kh.makh}">Edit</a></td>
                        <td><a href="./delete.html?makh=${kh.makh}" onclick="return confirm('Ban co chac chan muon xoa khach hang?')">Delete</a> </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>

