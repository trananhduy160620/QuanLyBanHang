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
        <title>Quản lý phiếu thu</title>
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
            <h1> Thêm phiếu thu </h1>
            <form class="form-group row" action="/QuanLyBanHang/addpt" method="POST">
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label" for="mapt">Mã phiếu thu </label>
                    <div class="col-sm-5">
                        <input class="form-control" type="text" id="mapt" name="mapt"/>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-4 col-form-label" for="makh">Mã khách hàng </label>
                    <div class="col-sm-5">            
                        <select class="form-select" name="makh" id="makh">
                            <%
                                ArrayList<KhachHang> list = (ArrayList<KhachHang>) request.getAttribute("listUser");
                                for (int i = 0; i < list.size(); i++) {
                                    out.print("<option value='" + list.get(i).getMaKhachHang() + "'>" + list.get(i).getTenKhachHang() + "</option>");
                                    out.print("<tr>");
                                }
                            %>
                        </select>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-4 col-form-label" for="sotienthu">Số tiền thu </label>
                    <div class="col-sm-5">
                        <input class="form-control" type="text" id="sotienthu" name="sotienthu"/>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-4 col-form-label" for="ngaythu">Ngày thu </label>
                    <div class="col-sm-5">
                        <input class="form-control" type="text" id="ngaythu" name="ngaythu"/>
                    </div>
                </div>
                        
                <div class="btnThem">
                    <input class="btn btn-primary" type="submit" value="Thêm phiếu thu"/>
                </div>
            </form>
                        
            <button class="btn btn-danger">
                <a style="text-decoration:none; color:white" href="/QuanLyBanHang/viewphieuthu">Quay lại danh sách phiếu thu</a>
            </button>
        </div>
    </body>
</html>
