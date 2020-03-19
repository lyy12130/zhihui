<%--
  Created by IntelliJ IDEA.
  User: 刘丫丫
  Date: 2020/3/9
  Time: 13:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>购物</title>
    <link href="../css/base.css" rel="stylesheet" type="text/css" />
    <link href="../css/shopping.css" rel="stylesheet" type="text/css" />
    <!-- 这个animate.js 必须写到 index.js的上面引入 -->
    <script src="../js/animate.js"></script>
    <!-- 因为shopping.js依赖 animate.js -->
    <script src="../js/shopping.js"></script>
</head>

<%@ include file = "head.jsp" %>

<!--search开始-->
<div class="search">
    <form>
        <input type="text" placeholder="请输入要搜索的内容" />
        <button>搜 索</button>
    </form>
</div>
<!--search结束-->

<!--banner开始-->
<div class="focus f1 wrap">
    <!--左侧按钮-->
    <a href="javascript:;" class="arrow_l">&lt</a>
    <!--右侧按钮-->
    <a href="javascript:;" class="arrow_r">&gt</a>
    <!--核心滚动区域-->
    <ul>
        <li>
            <a href="#"><img src="../img/shopping/focus.JPG"></a>
        </li>

        <li>
            <a href="#"><img src="../img/shopping/focus1.JPG"></a>
        </li>

        <li>
            <a href="#"><img src="../img/shopping/focus2.JPG"></a>
        </li>
    </ul>
    <!--小圆圈-->
    <ol class="circle">

    </ol>
</div>

<!--banner结束-->

<div class="gotop">
    <a href="cart.html">
        <dl>
            <dt><img src="../img/shopping/gt1.png"/></dt>
            <dd>去购<br/>物车</dd>
        </dl>
    </a>
    <a href="#" class="dh">
        <dl>
            <dt><img src="../img/shopping/gt2.png"/></dt>
            <dd>联系<br/>客服</dd>
        </dl>
    </a>
    <a href="mygxin.html">
        <dl>
            <dt><img src="../img/shopping/gt3.png"/></dt>
            <dd>个人<br/>中心</dd>
        </dl>
    </a>
    <a href="#" class="toptop" style="display: none">
        <dl>
            <dt><img src="../img/shopping/gt4.png"/></dt>
            <dd>返回<br/>顶部</dd>
        </dl>
    </a>
    <p>400-800-8200</p>
</div><!-------------------login-------------------------->

<!--分类开始-->
<div class="sort wrap">
    <ul class="nav">
        <li>
            <a href="#"><img src="../img/shopping/013.JPG" /></a>
            <div>xiyiji</div>
        </li>
        <li>
            <a href="#"><img src="../img/shopping/014.JPG" /></a>
            <div>xiyiji</div>
        </li>
        <li>
            <a href="lightgoods.html"><img src="../img/shopping/015.JPG" /></a>
            <div>xiyiji</div>
        </li>
        <li>
            <a href="#"><img src="../img/shopping/016.JPG" /></a>
            <div>xiyiji</div>
        </li>
    </ul>
</div>
<!--分类结束-->

<!--商品开始-->
<div class="goods wrap">
    <div class="goodsOne wrap">
        <div class="goodsOneInfo">商品介绍
            <button>了解更多</button>
        </div>
        <div class="goodsOnePec"></div>
    </div>
    <div class="goodsTwo wrap">
        <div class="goodsTwoInfo">商品介绍
            <button>了解更多</button>
        </div>
        <div class="goodsTwoPec"></div>
    </div>
    <div class="goodsBotm">
        <ul>
            <li><a href="#"><img src="../img/shopping/bc.JPG"/></a></li>
            <li><a href="#"><img src="../img/shopping/wat.JPG"/></a></li>
            <li><a href="#"><img src="../img/shopping/tv.png"/></a></li>
            <li><a href="#"><img src="../img/shopping/yx.JPG"/></a></li>
        </ul>
    </div>
</div>
<!--商品结束-->

<%@ include file = "foot.jsp" %>
</body>
</html>
