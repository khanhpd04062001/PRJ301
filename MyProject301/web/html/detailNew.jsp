<%-- 
    Document   : detailNew
    Created on : Feb 26, 2022, 10:15:26 PM
    Author     : hp
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            body{
                font-family: Tahoma;
                font-size: 13px;
            }
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

            #footer{
                text-align: center;
                background: gray;
                color: wheat;
                clear: left;
            }

            #footer p{
                color: white;
                padding-top: 20px;
            }

            .giayphep{
                margin-top: 50px;
                margin-bottom: 20px;

            }

            .lienhe{
                margin-top: 10px;
                margin-bottom: 20px;
            }

            .logoBot img{
                display: block;
                margin-left: auto;
                margin-right: auto;
                width: 200px;
                height: 200px;
                border-radius: 50%;
            }

            #footer .logoBot{
                border-bottom: 1px solid white;
                padding-bottom: 30px;
                padding-top: 30px;
            }

            .khungNews{
                width: 100%;
                border: 1px solid red;
            }

            .khungNews .image img{
                width: 100%;

            }

            .khungNews .news h3{
                margin-top:25px;
            }

            #main {
                margin-top: 15px;
            }

            #main h1{
                font-size: 25px;
                font-weight: bold;
            }

            #main h4{
                background: graytext;
                font-size: 15px;
                color: white;
                margin-left: 85%;
                border: 1px solid gray;
            }

            #main h3{
                font-weight: bold;
                font-size: 18px;
                color: rgb(146, 134, 134);
            }

            #main h5{
                font-size: 15px;
                margin-left: 90%
                
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
                        <li><a href="#" title="Đăng nhập"> Đăng nhập</a></li>
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

        <div class="container">

            <div id="main">
                <h1>${post.title}</h1>
                <h4>${post.datePost}</h4>
                <h3>${post.description}</h3>
                <p>${post.concept}</p>
                <c:forEach items="${listAu}" var="la">
                    <c:if test="${post.idAuthur == la.idAuthur}">
                        <h5>${la.authurName}</h5>
                    </c:if>
                </c:forEach>
            </div>
        </div>


        <div id="footer">
            <div class="logoBot">
                <img src="https://static.bongda24h.vn/medias/standard/2021/4/24/lich-thi-dau-bong-da-hom-nay-28-4-2021.jpg">
            </div>

            <div class="row">
                <div class="col-md-7 giayphep">
                    <p>Giấy phép: Số 15/GP-TTĐT của Bộ Thông tin - Truyền thông ngày 29/01/2010 và GP số 56/GP-STTTT của Sở
                        Thông tin và Truyền thông TP. Hồ Chí Minh cấp ngày 03/09/2021.</p>
                    <p>Chịu trách nhiệm nội dung: Nhà báo, TS. Võ Danh Hải.
                        Cấm sao chép dưới mọi hình thức nếu không có sự chấp thuận bằng văn bản.
                        Vận hành và phát triển bởi Công ty Cổ phần Yêu Thể Thao.</p>
                </div>

                <div class="col-md-5 lienhe">
                    <h2>Thông tin liên hệ</h2>
                    <p>E-mail: phamduykhanh@gmail.com</p>
                    <p>Địa chỉ: Quảng Ninh</p>
                    <p>Phone: 0123456789</p>
                </div>
            </div>
        </div>
    </body>
</html>
