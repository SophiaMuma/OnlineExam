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
	l="stylesheet" type="text/css" href="./css/ks.css">

  </head>
  
  <body>
	<div class="divtitle">
		<strong>查看班级：</strong>
    </div>
    <div id="div1">
  	  <div id="div2">
   		<table border="0px" cellspacing="0px">
   			<tr style="background-color: #DEEFFF">
   				<td>班级编号</td>
   				<td>班级名称</td>
   				<td>任课教师</td>
				<td>操作</td>
   			</tr>
   			<s:iterator value="listbj" var="bj">
   				<tr>
   				<td><s:property value="#bj.bjid"/></td>
   				<td><s:property value="#bj.bjname"/></td>
   				<td><s:property value="#bj.teacher.tname"/></td>
				<td><a href="${pageContext.request.contextPath}/bj_ckBJStudents.action?bjid=<s:property value="#bj.bjid"/>">查看</a>&nbsp;|&nbsp;<a href="${pageContext.request.contextPath}/bj_deleteBJAdmin?bjid=<s:property value="#bj.bjid"/>">删除</a></td>
   			</tr>
   			</s:iterator>
   		</table>
   		</div>
  	</div>
  </body>
</html>
