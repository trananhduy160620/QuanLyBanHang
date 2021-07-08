<%-- 
    Document   : addsp
    Created on : Jul 2, 2021, 1:40:46 AM
    Author     : Administrator
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="teamwork.com.models.KhachHang"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thêm sản phẩm</title>
    </head>
    <body>
       
        <div align="center">
            <h1> Thêm phiếu thu </h1>
            <form action="/QuanLyBanHang/addpt" method="POST">
                <label for="mapt">Mã phiếu thu <label />
                <input type="text" id="mapt" name="mapt"/> 
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
                
                <label for="sotienthu">Số tiền thu <label />
                <input type="text" id="sotienthu" name="sotienthu"/>
                <br>
                
                <label for="ngaythu">Ngày thu <label />
                <input type="text" id="ngaythu" name="ngaythu"/>
                <br>
                <input type="submit" value="Thêm phiếu thu"/>
            </form>
            <br>
            <button>
                <a style="text-decoration:none" href="/QuanLyBanHang/viewphieuthu">Quay lại danh sách phiếu thu</a>
            </button>
        </div>
    </body>
</html>
