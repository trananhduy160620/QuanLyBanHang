<%-- 
    Document   : infoKhachHang
    Created on : 3 Jul 2021, 13:33:55
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                            <input type="text" name="makh" value="${nv.makh}" placeholder="Nhập tên khách hàng"/>
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

                <tr>
                    <td> ${kh.tenkh} </td>
                    <td> ${kh.diachi} </td>
                    <td> ${kh.sodienthoai} </td>
                    <td> ${kh.sodu} </td>
                    <td> ${kh.congno} </td>
                </tr>
            </table>
            <div class="row btn-return">
                <a href="./list.html">Quay lại</a>
            </div>
        </div>
    </body>
</html>
