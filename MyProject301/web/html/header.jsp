<%-- 
    Document   : header
    Created on : Feb 14, 2022, 11:14:26 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

        <title>JSP Page</title>
        <style>
            #menu_top{
                background: black;
                width: 100%;
                height: 100px;
                padding-bottom: 10px;
            }

            .logo img{
                width: 100px;
                height: 100px;
                border-radius: 50%;
                padding-left: 5px;
            }

            .menu li{
                display: inline-block;
                font-size: 25px;
                margin: 30px 30px 30px 30px;
            }

            .search input{
                width: 250px;
                height: 40px;
                padding: 10px;
            }

            .search button{
                background: blue;
                color: white;
                width: 70px;
                height: 40px;
            }

            .search{
                padding-top: 35px;
            }

            #banner img{
                width: 100%;
                height: 500px;
            } 
        </style>

    </head>
    <body>
        <div id="menu_top">
            <div class="row">
                <div class="col-md-3 logo">
                    <img src="https://ephoto360.com/uploads/effect-data/ephoto360.com/5e8cee199/1t5f48786c57a0f.jpg">
                </div>


                <div class="col-md-6 menu">
                    <ul>
                        <li><a href="#" title="Trang chủ" class="active"> Trang chủ</a></li>
                        <li><a href="#" title="Việt Name"> Việt Nam</a></li>
                        <li><a href="#" title="Quốc tế"> Quốc tế</a></li>
                        <li><a href="login.jsp" title="Đăng nhập"> Đăng nhập</a></li>
                    </ul>
                </div>

                <div class="col-md-3 search">
                    <form>
                        <input type="text" placeholder="Search in website">
                        <button type="submit">Search</button>
                    </form>

                </div>
            </div>
        </div>

        <div id="banner">
            <img src="https://cdn.tgdd.vn/Files/2014/08/28/562705/nhung-luu-y-ve-suc-khoe-cho-fan-bong-da-15-760x367.jpg" />
        </div>
    </body>
</html>
