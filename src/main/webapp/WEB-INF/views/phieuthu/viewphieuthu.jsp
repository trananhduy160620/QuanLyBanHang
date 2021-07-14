<%-- 
    Document   : list
    Created on : Jun 22, 2021, 1:29:15 AM
    Author     : Administrator
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="teamwork.com.models.PhieuThu" %>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý phiếu thu</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
              crossorigin="anonymous">
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
    </head>
    <body>
        <div class="container" width="70%" align="center">
            <h1>Danh sách phiếu thu</h1>
            
            <button style="float:left" class="btn btn-success">
                <a style="text-decoration:none; color: white" href="addpt"> Thêm phiếu thu </a>
            </button>
            
            <table class="table table-bordered" width="100%" >  
                <tr>
                    <th>Mã phiếu thu</th>
                    <th>Mã khách hàng</th>
                    <th>Tên khách hàng</th>
                    <th>Số tiền thu</th>
                    <th>Ngày thu</th>
                </tr>
                <%
                    ArrayList<PhieuThu> listPT = (ArrayList<PhieuThu>) request.getAttribute("listPT");

                    for (int i = 0; i < listPT.size(); i++) {
                        out.print("<tr>");
                        out.print("<td>" + listPT.get(i).getMaPhieuThu() + "</td>");
                        out.print("<td>" + listPT.get(i).getMaKhachHang() + "</td>");
                        out.print("<td>" + listPT.get(i).getTenKhachHang() + "</td>");
                        out.print("<td>" + listPT.get(i).getSoTienThu() + "</td>");
                        out.print("<td>" + listPT.get(i).getNgayThu() + "</td>" + "<br>");
                        out.print("</tr>");
                    }
                %> 
            </table>  
            <button class="btn btn-danger">
                <a style="text-decoration:none; color: white;" href="/QuanLyBanHang/index.jsp">Quay lại trang chủ</a>
            </button>
        </div>
    </body>
</html>
