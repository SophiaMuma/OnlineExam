<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD 	XHTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">

    <title>学生登录</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/login.css">
	
	<style type="text/css"></style>
	<script type="text/javascript">
		function checkId(){
			var sid = document.getElementById("sid").value;
			var idspan = document.getElementById("idspan");
			var reg = /^[0-9]{2,11}$/i;
			var flag ;
			if(sid == ""){
				idspan.innerHTML = "* 学号不能为空".fontcolor("red").fontsize("2px");
				flag = false;
			}else if(!reg.test(sid)){
				idspan.innerHTML = "* 学号只能是数字".fontcolor("red").fontsize("2px");
				flag = false;
			}else{
				idspan.innerHTML = "";
				flag = true;
			}
			return flag;
		}
	</script>
	<script type="text/javascript" src="js/login.js"></script>
</head>

<body>
  <div class="div1">
    <div class="div2_1">
        <div class="div3_1">
             <img src="${pageContext.request.contextPath }/images/logo.jpg"/>
        </div>
        <div class="div3_2">
             <span>在线考试系统</span>
        </div>
    </div>
    <div class="div2_2">
     <center>
    	<form id="form1" action="${pageContext.request.contextPath }/student_login.action" method="post" onsubmit="return checkForm()" >
        	<table border="0px">
            	<tr>
                	<td style="text-align:center;font-size:20px;" colspan="3">学生登录</td>  
                </tr>
                <tr>
                	<td style="text-align:right;">学&nbsp;号</td>
                    <td style="text-align:left;">
                    	<input id="sid" type="text" style="width:160px;margin-left:10px;" name="sid" onblur="checkId()" />
                    </td>
                    <td style="text-align:left;"><span id="idspan"></span></td>
                </tr>
                <tr>
                	<td style="text-align:right;">密&nbsp;码</td>
                    <td style="text-align:left;">
                    	<input id="password" type="password" style="width:160px;margin-left:10px;" name="password" onblur="checkPW()"/>
                    </td>
                    <td style="text-align:left;"><span id="pwspan"></span></td>
                </tr>
                 <tr>	
                    <td colspan="3" class="btn">
                    	<input type="submit" value="登录"/>
                        <input type="reset" value="重置"/>
                    </td>
                </tr>
            </table>  
        </form>
      </center>
      <span id="errspan" style="test"><s:actionerror/></span>
    </div>
  </div>
</body>
</html>
