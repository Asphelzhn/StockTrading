
<%@page import="java.util.List"%>
<%@page import="com.stock.bean.StockInfoBean"%>
<%@page import="com.stock.bean.UserInfoBean"%>
<%@page contentType="text/html;charset=GBK"%>
<%
	String path = request.getContextPath();
	UserInfoBean uib = (UserInfoBean) session.getAttribute("user");
%>
<!DOCTYPE html>
<html>
<head>
<title>ҵ��˵�--��Ʊ����ϵͳ</title>
<link rel="stylesheet" href="<%=path%>/assets/css/styles.css" />
</head>
<body>
	<form method="post" action="">
		<div id="mainlist">
			<h1>��Ʊ����ϵͳ</h1>
			<div class="mainlist">
				<h1>
					<span id="sp">
						<span id="sp">
							��ӭ����<%=uib.getName()%>&nbsp;&nbsp;&nbsp;&nbsp;
							<a href="<%=path%>/servlet/LogoutServlet">�˳�ϵͳ</a>
					</span>
					</span>
				</h1>
				<div>
					<table width="250" border="0" id="con1">
						<tr>
							<td width="117" nowrap class="tdr"></td>
							<td width="117" nowrap class="tdl"></td>
						</tr>
						<tr>
							<td colspan="2" nowrap class="tdc">�����˻��ʽ�</td>
						</tr>
						<tr>
							<td colspan="2" nowrap class="tdc"><%=uib.getAccountBalance()%>Ԫ</td>
						</tr>
						<tr>
							<td colspan="2" nowrap class="tdc">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="2" nowrap class="tdc">
								<span id="sp">��ѡ��ҵ������</span>
							</td>
						</tr>
						<tr>
							<td colspan="2" nowrap class="tdc">&nbsp;</td>
						</tr>
						
						<tr>
							<td colspan="2" nowrap class="tdc">
								<a href="<%=path%>/servlet/PricePageQueryServlet">ʵʱ�ɼ۲�ѯ</a>
							</td>
						</tr>
						<tr>
							<td colspan="2" nowrap class="tdc">
								<a href="<%=path%>/chargeAccount.jsp">�ʻ���ֵ</a>
							</td>
						</tr>
						<tr>
							<td colspan="2" nowrap class="tdc">
								<a href="<%=path%>/servlet/TradeRecordServlet">��Ʊ���׼�¼��ѯ</a>
							</td>
						</tr>
						<tr>
							<td colspan="2" nowrap class="tdc">
								<a href="<%=path%>/servlet/ManageStockServlet">��Ʊ��Ϣ����</a>
							</td>
						</tr>
						<tr>
							<td colspan="2" nowrap class="tdc">&nbsp;</td>
						</tr>

					</table>
					<table width="550" border="0" id="con2">
						<tr>
							<td colspan="6" nowrap class="tdc">
								<span id="sp">�����еĹ�Ʊ��Ϣ</span>
							</td>
						</tr>
						<tr>
							<td width="86" nowrap class="tdc">��Ʊ����</td>
							<td width="86" nowrap class="tdc">��Ʊ����</td>
							<td width="86" nowrap class="tdc">��������</td>
							<td width="86" nowrap class="tdc">���µ���</td>
							<td width="86" nowrap class="tdc">��ֵ���</td>
							<td width="86" nowrap class="tdc">��ز���</td>
						</tr>
						<%
						List<StockInfoBean> list = (List<StockInfoBean>) request.getAttribute("ownlist"); //��ѯ�ļ�¼��Ϣ
						if (list != null) {
							for (int i = 0; i < list.size(); i++) { // �Լ�¼��Ϣ��ѭ����ʾ
								StockInfoBean si = (StockInfoBean) list.get(i);
								String salelink = path + "/saleStock.jsp?stockid="
										+ si.getStockid();
					%>
						<tr>
						<td width="86" nowrap class="tdc"><%=si.getStockid()%></td>
						<td width="86" nowrap class="tdc"><%=si.getStockName()%></td>
						<td width="86" nowrap class="tdc"><%=si.getStockNum()%></td>
						<td width="86" nowrap class="tdc"><%=si.getStockPrice()%></td>
						<td width="86" nowrap class="tdc"><%=Double.parseDouble(si.getStockPrice())*Double.parseDouble(si.getStockNum())%></td>
						<td width="86" nowrap class="tdc"><a href="<%=salelink%>">����</a></td>
					</tr>
					<%
						}
						}
					%>
					</table>
				</div>
			</div>
		</div>
	</form>
	
</body>
</html>