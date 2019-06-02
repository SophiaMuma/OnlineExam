<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ckbj.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="./css/ks.css">

  </head>
  
  <body>
	<div class="divtitle">
		<strong>查看教师：</strong>
    </div>
    <div id="div1">
  	  <div id="div2">
   		<table border="0px" cellspacing="0px">
   			<tr style="background-color: #DEEFFF">
   				<td>教师编号</td>
   				<td>姓名</td>
				<td>电话</td>
				<td>操作</td>	
   			</tr>
   			<s:iterator var="t" value="list">
   			 <tr>
   				<td><s:property value="#t.tid"/></td>
		  		<td><s:property value="#t.tname"/></td>
		  		<td><s:property value="#t.phone"/></td>
				<td><a href="${pageContext.request.contextPath}/teacher_ckTeacherXX.action?tid=<s:property value="#t.tid"/>">查看</a>&nbsp;|&nbsp;<a href="${pageContext.request.contextPath}/teacher_deleteTeacherAdmin?tid=<s:property value="#t.tid"/>">删除</a></td>	
   			 </tr>
   			</s:iterator>
   		</table>
   	 </div>
  	</div>
  </body>
</html>
