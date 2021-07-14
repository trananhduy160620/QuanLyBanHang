<%-- 
    Document   : addsp
    Created on : Jul 2, 2021, 1:40:46 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý sản phẩm</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
              crossorigin="anonymous">
        <style>
            h1{
                text-align: center;
                font-weight: bold;
            }

            .container{
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
        <h1> Thêm sản phẩm</h1>
        <div class="container">
            <form class="form-group row" action="/QuanLyBanHang/addsp" method="POST">                              
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label" for="masp">Mã sản phẩm</label>
                    <div class="col-sm-5">
                        <input class="form-control" type="text" id="masp" name="masp"/> 
                    </div>
                </div>                              
                
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label" for="tensp">Tên sản phẩm</label>
                    <div class="col-sm-5">
                        <input class="form-control" type="text" id="tensp" name="tensp"/>
                    </div>
                </div>                               
                
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label" for="quycach">Quy cách (kg)</label>
                    <div class="col-sm-5">
                        <input class="form-control" type="text" id="quycach" name="quycach"/>
                    </div>
                </div>
                
                
                
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label" for="giasp">Giá sản phẩm</label>
                    <div class="col-sm-5">
                        <input class="form-control" type="text" id="giasp" name="giasp"/>
                    </div>
                </div>
                
                <div class="btnThem">
                    <input class="btn btn-primary" type="submit" value="Thêm sản phẩm"/>
                </div>
            </form>

            <button class="btn btn-danger">
                <a style="text-decoration:none; color:white" href="/QuanLyBanHang/viewproduct">Quay lại danh sách sản phẩm</a>
            </button>
        </div>
    </body>
</html>
