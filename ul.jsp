<%--
  Created by IntelliJ IDEA.
  User: 孙茹
  Date: 2018/11/2
  Time: 15:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/new_file.css"/>
    <script type="text/javascript" src="JS/jquery-2.1.0.js" ></script>
    <script type="application/javascript" >
        $(function(){
            function tabs(tabTit,on,tabCon){
                $(tabTit).children().hover(function(){
                    $(this).addClass(on).siblings().removeClass(on);
                    var index = $(tabTit).children().index(this);
                    $(tabCon).children().eq(index).show().siblings().hide();
                });
            };
            tabs(".tab-hd","active",".tab-bd");
        });
    </script>
</head>
<body>
<div id="warp">
    <!--导航-->
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
                    <li><a href="#">Services</a></li>
                    <li><a href="#">Timetable </a></li>
                    <li><a href="ul.html">News </a></li>
                    <li><a href="aboutme.html">Services</a></li>
                    <li><a href="reint.html">Features</a></li>
                    <li><a href="photo.html">Photo Tour</a></li>
                    <li><a href="features.html">Contact</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!--二级导航	-->
    <div class="row" id="nav-nav">
        <div class="col-md-8 col-md-offset-2">
            <p > Retina Ready & Responsive</p>
            <span>></span>	<a>Retina Ready & Responsive</a>
            <span>></span>	<a>Features</a>
            <span>></span>	<a>Home</a>
        </div>
    </div>
    <!--主页面-->
    <div class="row">
        <div class="col-md-8 col-md-offset-2" id="sun">
            <div class="col-md-8">
                <div class="row">
                    <div class="col-md-6">
                        <h3>Tab style 1</h3>

                        <div class="tab">
                            <ul class="tab-hd"><li class="active">选项1</li><li>选项2</li><li>选项3</li></ul>
                            <ul class="tab-bd"><li class="thisclass">内容1</li><li>内容2</li><li>内容3</li></ul>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <h3>Tab style 2</h3>

                        <div class="tab">
                            <ul class="tab-hd"><li class="active">选项1</li><li>选项2</li><li>选项3</li></ul>
                            <ul class="tab-bd"><li class="thisclass">内容1</li><li>内容2</li><li>内容3</li></ul>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="tab">
                            <ul class="tab-hd"><li class="active">选项7</li><li>选项8</li><li>选项9</li></ul>
                            <ul class="tab-bd"><li class="thisclass">内容7</li><li>内容8</li><li>内容9</li></ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="search2">
                    <form action="">
                        <input id="text1" class="text" type="text" value="Search website" />
                        <input class="btn" type="submit" value="" />
                    </form>
                </div>
                <ul id="ul-ul">
                    <li><a href="#"><span class="glyphicon glyphicon-bookmark"></span><span>Accordion</span></a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-bookmark"></span><span>Buttons</span></a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-bookmark"></span><span>Callout</span></a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-bookmark"></span><span>Chart Circle</span></a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-bookmark"></span><span>Chart Graph</span></a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-bookmark"></span><span>Chart Pie</span></a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-bookmark"></span><span>Column</span></a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-bookmark"></span><span>Divider</span></a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-bookmark"></span><span>List</span></a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-bookmark"></span><span>Message Box</span></a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-bookmark"></span><span>Milestone</span></a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-bookmark"></span><span>Pricing Table</span></a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-bookmark"></span><span>Progress Bar</span></a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-bookmark"></span><span>Service</span></a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-bookmark"></span><span>Tab</span></a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-bookmark"></span><span>Team</span></a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-bookmark"></span><span>Testimonials</span></a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-bookmark"></span><span>Toggle</span></a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-bookmark"></span><span>Twitter</span></a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-bookmark"></span><span>Twitter Carousel Element</span></a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-bookmark"></span><span>Video</span></a></li>
                </ul>
            </div>


        </div>
    </div>

    <div class="row" id="footer" >
        <div class="col-md-2 col-md-offset-2 col-sm-12" id="foot1">
            <div class="imgg">
                <img src="images/5a6eca1f250f0_262.jpg" />
            </div>

            <p>CLINICO</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sollicitudin justo non odio molestie, sed venenatis elit laoreet. </p>
            <div class="line"></div>

            <p>Donec quis condimentum leo, et congue dolor. Integer auctor facilisis odio. Duis vitae nibh tristique, consectetur lacus a, rutrum enim. </p>
            <div class="line"></div>
            <p>Cras fermentum interdum dapibus. Maecenas imperdiet magna nec odio cursus, vitae consequat ante euismod. </p>

        </div>
        <div class="col-md-2 col-sm-12" id="foot2">
            <div class="imgg">
                <img src="images/5a6eca1f250f0_202.jpg" />
            </div>
            <a href="#"id="a1"><img src="images/5a6eca1f250f0_32.jpg" /> </a>
            <a href="#" id="b1"><img src="images/5a6eca1f250f0_352.jpg"/> </a>
            <a href="#" id="c1"><img src="images/5a6eca1f250f0_382.jpg"/></a>
        </div>
        <div class="col-md-2 col-sm-12" id="foot3" >
            <div class="imgg">
                <img src="images/5a6eca1f250f0_22.jpg" /></div>
            <h4 id="Recent">Recent Posts</h4>
            <ul id="phtul">
                <li><img src="images/5a6eca187e729_01_26.jpg"/>
                    <a>New study links lutein with eye health benefits
                        <p >
                            5 months ago
                        </p></a></li>
                <li><img src="images/5a6eca187e729_01_35.jpg">
                    <a>ets may reduce risk of heart disease
                        <p>
                            8 months ago
                        </p></a></li>
                <li><img src="images/5a6eca187e729_01_42.jpg">
                    <a>ets may reduce risk of heart disease
                        <p>
                            8 months ago
                        </p>
                    </a></li>
            </ul>
        </div>
        <div class="col-md-2 col-sm-12" id="time" >
            <ul id="timeul1">
                <li>Mon<span>------</span>08:00 am - 12:00 pm</li>
                <li>Tue<span>------</span>01:00 am - 05:00 pm</li>
                <li>Wed<span>------</span>Free day</li>
                <li>Thu<span>------</span>08:00 am - 12:00 pm</li>
                <li>Fri<span>------</span>08:00 am - 12:00 pm</li>
                <li>Sat<span>------</span>08:00 am - 12:00 pm</li>
                <li>Sun<span>------</span>Free day</li>
            </ul>
            <a href="#">Make an Appointment</a>
        </div>
    </div>
</div>
</body>
</html>

