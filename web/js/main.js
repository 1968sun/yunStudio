$(function(){
    function tabs(tabTit,on,tabCon){
        $(tabTit).children().click(function(){
            $(this).addClass(on).siblings().removeClass(on);
            var index = $(tabTit).children().index(this);
           	$(tabCon).children().eq(index).show().siblings().hide();
    	});
	};
    tabs(".tab-hd","active",".tab-bd");
});
function ad() {
        $.ajax({
            //几个参数需要注意一下
            type: "POST",//方法类型
            dataType: "json",//预期服务器返回的数据类型
            url: "/adServlet" ,//url
            data: $('#adform').serialize(),

            success: function(request) {
                alert("添加成功");
            },
            error: function(data) {
                //接收后台返回的结果
            }
        });
    }
function de() {
    $.ajax({
        //几个参数需要注意一下
        type: "POST",//方法类型
        dataType: "json",//预期服务器返回的数据类型
        url: "/DeleteServlet" ,//url
        data: $('#deform').serialize(),
        error: function(request) {
            alert("Connection error");
        },
        success: function(data) {
            //接收后台返回的结果
        }
    });
}
function up() {
    $.ajax({
        //几个参数需要注意一下
        type: "POST",//方法类型
        dataType: "json",//预期服务器返回的数据类型
        url: "/updateServlet",//url
        data: $('#upform').serialize(),
        error: function (request) {
            alert("Connection error");
        },
        success: function (data) {
            //接收后台返回的结果
        }
    });
}
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

    $(".registerform").Validform({
        tiptype:2,
        usePlugin:{
            passwordstrength:{
                minLen:6,
                maxLen:18,
                trigger:function(obj,error){
                    if(error){
                        obj.parent().next().find(".passwordStrength").hide().siblings(".info").show();
                    }else{
                        obj.removeClass("Validform_error").parent().next().find(".passwordStrength").show().siblings().hide();
                    }
                }
            }
        }
    });
})