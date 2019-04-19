<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2018/9/21
  Time: 9:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="author" content="order by dede58.com"/>
    <title>坚果商城</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="/js/jquery-3.3.1.min.js"></script>
</head>

<body>

<!-- start header -->
<header>
    <div class="top center">
        <div class="left fl">
            <ul>
                <li><a href="" target="_blank">坚果商城</a></li>
                <li>|</li>
                <li><a href="">核桃</a></li>
                <li>|</li>
                <li><a href="">开心果</a></li>
                <li>|</li>
                <li><a href="">腰果</a></li>
                <li>|</li>
                <li><a href="">花生</a></li>
                <li>|</li>
                <li><a href="">板栗</a></li>
                <li>|</li>
                <li><a href="">杏仁</a></li>
                <li>|</li>
                <li><a href="">白果</a></li>
                <li>|</li>
                <li><a href="">问题反馈</a></li>
            </ul>
        </div>
        <div class="right fr">
            <%--用户登录状态，直接去购物车，用户未登录，先登录再去购物车--%>
            <c:choose>
                <c:when test="${not empty customer}">
                    <div class="gouwuche fr"><a href="/cgi/shopcar/toShopcarUI">购物车</a></div>
                </c:when>
                <c:otherwise>
                    <div class="gouwuche fr"><a href="/cgi/customer/toCustomerLoginUI">购物车</a></div>
                </c:otherwise>
            </c:choose>

            <div class="fr">

                <c:choose>
                    <c:when test="${not empty customer}">
                        <ul>
                            <li><a href="##" target="_blank" >${sessionScope.customer.realname},欢迎您！</a></li>
                            <li>|</li>
                            <li><a href="/cgi/customer/toCustomerRegisterUI" target="_blank" >修改个人信息</a></li>
                            <li>|</li>
                            <li><a href="${pageContext.request.contextPath }/cgi/customer/logout" target="_blank">退出登录</a></li>
                        </ul>
                    </c:when>
                    <c:otherwise>
                        <ul>
                            <li><a href="/cgi/customer/toCustomerLoginUI" target="_blank">登录</a></li>
                            <li>|</li>
                            <li><a href="/cgi/customer/toCustomerRegisterUI" target="_blank" >注册</a></li>
                        </ul>
                    </c:otherwise>
                </c:choose>

            </div>
            <div class="clear"></div>
        </div>
        <div class="clear"></div>
    </div>
</header>
<!--end header -->

<div class="jieshao mt20 w">
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-4 column">
            </div>
            <div class="col-md-4 column">

                <hr>
                <form class="form-horizontal" role="form"  method="post" action="/cgi/torder/addOrder"
                      enctype="multipart/form-data">

                    <div class="form-group">
                        <label for="receiver" class="col-sm-4 control-label">收货人：</label>
                        <div class="col-sm-8">
                            <input type="text" name="goodsID"  value="${goodsID}" hidden>
                            <input type="text" name="count"  value="${count}" hidden>
                            <input type="text" name="price" id="price" value="${price}" hidden>
                            <input type="text" class="form-control" id="receiver"
                                   name="receiver" value="" required
                                   placeholder="请输入收货人姓名" >
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="address" class="col-sm-4 control-label">收货地址：</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="address"
                                   name="address" value="" required
                                   placeholder="请输入收货地址">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="phone" class="col-sm-4 control-label">联系电话：</label>
                        <div class="col-sm-8">
                            <input type="phone" class="form-control" id="phone"
                                   name="phone" value="" required
                                   placeholder="请输入联系电话"  maxlength="11" minlength="11">
                        </div>
                    </div>

                    <div class="col-sm-offset-0 col-sm-12 btn-block">
                        <input type="submit" id="btnLogin" value="确定" class="btn btn-success btn-block"/>
                    </div>

                </form>
            </div>
            <div class="col-md-4 column">
            </div>
        </div>
    </div>
</div>

<div class="clear"></div>
</div>


<footer class="mt20 center">
    <div class="mt20">坚果商城 | 核桃 | 开心果 | 腰果 | 花生 | 板栗 | 杏仁 | 白果 | 瓜子 | 松子 | 夏威夷果</div>
</footer>


</body>
</html>