<%-- 
    Document   : index
    Created on : Jun 20, 2021, 10:35:35 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>  
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trang chủ</title>
    </head>
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 70%;
            text-align: center;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>
    <body>  
        <div align="center">
            <h1> Quản lý bán hàng </h1>
            <table>
                <tr>
                    <th> Chức năng </th>
                    <th> Mô tả </th>
                </tr>
                <tr>
                    <td> 
                        <a href="/QuanLyBanHang/viewuser"> Quản lý khách hàng </a>
                    </td>
                    <td>
                         Thêm khách hàng mới, cập nhật và tìm kiếm khách hàng
                    </td>
                </tr>

                <tr>
                    <td> 
                        <a href="/QuanLyBanHang/viewproduct"> Quản lý sản phẩm </a>
                    </td>
                    <td>
                        Thêm sản phẩm, cập nhật và tìm kiếm sản phẩm
                    </td>
                </tr>

                <tr>
                    <td> 
                        <a href="/QuanLyBanHang/viewphieuthu"> Quản lý phiếu thu </a>
                    </td>
                    <td>
                        Chức năng cho phép khách hàng nộp tiền
                    </td>
                </tr>  

                <tr>
                    <td> 
                        <a href="/QuanLyBanHang/viewhoadon"> Quản lý hóa đơn </a>
                    </td>
                    <td>
                        Lập hóa đơn khách hàng
                    </td>
                </tr>

                <tr>
                    <td> 
                        <a href="/QuanLyBanHang/viewphieuxuat"> Quản lý phiếu xuất </a>
                    </td>
                    <td>
                        Chức năng cho phép khách hàng mua hàng => xuất phiếu thu
                    </td>
                </tr>

                <tr>
                    <td> 
                        <a href="/QuanLyBanHang/viewlichbanhang"> Xem lịch bán hàng </a>
                    </td>
                    <td>
                        Xem lịch bán hàng
                    </td>
                </tr>
            </table>
        </div>
    </body>  
</html>  
