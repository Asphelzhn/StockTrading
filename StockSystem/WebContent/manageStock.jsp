
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
</head>
<body>
	<form method="post" action="<%=path %>/addStock.jsp">
		<div id="mainlist">
			<h1>��Ʊ����ϵͳ</h1>
			<div class="mainlist">
				<h1>
					<span id="sp"> <a href="<%=path%>/servlet/MainServlet">������ҳ</a>
						&nbsp;&nbsp;&nbsp;&nbsp;��ӭ����<%=uib.getName()%>&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="<%=path%>/servlet/LogoutServlet">�˳�ϵͳ</a>
					</span>
				</h1>
				<table width="600" border="0" id="con">
					<tr>
						<td colspan="4" nowrap class="tdc"><span id="sp">��Ʊ��Ϣ����</span>
						</td>
					</tr>
					<tr>
						<td colspan="4" nowrap class="tdc"><input type="submit"
							class="sm" value="���ӹ�Ʊ" /></td>
					</tr>
					<tr>
						<td width="145" nowrap class="tdc"><span id="sp">��Ʊ����</span>
						</td>
						<td width="145" nowrap class="tdc"><span id="sp">��Ʊ����</span>
						</td>
						<td width="145" nowrap class="tdc"><span id="sp">���µ���</span>
						</td>
						<td width="147" nowrap class="tdc"><span id="sp">��ز���</span>
						</td>
					</tr>
					<%
						List<StockInfoBean> list = (List<StockInfoBean>) request
								.getAttribute("list"); //��ѯ�ļ�¼��Ϣ
						if (list != null) {
							for (int i = 0; i < list.size(); i++) { // �Լ�¼��Ϣ��ѭ����ʾ
								StockInfoBean si = (StockInfoBean) list.get(i);
								String dellink = path
										+ "/servlet/DeleteStockServlet?stockid="
										+ si.getStockid();
					%>
					<tr>
						<td nowrap class="tdc"><%=si.getStockid()%></td>
						<td nowrap class="tdc"><%=si.getStockName()%></td>
						<td nowrap class="tdc"><%=si.getStockPrice()%></td>
						<td nowrap class="tdc">&nbsp;&nbsp;<a href="<%=dellink%>">ɾ��</a>&nbsp;
						</td>
					</tr>
					<%
						}
						}
					%>
				</table>
				<br /> <br />
			</div>
		</div>
	</form>
	
</body>
</html>