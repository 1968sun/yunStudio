<%--
  Created by IntelliJ IDEA.
  User: 孙茹
  Date: 2018/11/13
  Time: 11:43
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>用户操作</title>
    <script src="/JS/jquery-2.1.0.js" type="text/javascript" ></script>
    <script src="/JS/bootstrap.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript" src="/JS/main.js"> </script>
    <script src="/JS/validfrom.js" type="text/javascript"></script>
    <script type="text/javascript" src="/JS/jQuery-from.js"></script>
    <script type="text/javascript" src="/JS/index.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/new_file.css" />
    <script type="text/javascript">
        $(function(){
            //$(".registerform").Validform();  //就这一行代码！;

            var getInfoObj=function(){
                return 	$(this).parents("td").next().find(".info");
            }

            $("[datatype]").focusin(function(){
                if(this.timeout){clearTimeout(this.timeout);}
                var infoObj=getInfoObj.call(this);
                if(infoObj.siblings(".Validform_right").length!=0){
                    return;
                }
                infoObj.show().siblings().hide();

            }).focusout(function(){
                var infoObj=getInfoObj.call(this);
                this.timeout=setTimeout(function(){
                    infoObj.hide().siblings(".Validform_wrong,.Validform_loading").show();
                },0);

            });

        })
    </script>

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
	
<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <div class="tab">
            <ul class="tab-hd"><li class="active">用户增加</li><li>用户删除</li><li>用户修改</li><li>查找指定id</li><li>查找全部</li></ul>
            <ul class="tab-bd">
                <li class="thisclass"><p>增加</p>
                    <div id="add" align="center">
                        <form action="##" method="post" id="adform" class="registerform"onsubmit="return false">
                            <input type="hidden" name="token" value="${token}"/>
                            <table width="100%" style="table-layout:fixed;">
                                <tr>
                                    <td class="need" style="width:10px;">*</td>
                                    <td style="width:125px;">昵称:</td>
                                    <td style="width:295px;"><input type="text" value="" name="username" class="inputxt" datatype="s6-18" nullmsg="请输入您的昵称！" errormsg="昵称至少6个字符,最多18个字符！" /></td>
                                    <td>
                                        <div class="Validform_checktip"></div>
                                        <div class="info">昵称至少6个字符,最多18个字符<span class="dec"><s class="dec1">&#9670;</s><s class="dec2">&#9670;</s></span></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="need" style="width:10px;">*</td>
                                    <td style="width:125px;">密码</td>
                                    <td >
                                        <input type="password" value="" name="password" class="inputxt" plugin=" "  datatype="*6-18" nullmsg="请输入密码！" errormsg="密码至少6个字符,最多18个字符！" />
                                    </td>
                                    <td>
                                        <div class="Validform_checktip"></div>
                                        <div class=" " style="display:none;"><b>密码强度：</b> <span>弱</span><span>中</span><span class="last">强</span></div>
                                        <div class="info">密码至少6个字符,最多18个字符<span class="dec"><s class="dec1">&#9670;</s><s class="dec2">&#9670;</s></span></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="need">*</td>
                                    <td style="width:125px;">确认密码：</td>
                                    <td><input type="password" value="" name="repassword" class="inputxt" recheck="password"  datatype="*6-18" nullmsg="请确认密码！" errormsg="两次输入的密码不一致！" /></td>
                                    <td>
                                        <div class="Validform_checktip"></div>
                                        <div class="info">请确认您的密码<span class="dec"><s class="dec1">&#9670;</s><s class="dec2">&#9670;</s></span></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="need">*</td>
                                    <td style="width:125px;">生日：</td>
                                    <td><input type="text" value="" name="borthday" class="inputxt" datatype="b" nullmsg="请输入您的出生年月（yyyy-mm-dd)" errormsg="请输入您的出生年月（yyyy-mm-dd)"  /></td>
                                    <td>
                                        <div class="Validform_checktip"></div>
                                        <div class="info">请输入您的出生年月（yyyy-mm-dd)<span class="dec"><s class="dec1">&#9670;</s><s class="dec2">&#9670;</s></span></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="need">*</td>
                                    <td style="width:125px;">QQ：</td>
                                    <td><input type="text" value="" name="qq" class="inputxt" datatype="q" nullmsg="请输入您的QQ号码！" errormsg="请输入您的QQ号码！"  /></td>
                                    <td>
                                        <div class="Validform_checktip"></div>
                                        <div class="info">请输入您的QQ号码<span class="dec"><s class="dec1">&#9670;</s><s class="dec2">&#9670;</s></span></div>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="need">*</td>
                                    <td style="width:125px;">性别：</td>
                                    <td><input type="radio" value="boy" name="sex" class="pr1" datatype="*" nullmsg="请选择性别！" errormsg="请选择性别！" checked="checked"/>男<input type="radio" value="girl" name="sex"  class="pr1" />女</td>
                                    <td>
                                        <div class="Validform_checktip"></div>
                                        <div class="info">请告诉我们您的性别<span class="dec"><s class="dec1">&#9670;</s><s class="dec2">&#9670;</s></span></div>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="need"></td>
                                    <td></td>
                                    <td colspan="2" style="padding:10px 0 18px 0;">
                                        <input type="submit" value="提 交" name="submit" id="adsub" onclick="ad()" /> <input type="reset"id="reset" value="重 置" />
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </div>
                </li>
                <li><p>删除</p>
                    <div id="delect" align="center">
                        <form action="##" method="post" id="deform"class="registerform" onsubmit="return false">

                            <table width="100%" style="table-layout:fixed;">
                                <tr>
                                    <td class="need" style="width:10px;">*</td>

                                    <td>请输入你要删除的id:</td>
                                    <td style="width:295px;"><input type="text" value="" name="studentId" class="inputxt" datatype="n" nullmsg="请输入你要删除的id" errormsg="请输入你要删除的id" /></td>
                                    <td>
                                        <div class="Validform_checktip"></div>
                                        <div class="info">请输入你要删除的id<span class="dec"><s class="dec1">&#9670;</s><s class="dec2">&#9670;</s></span></div>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="need"></td>
                                    <td></td>
                                    <td colspan="2" style="padding:10px 0 18px 0;">
                                        <input name="submit" type="submit" value="确定" id="desub" onclick="de()"> <input type="reset"id="reset" value="重 置" />
                                    </td>
                                </tr>
                            </table>

                        </form>
                    </div></li>
                <li><p>修改</p>
                    <div id="update" align="center">
                        <form action="##" method="post" id="upform" class="registerform" onsubmit="return false">
                            <table width="100%" style="table-layout:fixed;">
                                <tr>
                                    <td class="need" style="width:10px;">*</td>
                                    <td style="width:180px;">请输入你要修改的ID</td>
                                    <td style="width:295px;"><input type="text" value="" name="studentId" class="inputxt" datatype="*" nullmsg="请输入您的昵称！" errormsg="昵称至少6个字符,最多18个字符！" /></td>
                                    <td>
                                        <div class="Validform_checktip"></div>
                                        <div class="info">昵称至少6个字符,最多18个字符<span class="dec"><s class="dec1">&#9670;</s><s class="dec2">&#9670;</s></span></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="need" style="width:10px;">*</td>
                                    <td style="width:180px;">昵称</td>
                                    <td style="width:295px;"><input type="text" value="" name="username" class="inputxt" datatype="s6-18" nullmsg="请输入您的昵称！" errormsg="昵称至少6个字符,最多18个字符！" /></td>
                                    <td>
                                        <div class="Validform_checktip"></div>
                                        <div class="info">昵称至少6个字符,最多18个字符<span class="dec"><s class="dec1">&#9670;</s><s class="dec2">&#9670;</s></span></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="need" style="width:10px;">*</td>
                                    <td style="width:180px;">密码</td>
                                    <td style="width:210px;">
                                        <input type="password" value="" name="password" class="inputxt" plugin="passwordStrength"  datatype="*6-18" nullmsg="请输入密码！" errormsg="密码至少6个字符,最多18个字符！" />
                                    </td>
                                    <td>
                                        <div class="Validform_checktip"></div>
                                        <div class="passwordStrength" style="display:none;"><b>密码强度：</b> <span>弱</span><span>中</span><span class="last">强</span></div>
                                        <div class="info">密码至少6个字符,最多18个字符<span class="dec"><s class="dec1">&#9670;</s><s class="dec2">&#9670;</s></span></div>
                                    </td>
                                </tr>

                                    <td class="need">*</td>
                                    <td style="width:180px;">生日：</td>
                                    <td><input type="text" value="" name="borthday" class="inputxt" datatype="b" nullmsg="请输入您的出生年月（yyyy-mm-dd)" errormsg="请输入您的出生年月（yyyy-mm-dd)"  /></td>
                                    <td>
                                        <div class="Validform_checktip"></div>
                                        <div class="info">请输入您的出生年月（yyyy-mm-dd)<span class="dec"><s class="dec1">&#9670;</s><s class="dec2">&#9670;</s></span></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="need">*</td>
                                    <td style="width:180px;">QQ：</td>
                                    <td><input type="text" value="" name="qq" class="inputxt" datatype="q" nullmsg="请输入您的QQ号码！" errormsg="请输入您的QQ号码！"  /></td>
                                    <td>
                                        <div class="Validform_checktip"></div>
                                        <div class="info">请输入您的QQ号码<span class="dec"><s class="dec1">&#9670;</s><s class="dec2">&#9670;</s></span></div>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="need">*</td>
                                    <td style="width:180px;">性别：</td>
                                    <td><input type="radio" value="1" name="sex" id="boy" class="pr1" datatype="*" nullmsg="请选择性别！" errormsg="请选择性别！" checked="checked" /><label for="male">男</label> <input type="radio" value="2" name="sex" id="girl" class="pr1" /><label for="female">女</label></td>
                                    <td>
                                        <div class="Validform_checktip"></div>
                                        <div class="info">请告诉我们您的性别<span class="dec"><s class="dec1">&#9670;</s><s class="dec2">&#9670;</s></span></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="need"></td>
                                    <td></td>
                                    <td colspan="2" style="padding:10px 0 18px 0;">
                                        <input type="submit" value="提 交" name="submit" id="upsub" onclick="up()" /> <input type="reset"id="reset" value="重 置" />
                                    </td>
                                </tr>
                            </table>

                        </form>
                    </div>
                </li>
                <li><p>查找指定ID</p>
                    <form action="/showlistServlet" class="registerform" method="post">

                        <table width="100%" style="table-layout:fixed;">
                            <tr>
                                <td class="need" style="width:10px;">*</td>

                                <td>请输入你要查询的id:</td>
                                <td style="width:295px;"><input type="text" value="" name="studentId" class="inputxt" datatype="n" nullmsg="请输入你要查询的id" errormsg="请输入你要查询的id" /></td>
                                <td>
                                    <div class="Validform_checktip"></div>
                                    <div class="info">请输入你要查询的id<span class="dec"><s class="dec1">&#9670;</s><s class="dec2">&#9670;</s></span></div>
                                </td>
                            </tr>

                            <tr>
                                <td class="need"></td>
                                <td></td>
                                <td colspan="2" style="padding:10px 0 18px 0;">
                                    <input name="submit" type="submit" value="确定" > <input type="reset"id="reset" value="重 置" />
                                </td>
                            </tr>
                        </table>
                    </form>
                </li>
                <li><p>查找全部</p>
                    <form action="/showallServlet" class="registerform" method="post">
                        <table border="0" cellspacing="10" cellpadding="0">
                            <tr>
                                <td colspan="2">
                                    <div align="center">
                                        <input type="submit" value="录入">
                                        <input type="reset" value="重置">
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </form>
                </li>
            </ul>
        </div>
    </div>
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

