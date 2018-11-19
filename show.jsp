<%--
  Created by IntelliJ IDEA.
  User: 孙茹
  Date: 2018/9/20
  Time: 19:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Title</title>
	<script src="/JS/jquery-2.1.0.js" type="text/javascript" ></script>
	<script src="/JS/bootstrap.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript" src="/JS/main.js"> </script>
	<script src="/JS/validfrom.js" type="text/javascript"></script>
	<script type="text/javascript" src="/JS/jQuery-from.js"></script>
	<script type="text/javascript" src="/JS/index.js"></script>
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/new_file.css" />
</head>
<body>
		<nav class="navbar navbar-default" role="navigation" id="navbar">
	<div class="container-fluid"> 
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#example-navbar-collapse">
			<span class="sr-only">导航</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="#">导航条</a>
	</div>
	<div class="collapse navbar-collapse" id="example-navbar-collapse">
		<ul class="nav navbar-nav" id="nnnn">
			<li id="act"><a href="index.html">Home</a></li>
			<li><a href="features.html">Services</a></li>
			<li><a href="ul.html">News </a></li>
			<li><a href="reint.html">Features</a></li>
			<li><a href="liuyan.html">Contact</a></li>	
			<li><a href="aboutme.html">sign in</a></li>
		</ul>
	</div>
	</div>
</nav>
	
			<div class="center">
			<div class="sym">
				<div id="tet">
				<p id="sss"> SYMPTOM</p>
				<p id="ccc"> CHECKER</p>
				<p id="vvv" > Vestibulum rutrum luctus porta. Maecenas elit nibh</p>
				<div id="bol" >
				<a id="left" href="#"><img src="images/5a6eca187e72901.jpg"/></a>
				<a id="bott">Read More </a>
				<a id="left" href="#"><img src="images/5a6eca187e72902.jpg"/></a></div>
				</div>
				
			</div>
	 <div class="center_top">
		   <div class="content_middle">
			  <div class="common_da">
					<a class="common btnLeft"href="javascript:;"></a>
					<a class="common btnRight"href="javascript:;"></a>
			  </div> 	
			   <ul>
				  <li style="background:url(images/slider-image-1.jpg) no-repeat ;background-size:100% 100%;opacity: 100;filter: alpha(opacity=1);"></li>
				  <li style="background:url(images/slider-image-2.jpg) no-repeat ;background-size:100% 100%;"></li>
				  <li style="background:url(images/slider-image-3.jpg) no-repeat ;background-size:100% 100%;"></li>
			   </ul>
		   </div>    	  
	 </div>    
</div>
	<div class="row" id="im" >
			<div class="col-md-8 col-md-offset-2"id="imm" ><img src="images/5a6eca1f250f0_03.jpg"/>
			<img src="images/5a6eca1f250f0_04.jpg"/>
			<img src="images/5a6eca1f250f0_05 (2).jpg"/>
			<img src="images/5a6eca1f250f0_06.jpg"/></div>
		</div>  
	<div class="row">
			<div class="col-md-8 col-md-offset-2" >	
				<div id="top-txt1">
					<p>Heart Rate</p>
				<p>Aliquam ut lorem scelerisque, consequat mi quis, scelerisque massa. </p>
				<a href="#" id="jia"><img src="images/667.jpg"/></a>
				</div>
			<div id="top-txt2"><p>Heart Rate</p>
				<p>Aliquam ut lorem scelerisque, consequat mi quis, scelerisque massa. </p><a href="#" id="jia"><img src="images/6666.jpg"/></a></div>
			<div id="top-txt3"><p>Heart Rate</p>
				<p>Aliquam ut lorem scelerisque, consequat mi quis, scelerisque massa. </p><a href="#" id="jia"><img src="images/667.jpg"/></a></div>
			<div id="top-txt4"><p>Heart Rate</p>
				<p>Aliquam ut lorem scelerisque, consequat mi quis, scelerisque massa. </p><a href="#" id="jia"><img src="images/6666.jpg"/></a></div>
		</div>
		</div>
	
<div id="manageSubject" align="center"><!--查看全部-->
    <table width="95%" cellspacing="10">
        <tr align="center">
            <td>学生编号</td>
            <td>学生姓名</td>
            <td>学生密码</td>
            <td>生日</td>
            <td>qq</td>
            <td>性别</td>
        </tr>



        <c:forEach var="u" items="${list }">
            <tr align="center">
                <td>${u.studentId }</td>
                <td >${u.username }</td>
                <td>${u.password }</td>
                <td>${u.borthday }</td>
                <td>${u.qq }</td>
                <td>${u.sex }</td>
                <td><a href="/showlistServlet?studentId=${u.studentId }">查看</a></td>
                <td><a href="/DeleteServlet?studentId=${u.studentId }">删除</a></td>

            </tr>
        </c:forEach>

    </table>
</div>
  <div class="row" id="footer" >
		    	      <div class="col-md-4 col-md-offset-2 col-sm-12">
                       
                         
                            <h3>Get Connected</h3>
                       
                        <!-- end widget title -->
						<div class="footer-social">
							<ul>
							   <li><a href="#"><span class="glyphicon glyphicon-earphone"></span> 13142269963</a></li>
							   <li><a href="#"><span class="glyphicon glyphicon-calendar"></span> 周一--周五9.00-17.00</a></li>
							   <li><a href="#"><span class="glyphicon glyphicon-map-marker"></span>湖南省长沙市</a></li>
							   <li><a href="#"><span class="glyphicon glyphicon-envelope"></span>1968964562@qq.com</a></li>
							</ul>
						</div>	
                    </div>
                    <!-- End Widget -->
                    <div class="col-md-4 col-sm-12">
                        <div class="footer-section-title">
                            <h5>What's new</h5>
                        </div>
                        <!-- end widget title -->
                        <div class="single-wn-slider owl-carousel owl-theme">
                            <div class="single-wn-item">
								<p>How to Prevent Eye Injuries?</p>
								<p>People at work are equally at risk of eye injuries as those at home. Fortunately, 90 percent of all eye injuries are preventable. Learn how to prevent eye injuries.</p>
							</div>
                            <div class="single-wn-item">
								<p>Need To Know About Scoliosis?</p>
								<p>Scoliosis is a sideward bend of the spine which usually occurs in children, but can also sometimes affect adults. A normal spine is curved on the top of the shoulder.</p>
							</div>
                        </div>
						<a class="wn-readm" href="#">Know more</a>
                    </div>
                    <!-- End Widget -->
	</div>
		
</body>
</html>
