<%-- 
    Document   : list
    Created on : Jun 22, 2021, 1:29:15 AM
    Author     : Administrator
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="teamwork.com.models.HoaDon" %>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý hóa đơn</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
              crossorigin="anonymous">
    </head>
    
    <body>
        <div class="container" width="100%" align="center">
            <h1>Danh sách các hóa đơn</h1>    
            
            <button style="float:left" class="btn btn-success">
                <a style="text-decoration:none; color: white" href="addhd"> Thêm hóa đơn </a>
            </button>

            <table class="table table-bordered" width="70%" >  
                <tr>
                    <th>Mã hóa đơn</th>
                    <th>Mã sản phẩm</th>
                    <th>Số lượng</th>
                    <th>Giá bán</th>
                    <th>Khuyến mại</th>
                </tr>
                <%
                    ArrayList<HoaDon> list = (ArrayList<HoaDon>) request.getAttribute("list");
                    for (int i = 0; i < list.size(); i++) {
                        out.print("<tr>");
                        out.print("<td>" + list.get(i).getMaHoaDon()+ "</td>");
                        out.print("<td>" + list.get(i).getMaSanPham() + "</td>");
                        out.print("<td>" + list.get(i).getSoLuong()+ "</td>");
                        out.print("<td>" + list.get(i).getGiaBan()+ "</td>");
                        out.print("<td>" + list.get(i).getKhuyenMai()+ "</td>" + "<br>");
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

<style> 
    th{
        text-align: center;
    }
    
    label{
        margin: auto;
    }
    
    th,tr{
        vertical-align: middle;
    }
</style>