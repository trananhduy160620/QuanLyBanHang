<%-- 
    Document   : list
    Created on : Jun 22, 2021, 1:29:15 AM
    Author     : Administrator
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="teamwork.com.models.SanPham" %>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thêm hóa đơn</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
              crossorigin="anonymous">
        <style>
            h1{
                text-align: center;
                font-weight: bold;
            }

            .container{
                background-color: bisque;
                text-align: center;
                padding: 50px;
            }

            label{
                text-transform: uppercase;
                text-align: right;
            }   

            input{
                margin: 5px;
            }

            .btnThem{
                padding-top: 50px;
                padding-bottom: 10px;
                text-align: center;
            }

            th,tr{
                vertical-align: middle;
            }

            #test{
                float: right;
            }
        </style>
    </head>

    <body>
        <div class="container">
            <h1>Danh sách sản phẩm</h1>  
            <br>
            <form action="/QuanLyBanHang/addhd/" method="POST">                                               
                <div id="test" class="form-group row">
                    <label class="col-sm-5 col-form-label" for="mahd"> Mã hóa đơn </label>
                    <div class="col-sm-7">
                        <input class="form-control" type="text" id="mahoadon" name="mahd" placeholder="Nhập mã hóa đơn"/>
                    </div>
                </div>

                <table class="table table-bordered" width="100%" >  
                    <tr>
                        <th>Mã sản phẩm</th>
                        <th>Tên sản phẩm</th>
                        <th>Quy cách (kg)</th>
                        <th>Giá gốc (ĐV: 1000Đ)</th>
                        <th>Mua sản phẩm</th>
                        <th>Số lượng</th>
                    </tr>
                    <%
                        ArrayList<SanPham> list = (ArrayList<SanPham>) request.getAttribute("list");
                        for (int i = 0; i < list.size(); i++) {
                            out.print("<tr>");
                            out.print("<td>" + list.get(i).getMaSanPham() + "</td>");
                            out.print("<td>" + list.get(i).getTenSanPham() + "</td>");
                            out.print("<td>" + list.get(i).getQuycach() + "</td>");
                            out.print("<td> <input class='form-control' type='text' name='giasp' value='" + list.get(i).getGiaSanPham() + "' readonly/>" + "</td>");
                            out.print("<td> <input class='form-check-input mt-3' type='checkbox' name='masp' value='" + list.get(i).getMaSanPham() + "'/>" + "</td>");
                            out.print("<td> <input class='form-control' type='number' name='soluong'/>" + "</td>");
                            out.print("</tr>");
                        }
                    %> 
                </table> 

                <div class="btnThem">
                    <input class="btn btn-primary" type="submit" value="Lập hóa đơn" />
                </div>
            </form>

            <button class="btn btn-danger">
                <a style="text-decoration:none; color:white" href="/QuanLyBanHang/viewhoadon">Quay lại danh sách hóa đơn</a>
            </button>
        </div>
    </body>
</html>



