<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>学生用户首页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
 <frameset cols="8%,*,8%" frameborder="0" border="0" framespacing="0">
	<frame src="${pageContext.request.contextPath}/student/leftbj.jsp" scrolling="no" noresize="noresize" />
    <frameset rows="15%,4%,*,7%" frameborder="0" border="0" framespacing="0">
    	<frame src="${pageContext.request.contextPath}/student/top.jsp" name="topFrame" scrolling="no" noresize="noresize"/>
        <frame src="${pageContext.request.contextPath}/student/top2.jsp" name="top2Frame" scrolling="no" noresize="noresize"/>
    	<frameset cols="15%,*" frameborder="0" border="0" framespacing="0">
            <frame src="${pageContext.request.contextPath}/student/left.jsp" name="leftFrame" scrolling="auto" noresize="noresize"/>
            <frame style="border-right:1px solid #CCC;" src="${pageContext.request.contextPath}/student/welcome.jsp" name="mainFrame" scrolling="auto"/>
   		</frameset>
    	<frame src="${pageContext.request.contextPath}/student/bottom.jsp" name="bottomFrame" scrolling="no" noresize="noresize"/>
    </frameset>
    <frame src="${pageContext.request.contextPath}/student/rightbj.jsp" scrolling="no" noresize="noresize" />
</frameset>
</html>
