<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="./css/top.css">
	
  	<script type="text/javascript" src="./js/top.js"></script>
</head>


<body>
	<div>
    	<div class="div2_1">
        	<img src="${pageContext.request.contextPath }/images/logo.jpg" />
        </div>
        <div class="div2_2">
        	<span><h1>在线考试系统</h1></span>
        </div>
        <div class="div2_3">
        	<label id="timeShow"></label>
        </div>
    </div>  
</body>
</html>
