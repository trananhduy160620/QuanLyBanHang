<%-- 
    Document   : addsp
    Created on : Jul 2, 2021, 1:40:46 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thêm khách hàng</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
              crossorigin="anonymous">
    </head>
    <body> 
        <h1>Thêm khách hàng</h1>  
        <div class="container">     
            <form class="form-group row" action="/QuanLyBanHang/addkh" method="POST">
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label" for="makh">Mã khách hàng </label>
                    <div class="col-sm-5">
                        <input class="form-control" type="text" id="makh" name="makh"/>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-4 col-form-label" for="tenkh">Tên khách hàng </label>
                    <div class="col-sm-5">
                        <input class="form-control" type="text" id="tenkh" name="tenkh"/>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-4 col-form-label" for="diachi">Địa chỉ </label>
                    <div class="col-sm-5">
                        <input class="form-control" type="text" id="diachi" name="diachi"/>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-4 col-form-label" for="sdt">SĐT </label>
                        <div class="col-sm-5">
                            <input class="form-control" type="text" id="sdt" name="sdt"/>
                        </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-4 col-form-label" for="sodu">Số dư </label>
                    <div class="col-sm-5">
                        <input class="form-control" type="text" id="sodu" name="sodu" value="0"/>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-4 col-form-label" for="congno">Công nợ </label>
                        <div class="col-sm-5">
                            <input class="form-control" type="text" id="congno" name="congno" value="0"/>
                        </div>
                </div>
                <div class="btnThem">
                    <input type="submit" value="Thêm khách hàng"/>
                </div>
            </form>

            <button>
                <a style="text-decoration:none" href="/QuanLyBanHang/viewuser">Quay lại danh sách khách hàng</a>
            </button>
        </div>
    </body>
</html>

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