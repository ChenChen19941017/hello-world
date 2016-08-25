<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript"  src="js/jquery-2.1.1.js"></script>
	<script type="text/javascript"  src="js/jquery-2.1.1.min.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script>
    function verity()
        {
            $.ajax({
            type:"GET",
            url:"servlet/ZhuCe",
           // dataType:"",
            data:"name="+$("#name").val(),
            beforeSend:function(XMLHttpRequest)
                {
                    $("#result").text("正在查询");
                    //Pause(this,100000);
                },
            success:function(msg)
                {   
                    $("#result").html(msg);
                    $("#result").css("color","red");
                },
           complete:function(XMLHttpRequest,textStatus)
                {
                    //隐藏正在查询图片
                },
          error:function()
               {
                    //错误处理
               }
            });
        }
</script>
  </head>
  <body>
<input type="text" id="name" onblur="verity()"/ >
<a href="1.html">下一页</a>
<div id="result"></div>
  </body>
</html>
