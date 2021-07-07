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
        <title>Sản phẩm</title>
    </head>
    <body>
        <div align="center">
            <h1>Lịch bán hàng</h1>  
            <table border="2" width="70%" >  
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
                        out.print("<td>" + list.get(i).getMaKhachHang()+ "</td>");
                        out.print("<td>" + list.get(i).getTenKhachHang()+ "</td>");
                        out.print("<td>" + list.get(i).getNgayThang()+ "</td>");
                        out.print("<td>" + list.get(i).getTongTien()+ "</td>" + "<br>");
                        out.print("</tr>");
                    }
                %> 
            </table>  
            <a href="/QuanLyBanHang/index.jsp">Quay lại trang chủ</a>
        </div>
    </body>
</html>
