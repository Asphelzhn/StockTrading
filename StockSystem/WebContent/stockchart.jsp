
<%@page import="com.stock.bean.UserInfoBean"%>
<%@page import="java.util.List"%>
<%@page import="com.stock.bean.StockInfoBean"%>
<%@page contentType="text/html;charset=GBK"%>
<%
	String path = request.getContextPath();
	UserInfoBean uib = (UserInfoBean) session.getAttribute("user");
%>
<!DOCTYPE html>
<html>
<head>

<title>��Ʊ��Ϣ����--��Ʊ����ϵͳ</title>
<link rel="stylesheet" href="<%=path%>/assets/css/styles.css" />
<!-- ���°汾�� Bootstrap ���� CSS �ļ� -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<!-- ���µ� Bootstrap ���� JavaScript �ļ� -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
	<form method="post" action="<%=path %>/addStock.jsp">
		<div id="mainlist">
			<h1>��Ʊ���Ʋ�ѯ</h1>
			<div class="mainlist">
				<h1>
					<span id="sp"> <a href="<%=path%>/servlet/MainServlet">������ҳ</a>
						&nbsp;&nbsp;&nbsp;&nbsp;��ӭ����<%=uib.getName()%>&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="<%=path%>/servlet/LogoutServlet">�˳�ϵͳ</a>
					</span>
				</h1>
				<br /> <br />
				<br /> <br />
				<img alt="��Ʊ����ͼ" src="http://image.sinajs.cn/newchart/daily/n/sh000001.gif" align="middle">
			</div>
		</div>
	</form>
	
</body>
</html>