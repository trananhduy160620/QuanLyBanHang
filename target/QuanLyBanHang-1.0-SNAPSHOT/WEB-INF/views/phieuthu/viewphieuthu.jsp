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
        <title>Phiếu thu</title>
    </head>
    <body>
        <div align="center">
            <h1>Danh sách phiếu thu</h1>
            <table border="2" width="70%" >  
                <tr>
                    <th>Mã phiếu thu</th>
                    <th>Mã khách hàng</th>
                    <th>Tên khách hàng</th>
                    <th>Số tiền thu</th>
                    <th>Ngày thu</th>
                    <th colspan="2">
                        <a href="addpt"> Thêm phiếu thu </a>
                    </th>
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
            <br>
            <button>
                <a style="text-decoration:none" href="/QuanLyBanHang/index.jsp">Quay lại trang chủ</a>
            </button>
        </div>
    </body>
</html>
