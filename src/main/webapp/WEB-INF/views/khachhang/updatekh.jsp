<%-- 
    Document   : addsp
    Created on : Jul 2, 2021, 1:40:46 AM
    Author     : Administrator
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="teamwork.com.models.KhachHang" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cập nhật khách hàng</title>
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
        <h1>Cập nhật khách hàng</h1>  
        <div class="container">     
            <form class="form-group row" action="/QuanLyBanHang/updatekh" method="POST">
                <div class="form-group row">
                    <label class="col-sm-6 col-form-label" for="makh">Mã khách hàng </label>
                    <div class="col-sm-3">
                        <input class="form-control" type="text" id="makh" name="makh" value="${listUser[0].getMaKhachHang()}"/>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-6 col-form-label" for="tenkh">Tên khách hàng </label>
                    <div class="col-sm-3">
                        <input class="form-control" type="text" id="tenkh" name="tenkh" value="${listUser[0].getTenKhachHang()}"/>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-6 col-form-label" for="diachi">Địa chỉ </label>
                    <div class="col-sm-3">
                        <input class="form-control" type="text" id="diachi" name="diachi" value="${listUser[0].getDiachi()}"/>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-6 col-form-label" for="sdt">SĐT </label>
                    <div class="col-sm-3">
                        <input class="form-control" type="text" id="sdt" name="sdt" value="${listUser[0].getSdt()}"/>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-6 col-form-label" for="sodu">Số dư </label>
                    <div class="col-sm-3">
                        <input class="form-control" type="text" id="sodu" name="sodu" value="${listUser[0].getSodu()}"/>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-6 col-form-label" for="congno">Công nợ </label>
                    <div class="col-sm-3">
                        <input class="form-control" type="text" id="congno" name="congno" value="${listUser[0].getCongno()}"/>
                    </div>
                </div>

                <div class="btnThem">
                    <input class="btn btn-primary" type="submit" value="Cập nhật khách hàng"/>
                </div>
            </form>

            <button class="btn btn-danger">
                <a style="text-decoration:none; color:white" href="/QuanLyBanHang/viewuser">Quay lại danh sách khách hàng</a>
            </button>
        </div>
    </body>
</html>


