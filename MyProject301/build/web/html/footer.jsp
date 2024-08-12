<%-- 
    Document   : footer
    Created on : Feb 14, 2022, 11:14:59 PM
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
            body{
    font-family: Tahoma;
    font-size: 13px;
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
        </style>

    </head>
    <body>
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
