<%-- 
    Document   : list
    Created on : Jun 22, 2021, 1:29:15 AM
    Author     : Administrator
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="teamwork.com.models.PhieuXuat" %>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý phiếu xuất</title>
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
            <h1>Danh sách phiếu xuất</h1>

            <button style="float:left" class="btn btn-success">
                <a style="text-decoration:none; color: white" href="addpx"> Thêm phiếu xuất </a>
            </button>

            <table class="table table-bordered" width="100%" >  
                <tr>
                    <th>Mã phiếu xuất</th>
                    <th>Mã khách hàng</th>
                    <th>Mã hóa đơn</th>
                    <th>Ngày xuất</th>
                    <th>Tổng tiền (VNĐ)</th>
                </tr>
                <%
                    ArrayList<PhieuXuat> listPT = (ArrayList<PhieuXuat>) request.getAttribute("listPX");

                    for (int i = 0; i < listPT.size(); i++) {
                        out.print("<tr>");
                        out.print("<td>" + listPT.get(i).getMaPhieuXuat() + "</td>");
                        out.print("<td>" + listPT.get(i).getMaKhachHang() + "</td>");
                        out.print("<td>" + listPT.get(i).getMaHoaDon() + "</td>");
                        out.print("<td>" + listPT.get(i).getNgayXuat() + "</td>");
                        out.print("<td>" + listPT.get(i).getTongTien() + "</td>" + "<br>");
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
