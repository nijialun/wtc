<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
  	<script type="text/javascript">
		function getStr() {
			var id=document.getElementById("id").value;
			var patrn = /^[0-9]*$/;
		    if (patrn.exec(id) == null || id == "") {
		    	alert("输入的非法字符！！");
		        return false
		    } else {
		    	id=parseInt(id)
			    	if (id>0&&id<=30) {
			    		document.forms[0].submit();
			        	return true
			    	} else{
			    		alert("个数应该为1-30之间")
			    		return false
			    	}
		    }
		}
	</script>
  </head>
  <body>
  <center>

    <form action="login" method="post"style="border:3px solid 	#F08080 ;">
    <h1>请输入你想查询的斐波拉契数列的个数(1-30)</h1><br>

	    <input type="text" name="id" id="id" style="width: 366px;height:36;border:2px solid #00BBFF;font-size: 26;"><br><br>
	    <input type="button" value="查询" onclick="getStr()"style="width: 166px;height:36;border:3px solid #CC00FF;font-size: 26;" />
	    <input type="reset" value="重置"style="width: 166px;height:36;border:3px solid #CC00FF;font-size: 26;"><br><br>
    </form>
   </center> 
  </body>
</html>
