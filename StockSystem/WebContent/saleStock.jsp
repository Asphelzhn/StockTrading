
<%@page import="com.stock.bean.UserInfoBean"%>
<%@page contentType="text/html;charset=GBK"%>
<%
	String path = request.getContextPath();
	UserInfoBean uib = (UserInfoBean) session.getAttribute("user");
	String stockid = request.getParameter("stockid");
%>
<!DOCTYPE html>
<html>
<head>
<title>���۹�Ʊ--��Ʊ����ϵͳ</title>
<link rel="stylesheet" href="<%=path%>/assets/css/styles.css" />
</head>
<body>
	<form method="post" action="<%=path%>/servlet/SaleStockServlet">
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
						<td colspan="2" nowrap class="tdc"><span id="sp">���׹�Ʊ</span>
						</td>

					</tr>
					<tr>
						<td colspan="2" nowrap class="tdc">&nbsp;</td>

					</tr>
					<tr>
						<td nowrap class="tdr">����������</td>
						<td nowrap class="tdl"><input type="text" class="nt"
							id="tradeNumber" name="tradeNumber"></td>
					</tr>
					<tr>
						<td nowrap class="tdr">���׼۸�</td>
						<td nowrap class="tdl"><input type="text" class="nt"
							id="tradePrice" name="tradePrice"></td>
					</tr>
					<tr hidden="hidden">
						<td colspan="2" nowrap class="tdc"><input type="text" class="nt"
							id="stockid" name="stockid" value="<%=stockid%>"></td>
					</tr>
					<tr>
						<td colspan="2" nowrap class="tdc">&nbsp;</td>
					</tr>
					<tr>
						<td colspan="2" nowrap class="tdc"><input type="submit"
							class="sm" value="ȷ�Ͻ���" /></td>
					</tr>
				</table>
				<br /> <br />
			</div>
		</div>
	</form>
	
</body>
</html>