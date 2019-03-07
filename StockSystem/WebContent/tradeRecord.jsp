
<%@page import="com.stock.bean.TradeRecordBean"%>
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
<title>���׼�¼��ѯ--��Ʊ����ϵͳ</title>
<link rel="stylesheet" href="<%=path%>/assets/css/styles.css" />
</head>
<body>
	<form method="post" action="">
		<div id="mainlist">
			<h1>��Ʊ����ϵͳ</h1>
			<div class="mainlist">
				<h1>
					<span id="sp"> <a href="<%=path%>/servlet/MainServlet">������ҳ</a>
						&nbsp;&nbsp;&nbsp;&nbsp;��ӭ����<%=uib.getName()%>&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="<%=path%>/servlet/LogoutServlet">�˳�ϵͳ</a>
					</span>
				</h1>
				<table width="600" border="1" id="con">
					<tr>
						<td colspan="7" nowrap class="tdc"><span id="sp">���׼�¼��ѯ</span>
						</td>
					</tr>
					<tr>
						<td width="81" nowrap class="tdc"><span id="sp">��Ʊ����</span></td>
						<td width="81" nowrap class="tdc"><span id="sp">��Ʊ����</span></td>
						<td width="81" nowrap class="tdc"><span id="sp">���׵���</span></td>
						<td width="81" nowrap class="tdc"><span id="sp">��������</span></td>
						<td width="81" nowrap class="tdc"><span id="sp">�����û�</span></td>
						<td width="81" nowrap class="tdc"><span id="sp">�����û�</span></td>
						<td width="84" nowrap class="tdc"><span id="sp">����ʱ��</span></td>
					</tr>
					<%
						List<TradeRecordBean> list = (List<TradeRecordBean>) request
								.getAttribute("list"); //��ѯ�ļ�¼��Ϣ
						if (list != null) {
							for (int i = 0; i < list.size(); i++) { // �Լ�¼��Ϣ��ѭ����ʾ
								TradeRecordBean trb = (TradeRecordBean) list.get(i);
					%>
					<tr>
						<td nowrap class="tdc"><%=trb.getStockid()%></td>
						<td nowrap class="tdc"><%=trb.getStockName()%></td>
						<td nowrap class="tdc"><%=trb.getStockPrice()%></td>
						<td nowrap class="tdc"><%=trb.getTradeNumber()%></td>
						<td nowrap class="tdc"><%=trb.getBuyuserid()%></td>
						<td nowrap class="tdc"><%=trb.getSaleuserid()%></td>
						<td nowrap class="tdc"><%=trb.getTradeTime()%></td>
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