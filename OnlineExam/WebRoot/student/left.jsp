<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'left.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="./css/left.css">

	<script type="text/javascript" src="./js/left.js"></script>
  </head>
  
 <body>
  <div id="div1">
  	<div id="div2_1">
        <a id ="a1_1" href="${pageContext.request.contextPath }/testControl_ckTestControl.action" target="mainFrame">进行考试</a>
    </div>
   
	<div id="div2_2">
        <a id ="a1_2" href="${pageContext.request.contextPath}/student_ckTestNote.action?sid=<s:property value="#session.existStudent.sid"/>" target="mainFrame">考试记录</a>
    </div>
    
	<div id="div2_3">
    	 <a id ="a1_3" href="${pageContext.request.contextPath }/student_myBJ.action?sid=<s:property value="#session.existStudent.sid"/>" target="mainFrame">我的班级</a>
    </div>
    <div id="div2_4">
    	 <a id ="a1_4"  href="${pageContext.request.contextPath }/student_wsStudent.action?sid=<s:property value="#session.existStudent.sid"/>" target="mainFrame">完善信息</a>
    </div>
    <div id="div2_5">
    	 <a id ="a1_5"  href="${pageContext.request.contextPath }/student_upw.action" target="mainFrame">修改密码</a>
    </div> 
  </div>   
</body>
</html>
