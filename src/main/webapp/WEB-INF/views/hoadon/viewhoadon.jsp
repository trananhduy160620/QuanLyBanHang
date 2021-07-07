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
        <title>Hóa đơn</title>
    </head>
    <body>
        <div align="center">
            <h1>Danh sách các hóa đơn</h1>  
            
            <table border="2" width="70%" >  
                <tr>
                    <th>Mã hóa đơn</th>
                    <th>Mã sản phẩm</th>
                    <th>Số lượng</th>
                    <th>Giá bán</th>
                    <th>Khuyến mại</th>
                    <th colspan="3">
                        <a href="addhd"> Thêm hóa đơn </a>
                    </th>
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
            <a href="/QuanLyBanHang/index.jsp">Quay lại trang chủ</a>
        </div>
    </body>
</html>
