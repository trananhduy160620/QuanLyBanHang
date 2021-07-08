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
        <title>Phiếu xuất</title>
    </head>
    <body>
        <div align="center">
            <h1>Danh sách phiếu xuất</h1>
            <table border="2" width="70%" >  
                <tr>
                    <th>Mã phiếu xuất</th>
                    <th>Mã khách hàng</th>
                    <th>Mã hóa đơn</th>
                    <th>Ngày xuất</th>
                    <th>Tổng tiền (VNĐ)</th>
                    <th colspan="2">
                        <a href="addpx"> Thêm phiếu xuất </a>
                    </th>
                </tr>
                <%
                    ArrayList<PhieuXuat> listPT = (ArrayList<PhieuXuat>) request.getAttribute("listPX");
                    
                    for (int i = 0; i < listPT.size(); i++) {
                        out.print("<tr>");
                        out.print("<td>" + listPT.get(i).getMaPhieuXuat() + "</td>");
                        out.print("<td>" + listPT.get(i).getMaKhachHang() + "</td>");
                        out.print("<td>" + listPT.get(i).getMaHoaDon()+ "</td>");
                        out.print("<td>" + listPT.get(i).getNgayXuat()+ "</td>");
                        out.print("<td>" + listPT.get(i).getTongTien()+ "</td>" + "<br>");
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
