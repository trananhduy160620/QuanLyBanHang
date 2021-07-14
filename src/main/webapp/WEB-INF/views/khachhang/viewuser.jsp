<%-- 
    Document   : list
    Created on : Jun 22, 2021, 1:29:15 AM
    Author     : Administrator
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="teamwork.com.models.KhachHang" %>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý khách hàng</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
              crossorigin="anonymous">
        <style>
            .search{
                width: 400px;
                float:right;
            }

            p{
                text-align: left;
            }

            th{
                text-align: center;
            }
            addkh{
                float:left;
            }
        </style>
    </head>
    <body>
        <div class="container" width="70%" align="center">
            <h1>Danh sách khách hàng</h1>  
            <div class="search">
                <form action="/QuanLyBanHang/viewuser" method="POST">  
                    <div class="form-group row" >
                        <div class="col-sm-7">
                            <input class="form-control" type="text" name="makh" placeholder="Nhập mã khách hàng"/>
                        </div>
                        <div class="col-sm-5" >
                            <input style="color: white" class="btn btn-info" type="submit" value="Tìm kiếm" />
                        </div>           
                    </div>               
                </form>
            </div>

            <button style="float:left" class="btn btn-success">
                <a style="text-decoration:none; color: white" href="addkh"> Thêm khách hàng </a>
            </button>
            <br>
            <br>
            <table class="table table-bordered" width="100%" >  
                <tr>
                    <th>Mã khách hàng</th>
                    <th>Tên khách hàng</th>
                    <th>Địa chỉ</th>
                    <th>SĐT</th>
                    <th>Số dư</th>
                    <th>Công nợ</th>
                    <th colspan="2">Thay đổi</th>
                </tr>
                <%
                    ArrayList<KhachHang> list = (ArrayList<KhachHang>) request.getAttribute("listUser");
                    out.print("<p> Số lượng khách hàng: " + list.size() + "</p>");
                    for (int i = 0; i < list.size(); i++) {
                        out.print("<tr>");
                        out.print("<td>" + list.get(i).getMaKhachHang() + "</td>");
                        out.print("<td>" + list.get(i).getTenKhachHang() + "</td>");
                        out.print("<td>" + list.get(i).getDiachi() + "</td>");
                        out.print("<td>" + list.get(i).getSdt() + "</td>");
                        out.print("<td>" + list.get(i).getSodu() + "</td>");
                        out.print("<td>" + list.get(i).getCongno() + "</td>");
                        out.print("<td> <a href='updatekh/" + list.get(i).getMaKhachHang() + "'> Sửa" + "</a> </td>");
                        out.print("<td> <a style='color: red' href='deletekh/" + list.get(i).getMaKhachHang() + "'> Xóa" + "</a> </td>");
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

