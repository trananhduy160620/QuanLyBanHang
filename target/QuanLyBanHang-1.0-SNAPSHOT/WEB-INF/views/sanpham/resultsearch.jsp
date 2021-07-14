<%-- 
    Document   : list
    Created on : Jun 22, 2021, 1:29:15 AM
    Author     : Administrator
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="teamwork.com.models.SanPham" %>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý sản phẩm</title>
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
        <div class="container" width="100%" align="center">
            <h1>Danh Sách Sản Phẩm Cần Tìm</h1>
            <table class="table table-bordered" width="70%" >  
                <tr>
                    <th>Mã sản phẩm</th>
                    <th>Tên sản phẩm</th>
                    <th>Quy cách (kg)</th>
                    <th>Giá gốc (ĐV: 1000Đ)</th>
                    <th colspan="2">
                        <a href="addsp"> Thêm sản phẩm </a>
                    </th>

                </tr>
                <%
                    ArrayList<SanPham> list = (ArrayList<SanPham>) request.getAttribute("listProduct");
                    for (int i = 0; i < list.size(); i++) {
                        out.print("<tr>");
                        out.print("<td>" + list.get(i).getMaSanPham() + "</td>");
                        out.print("<td>" + list.get(i).getTenSanPham() + "</td>");
                        out.print("<td>" + list.get(i).getQuycach() + "</td>");
                        out.print("<td>" + list.get(i).getGiaSanPham() + "</td>" + "<br>");
                        out.print("<td> <a href='updatesp/" + list.get(i).getMaSanPham() + "'> Sửa" + "</a> </td>");
                        out.print("<td> <a href='deletesp/" + list.get(i).getMaSanPham() + "'> Xóa" + "</a> </td>");
                        out.print("</tr>");
                    }
                %> 
            </table>

            <button class="btn btn-danger">
                <a style="text-decoration:none; color:white" href="/QuanLyBanHang/viewproduct">Quay lại danh sách sản phẩm</a>
            </button>
        </div>
    </body>
</html>
