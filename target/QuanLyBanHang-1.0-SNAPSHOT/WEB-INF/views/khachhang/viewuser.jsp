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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
              crossorigin="anonymous">
    </head>
    <body>
        <div class="container" width="70%" align="center">
            <h1>Danh sách khách hàng</h1>  
            <form action="/QuanLyBanHang/viewuser" method="POST">
                <input type="text" name="makh" placeholder="Nhập mã khách hàng"/>
                <input type="submit" value="Tìm kiếm" />
            </form>
            <table class="table table-bordered" width="100%" >  
                <tr>
                    <th scope="col">Mã khách hàng</th>
                    <th scope="col">Tên khách hàng</th>
                    <th scope="col">Địa chỉ</th>
                    <th scope="col">SĐT</th>
                    <th scope="col">Số dư</th>
                    <th scope="col">Công nợ</th>
                    <th colspan="2">
                        <button>
                        <a style="text-decoration:none" href="addkh"> Thêm khách hàng </a>
                        </button>
                    </th>
                </tr>
                <%
                    
                    ArrayList<KhachHang> list = (ArrayList<KhachHang>) request.getAttribute("listUser");
                    out.print("<p> Số lượng khách hàng: " + list.size() + "</p>");
                    for (int i = 0; i < list.size(); i++) {
                        out.print("<tr>");
                        out.print("<td>" + list.get(i).getMaKhachHang()+ "</td>");
                        out.print("<td>" + list.get(i).getTenKhachHang()+ "</td>");
                        out.print("<td>" + list.get(i).getDiachi() + "</td>");
                        out.print("<td>" + list.get(i).getSdt() + "</td>");
                        out.print("<td>" + list.get(i).getSodu()+ "</td>");
                        out.print("<td>" + list.get(i).getCongno() + "</td>");
                        out.print("<td> <a href='updatekh/" + list.get(i).getMaKhachHang() + "'> Sửa" + "</a> </td>");
                        out.print("<td> <a href='deletekh/" + list.get(i).getMaKhachHang() + "'> Xóa" + "</a> </td>");
                        out.print("</tr>");
                    }
                %> 
            </table>
            <br>
            <button>
                <a style="text-decoration:none" href="/QuanLyBanHang/index.jsp">Quay lại trang chủ</a>
            </button>
        </div>
    </body>
</html>
