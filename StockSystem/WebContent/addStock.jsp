
<%@page import="com.stock.bean.UserInfoBean"%>
<%@page contentType="text/html;charset=GBK"%>
<%
	String path = request.getContextPath();
	UserInfoBean uib = (UserInfoBean) session.getAttribute("user");
%>
<!DOCTYPE html>
<html>
<head>
<title>��Ʊ��Ϣ����--��Ʊ����ϵͳ</title>
<link rel="stylesheet" href="assets/css/styles.css" />
</head>
<body>
	<form method="post" action="<%=path%>/servlet/AddStockServlet">
		<div id="mainlist">
			<h1>��Ʊ����ϵͳ</h1>
			<div class="mainlist">
				<h1>
					<span id="sp"> <a href="<%=path%>/servlet/MainServlet">������ҳ</a>
						&nbsp;&nbsp;&nbsp;&nbsp;��ӭ����<%=uib.getName()%>&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="<%=path%>/servlet/LogoutServlet">�˳�ϵͳ</a>
					</span>
				</h1>
				<table border="0" id="con">
					<tr>
						<td colspan="2" nowrap class="tdc"><span id="sp">��Ʊ��Ϣ�������ӹ�Ʊ��</span>
						</td>
					</tr>
					<tr>
						<td colspan="2" nowrap class="tdc">&nbsp;</td>
					</tr>
					<tr>
						<td width="218" nowrap class="tdr">��Ʊ���룺</td>
						<td width="366" nowrap class="tdl"><input type="text"
							class="nt" id="stockId" name="stockId"></td>
					</tr>
					<tr>
						<td nowrap class="tdr">��Ʊ���ƣ�</td>
						<td nowrap class="tdl"><input type="text" class="nt"
							id="stockName" name="stockName"></td>
					</tr>
					<tr>
						<td nowrap class="tdr">��Ʊƴ����д��</td>
						<td nowrap class="tdl"><input type="text" class="nt"
							id="stockPy" name="stockPy"></td>
					</tr>
					<tr>
						<td nowrap class="tdr">��ʼ���ۣ�</td>
						<td nowrap class="tdl"><input type="text" class="nt"
							id="stockPrice" name="stockPrice"></td>
					</tr>
					<tr>
						<td colspan="2" nowrap class="tdc">&nbsp;</td>
					</tr>
					<tr>
						<td colspan="2" nowrap class="tdc"><input type="submit"
							class="sm" value="���ӹ�Ʊ" /></td>
					</tr>
				</table>
				<br /> <br />
			</div>
		</div>
	</form>
	
</body>
</html>