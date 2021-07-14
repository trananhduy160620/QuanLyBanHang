<%-- 
    Document   : list
    Created on : Jun 22, 2021, 1:29:15 AM
    Author     : Administrator
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="teamwork.com.models.LichBanHang" %>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý lịch bán hàng</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
              crossorigin="anonymous">
        <style> 
            th{
                text-align: center;
            }
        </style>
    </head>
    <body>
        <div class="container" width="70%" align="center">
            <h1>Lịch bán hàng</h1>  
            <table class="table table-bordered" width="100%" >  
                <tr>
                    <th>Mã khách hàng</th>
                    <th>Tên khách hàng</th>
                    <th>Ngày xuất phiếu thu</th>
                    <th>Tổng tiền hóa đơn</th>
                </tr>
                <%
                    ArrayList<LichBanHang> list = (ArrayList<LichBanHang>) request.getAttribute("listLichBanHang");
                    for (int i = 0; i < list.size(); i++) {
                        out.print("<tr>");
                        out.print("<td>" + list.get(i).getMaKhachHang() + "</td>");
                        out.print("<td>" + list.get(i).getTenKhachHang() + "</td>");
                        out.print("<td>" + list.get(i).getNgayThang() + "</td>");
                        out.print("<td>" + list.get(i).getTongTien() + "</td>" + "<br>");
                        out.print("</tr>");
                    }
                %> 
            </table>  
            <br>
            <button class="btn btn-danger">
                <a style="text-decoration:none; color: white;" href="/QuanLyBanHang/index.jsp">Quay lại trang chủ</a>
            </button>
        </div>
    </body>
</html>


