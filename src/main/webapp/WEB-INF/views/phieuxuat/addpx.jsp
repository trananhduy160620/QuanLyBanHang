<%-- 
    Document   : addsp
    Created on : Jul 2, 2021, 1:40:46 AM
    Author     : Administrator
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="teamwork.com.models.KhachHang"%>
<%@page import="teamwork.com.models.HoaDon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thêm phiếu xuất</title>
    </head>
    <body>
       
        <div align="center">
            <h1> Thêm phiếu xuất </h1>
            <form action="/QuanLyBanHang/addpx" method="POST">
                <label for="mapx">Mã phiếu xuất <label />
                <input type="text" id="mapx" name="mapx"/> 
                <br>
                
                <label for="makh">Mã khách hàng <label />
                <select name="makh" id="makh">
                    <%
                        ArrayList<KhachHang> list = (ArrayList<KhachHang>) request.getAttribute("listUser");
                        for(int i = 0; i < list.size(); i++) {
                            out.print("<option value='" + list.get(i).getMaKhachHang() + "'>" + list.get(i).getTenKhachHang() + "</option>");
                            out.print("<tr>");
                        }
                    %>
                </select>
                <br>
                
                <label for="mahd">Mã hóa đơn <label />
                <select name="mahd" id="mahd">
                    <%
                        ArrayList<String> listHD = (ArrayList<String>) request.getAttribute("listMaHD");
                        for(int i = 0; i < listHD.size(); i++) {
                            out.print("<option value='" + listHD.get(i) + "'>" + listHD.get(i) + "</option>");
                            out.print("<tr>");
                        }
                    %>
                </select>
                <br>
                
                <label for="ngayxuat"> Ngày xuất <label />
                <input type="text" id="ngayxuat" name="ngayxuat"/>
                <br>
                <input type="submit" value="Thêm phiếu xuất"/>
            </form>
            <br>
            <button>
                <a style="text-decoration:none" href="/QuanLyBanHang/viewphieuxuat">Quay lại danh sách phiếu xuất</a>
            </button>
        </div>
    </body>
</html>
