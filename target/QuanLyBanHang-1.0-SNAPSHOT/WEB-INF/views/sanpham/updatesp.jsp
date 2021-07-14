<%-- 
    Document   : addsp
    Created on : Jul 2, 2021, 1:40:46 AM
    Author     : Administrator
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="teamwork.com.models.SanPham" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cập nhật sản phẩm</title>
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
        </style>
    </head>
    <body>

        <div class="container">
            <h1>Cập nhật sản phẩm</h1>
            <br>
            <form class="form-group row" action="/QuanLyBanHang/updateSp" method="POST">


                <div class="form-group row">
                    <label class="col-sm-6 col-form-label" for="masp">Mã sản phẩm</label>
                    <div class="col-sm-3">
                        <input class="form-control" type="text" id="masp" name="masp" value="${listProduct[0].getMaSanPham()}"/> 
                    </div>
                </div>



                <div class="form-group row">
                    <label class="col-sm-6 col-form-label" for="tensp">Tên sản phẩm</label>
                    <div class="col-sm-3">
                        <input class="form-control" type="text" id="tensp" name="tensp" value="${listProduct[0].getTenSanPham()}"/>
                    </div>
                </div>



                <div class="form-group row">
                    <label class="col-sm-6 col-form-label" for="quycach">Quy cách (kg)</label>
                    <div class="col-sm-3">
                        <input class="form-control" type="text" id="quycach" name="quycach" value="${listProduct[0].getQuycach()}"/>
                    </div>
                </div>



                <div class="form-group row">
                    <label class="col-sm-6 col-form-label" for="giasp">Giá sản phẩm</label>
                    <div class="col-sm-3">
                        <input class="form-control" type="text" id="giasp" name="giasp" value="${listProduct[0].getGiaSanPham()}"/>
                    </div>
                </div>

                <div class="btnThem">
                    <input class="btn btn-primary" type="submit" value="Cập nhật sản phẩm"/>
                </div>
            </form>

            <button class="btn btn-danger">
                <a style="text-decoration:none; color:white" href="/QuanLyBanHang/viewproduct">Quay lại danh sách sản phẩm</a>
            </button>
        </div>
    </body>
</html>
