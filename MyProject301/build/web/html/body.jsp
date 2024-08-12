<%-- 
    Document   : body
    Created on : Feb 14, 2022, 11:19:05 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

            #main #left{
                width: 70%;
                background: yellow;
                float: left;
                min-height:600px;
            }

            #main #right{
                width: 30%;
                background: blue;
                float: right;
                min-height: 600px;
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
        </style>

    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="container">
                <div id="main">
                    <div id="left">
                        <h2>Tin mới nhất</h2>
                    <c:forEach items="${new}" var="n">
                        <a href="loadDe?id=${n.idPost}">
                            <div class="khungNews">
                                <div class="row">
                                    <div class="col-md-4 image">
                                        <img src="${n.urlImg}"
                                             alt="">
                                    </div>

                                    <div class="col-md-8 news">
                                        <h4>${n.title}</h4>
                                        <h5>${n.datePost}3</h5>
                                        <h5>${n.description}</h5>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </c:forEach>
                    <a href="html/transferNews.jsp">
                        <h2>Tin chuyển nhượng</h2>
                    </a>
                    <c:forEach items="${newCN}" var="cn">
                        <a href="loadDe?id=${cn.idPost}">
                            <div class="khungNews">
                                <div class="row">
                                    <div class="col-md-4 image">
                                        <c:forEach items="${newImg}" var="img1">
                                            <img src="img/${img1.name}"
                                             alt="${img1.name}">
            
                                        </c:forEach>
                                    </div>

                                    <div class="col-md-8 news">
                                        <h4>${cn.title}</h4>
                                        <h5>${cn.datePost}3</h5>
                                        <h5>${cn.description}</h5>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </c:forEach>
                    <a href="#"> 
                        <h2>Bóng đá Việt Nam</h2>
                    </a>
                    <c:forEach items="${newBĐVN}" var="BĐVN">
                        <a href="loadDe?id=${BĐVN.idPost}">
                            <div class="khungNews">
                                <div class="row">
                                    <div class="col-md-4 image">
                                        <img src="${BĐVN.urlImg}"
                                             alt="">
                                    </div>

                                    <div class="col-md-8 news">
                                        <h4>${BĐVN.title}</h4>
                                        <h5>${BĐVN.datePost}3</h5>
                                        <h5>${BĐVN.description}</h5>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </c:forEach>
                    <a href="#">
                        <h2>Premier league</h2>
                    </a>
                    <c:forEach items="${newPL}" var="PL">
                        <a href="loadDe?id=${PL.idPost}">
                            <div class="khungNews">
                                <div class="row">
                                    <div class="col-md-4 image">
                                        <img src="${PL.urlImg}"
                                             alt="">
                                    </div>

                                    <div class="col-md-8 news">
                                        <h4>${PL.title}</h4>
                                        <h5>${PL.datePost}3</h5>
                                        <h5>${PL.description}</h5>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </c:forEach>
                    <a href="#">
                        <h2>La Liga</h2>
                    </a>
                    <c:forEach items="${newLL}" var="LL">
                        <a href="loadDe?id=${LL.idPost}">
                            <div class="khungNews">
                                <div class="row">
                                    <div class="col-md-4 image">
                                        <img src="${LL.urlImg}"
                                             alt="">
                                    </div>

                                    <div class="col-md-8 news">
                                        <h4>${LL.title}</h4>
                                        <h5>${LL.datePost}3</h5>
                                        <h5>${LL.description}</h5>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </c:forEach>
                    <a href="#">
                        <h2>Serie A</h2>
                    </a>
                    <c:forEach items="${newSA}" var="SA">
                        <a href="loadDe?id=${SA.idPost}">
                            <div class="khungNews">
                                <div class="row">
                                    <div class="col-md-4 image">
                                        <img src="${SA.urlImg}"
                                             alt="">
                                    </div>

                                    <div class="col-md-8 news">
                                        <h4>${SA.title}</h4>
                                        <h5>${SA.datePost}3</h5>
                                        <h5>${SA.description}</h5>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </c:forEach>
                    <a href="#">
                        <h2>Ligue 1</h2>
                    </a>
                    <c:forEach items="${newL1}" var="LO">
                        <a href="loadDe?id=${LO.idPost}">
                            <div class="khungNews">
                                <div class="row">
                                    <div class="col-md-4 image">
                                        <img src="${LO.urlImg}"
                                             alt="">
                                    </div>

                                    <div class="col-md-8 news">
                                        <h4>${LO.title}</h4>
                                        <h5>${LO.datePost}3</h5>
                                        <h5>${LO.description}</h5>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </c:forEach>
                    <a href="#">
                        <h2>Bundesliga</h2>
                    </a>
                    <c:forEach items="${newBUN}" var="bun">
                        <a href="loadDe?id=${bun.idPost}">
                            <div class="khungNews">
                                <div class="row">
                                    <div class="col-md-4 image">
                                        <img src="${bun.urlImg}"
                                             alt="">
                                    </div>

                                    <div class="col-md-8 news">
                                        <h4>${bun.title}</h4>
                                        <h5>${bun.datePost}3</h5>
                                        <h5>${bun.description}</h5>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </c:forEach>
                    <a href="#">
                        <h2>Video</h2>
                    </a>
                    <c:forEach items="${new}" var="n">
                        <a href="loadDe?id=${n.idPost}">
                            <div class="khungNews">
                                <div class="row">
                                    <div class="col-md-4 image">
                                        <img src="${n.urlImg}"
                                             alt="">
                                    </div>

                                    <div class="col-md-8 news">
                                        <h4>${n.title}</h4>
                                        <h5>${n.datePost}3</h5>
                                        <h5>${n.description}</h5>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </c:forEach>

                    <a href="#">
                        <h2>Photo</h2>
                    </a>
                    <c:forEach items="${new}" var="n">
                        <a href="loadDe?id=${n.idPost}">
                            <div class="khungNews">
                                <div class="row">
                                    <div class="col-md-4 image">
                                        <img src="${n.urlImg}"
                                             alt="">
                                    </div>

                                    <div class="col-md-8 news">
                                        <h4>${n.title}</h4>
                                        <h5>${n.datePost}3</h5>
                                        <h5>${n.description}</h5>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </c:forEach>
                </div>
                <div id="right">
                    <h1>Tin Hot</h1>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>    
    </body>
</html>
