
<%@page import="com.stock.bean.UserInfoBean"%>
<%@page import="java.util.List"%>
<%@page import="com.stock.bean.StockInfoBean"%>
<%@page contentType="text/html;charset=GBK"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<title>ʵʱ�ɼ۲�ѯ--��Ʊ����ϵͳ</title>
<link rel="stylesheet" href="<%=path %>/assets/css/styles.css" />
</head>
<body>
	<form method="post" action="<%=path %>/servlet/ChargeAccountServlet">
		<div id="mainlist">
			<h1>��Ʊ����ϵͳ</h1>
			<div class="mainlist">
				<h1>
					<span id="sp"> <a href="<%=path%>/servlet/MainServlet">������ҳ</a>
						&nbsp;&nbsp;&nbsp;&nbsp;��ӭ����&nbsp;&nbsp;&nbsp;&nbsp; <a href="<%=path%>/servlet/LogoutServlet">�˳�ϵͳ</a>
					</span>
				</h1>
				<table border="0" id="con">
					<tr>
						<td colspan="3" nowrap class="tdc"><span id="sp">�˻���ֵ</span>
						</td>

					</tr>
					<tr>
						<td colspan="3" nowrap class="tdc">&nbsp;</td>
					</tr>
					<tr>
						<td colspan="3" nowrap class="tdc">������Ҫ��ֵ�Ľ��</td>
					</tr>

					<tr>
						<td colspan="3" nowrap class="tdc"><input type="text"
							class="maintext" name="charge" id="charge" /></td>
					</tr>
					<tr>
						<td colspan="3" nowrap class="tdc"><input type="submit"
							class="sm" value="��ֵ" /></td>
					</tr>
				</table>
				<br /> <br />
			</div>
		</div>
	</form>
	
</body>
</html>