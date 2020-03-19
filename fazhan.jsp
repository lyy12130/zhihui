<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>发展</title>
<link href="../css/base.css" rel="stylesheet" type="text/css" />
<link href="../css/style.css" rel="stylesheet" type="text/css" />

<script>
    //上面的选项卡，点击时，当前底色改变 排他思想 修改类名的方式
    function hot(){
    //获取元素
    var inform = document.querySelector('.inform');
    var lis = inform.querySelectorAll('li');
    var hotLists = document.querySelectorAll('.hotList');
    //for循环绑定事件
    for ( var i = 0;i<lis.length;i++){
        //开始给li是指索引号
        lis[i].setAttribute('index',i);
        lis[i].onclick = function(){
            for(var i = 0 ;i <lis.length;i++){
            lis[i].className = '';
            }
            this.className = 'current';
            //显示下面的内容
            //使用排他思想
            var index = this.getAttribute('index');
            for(var i = 0; i< hotLists.length ;i++){
                hotLists[i].style.display = 'none';
            }
            hotLists[index].style.display = 'block';
            } 
        }
    //设置自定义属性来区分每一个li，通过getattribute的到其属性
    }
    
</script>



</head>

<%@ include file = "head.jsp" %>
<!--主体部分开始-->
<div class="wrap clearfix big" >
	<main>
    	<ul class="news">
        	<li>
            	<a href="#">
                	<img src="../img/6.png"/>
                    <h2>123</h2>
                    <p>课堂必须在第三个层级“问题解决与应用”和第四个层级“思维迁移与创造”中展开学习任务，学生的时间和空间就相对比较大，横坐标上学生的自主性也比较高，就会走到比较高的层级。</p>
                </a>
            </li>
            <li>
            	<a href="#">
                	<img src="../img/6.png"/>
                    <h2>123</h2>
                    <p>课堂必须在第三个层级“问题解决与应用”和第四个层级“思维迁移与创造”中展开学习任务，学生的时间和空间就相对比较大，横坐标上学生的自主性也比较高，就会走到比较高的层级。</p>
                </a>
            </li>
            <li>
            	<a href="#">
                	<img src="../img/6.png"/>
                    <h2>123</h2>
                    <p>课堂必须在第三个层级“问题解决与应用”和第四个层级“思维迁移与创造”中展开学习任务，学生的时间和空间就相对比较大，横坐标上学生的自主性也比较高，就会走到比较高的层级。</p>
                </a>
            </li>
            <li>
            	<a href="#">
                	<img src="../img/6.png"/>
                    <h2>123</h2>
                    <p>课堂必须在第三个层级“问题解决与应用”和第四个层级“思维迁移与创造”中展开学习任务，学生的时间和空间就相对比较大，横坐标上学生的自主性也比较高，就会走到比较高的层级。</p>
                </a>
            </li>
        </ul>
</main>
    	
<aside>
	<div class="search">
	<form>
    	<input type="text" placeholder="请输入要搜索的内容" />
    	<button>搜 索</button>
    </form>
</div>
	<div class="toutiao">
    	<h2><a href="#">疫情结束后，你最想做什么？</a></h2>
    </div>
    
    <div class="summary">
    这个不平凡的春节，被迫让大家放慢忙碌的脚步，有充裕的时间思考过往。那么疫情过去之后么疫情过去之后，你最想做的是什么，你最想做的是什么？
    <span class="author">作者/<a href="#">11111</a></span>
    </div>
     
    <div class="toutiao2">
    	<ul>
        	<li><a target="_blank" href="#">危城辞旧岁，记录这个难忘的春节</a></li>
            <li><a target="_blank" href="#">危城辞旧岁，记录这个难忘的春节</a></li>
            <li><a target="_blank" href="#">危城辞旧岁，记录这个难忘的春节</a></li>
            <li><a target="_blank" href="#">危城辞旧岁，记录这个难忘的春节</a></li>
        </ul>
    </div>

<div class="tab">
    <div class="inform" >
    	<ul onclick="hot()">
        	<li class="current">热帖</li>
            <li >智能家居的起源</li>
            <li>与传统家居的比较</li>
            <li>智能家居的未来</li>
        </ul>
    </div>

    <div class="bbsbox">
        	<div class="hotList" style="display: block;">
            	<h2><a target="_blank" href="#">危城辞旧岁，记录这个难忘的春节</a></h2>
                <div class="summary sum1">这个不平凡的春节，被迫让大家放慢忙碌的脚步，有充裕的时间思考过往。那么疫情过去之后么疫情过去之后，你最想做的是什么，你最想做的是什么?</div>
                <div class="info"><span class="author"><a  target="_blank" href="#">作者名</a></span></div>
        	</div>
            <div class="hotList">
            	<h2><a target="_blank" href="#">111122223334444</a></h2>
                <div class="summary sum1">这个不平凡的春节，被迫让大家放慢忙碌的脚步，有充裕的时间思考过往。那么疫情过去之后么疫情过去之后，你最想做的是什么，你最想做的是什么?</div>
                <div class="info"><span class="author"><a  target="_blank" href="#">作者名</a></span></div>
            </div>
            <div class="hotList">
            	<h2><a target="_blank" href="#">asdxsdfdfgfhgggjhj</a></h2>
                <div class="summary sum1">这个不平凡的春节，被迫让大家放慢忙碌的脚步，有充裕的时间思考过往。那么疫情过去之后么疫情过去之后，你最想做的是什么，你最想做的是什么?</div>
                <div class="info"><span class="author"><a  target="_blank" href="#">作者名</a></span></div>
            </div>
            <div class="hotList">
            	<h2><a target="_blank" href="#">qddscdsfdvdfbgbfg</a></h2>
                <div class="summary sum1">这个不平凡的春节，被迫让大家放慢忙碌的脚步，有充裕的时间思考过往。那么疫情过去之后么疫情过去之后，你最想做的是什么，你最想做的是什么?</div>
                <div class="info"><span class="author"><a  target="_blank" href="#">作者名</a></span></div>
            </div>
    </div>
</div>  
</aside>   
</div>
<!--主体部分结束-->
<%@ include file = "foot.jsp" %>
</body>
</html>
