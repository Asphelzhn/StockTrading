
<%@ page contentType="text/html;charset=GBK"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>

<head>

<title>��½ҳ��--��Ʊ����ϵͳ</title>
<link rel="stylesheet" href="<%=path%>/assets/css/styles.css">
<script language="javascript">
	function loadimage() {
		document.getElementById("randImage").src = "image.jsp?" + Math.random();
	}
	function check() {
		var userid = document.getElementById("userid").value;
		var password = document.getElementById("password").value;
		var rand = document.getElementById("rand").value;
		if (userid.length == 0) {
			alert("�������˺ţ�");
			return false;
		}
		if (password.length == 0) {
			alert("���������룡");
			return false;
		}
		if (rand.length == 0) {
			alert("��������֤�룡");
			return false;
		}
	}
</script>
</head>
<body>
 <div class="site-wrapper">

      <div class="site-wrapper-inner">

        <div class="cover-container">
        
	<form method="post" action="LoginServlet">
		<div id="umain">
			<h1>��Ʊ����ϵͳ</h1>
			<div class="login">
				<h1>��ӭ��½</h1>
				<p>
					<input type="text" name="userid" placeholder="�û��ʺ�">
				</p>
				<p>
					<input type="password" name="password" placeholder="����">
				</p>
				<p>
					<input type="text" name="rand" placeholder="��֤��">
				</p>
				<p>
					<img alt="��֤��" name="randImage" id="randImage" src="image.jsp"
						width="60" height="20" border="1" align="absmiddle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
						href="javascript:loadimage();">���������</a>
				</p>
				<p>
					<input type="submit" value="�� ½" onclick="return check()">
				</p>
				<p>
					<input type="button" value="ע ��"
						onclick="javascrtpt:window.location.href='register.jsp'">
				</p>
			</div>
		</div>
	</form>
	<footer>
		<div id="fd1" align="center"></div>
	</footer>
			</div>
		</div>
	</div>
	
</body>
</html>