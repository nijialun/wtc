<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
  
  </head>
  <style type="text/css">
  	td{
	  	width: 36px;
	  	height:36;
	  	border:2px solid #00BBFF;
	  	font-size: 26;
  	}
  	.tcl{
	  	width:188px;
	  	height:36;
	  	border:2px solid #FF6347 ;
	  	font-size: 26;
  	}
  	h1{
  		width:488px;
	  	height:46;
	  	border:5px solid #A52A2A ;
	  	font-family : 微软雅黑;
	  	font-size: 36;
  	}
  </style>
  <body>
  	<center>
    <h1>当前计算结果展示</h1><a href="index.jsp"><h2>点击返回</h2></a>
 
	<table width="100%" border=1>
	<tr>
		<td>id</td>
		<td class="tcl">值</td>
		
	</tr>
	<c:forEach items="${sum}" var="sum" varStatus="id">
	<tr>
		<td>${id.index+1}</td>
		<td class="tcl">${sum}</td>
	</tr>
	</c:forEach>
 </table>
 </center>
  </body>
</html>
