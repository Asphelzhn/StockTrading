
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
<title>ʵʱ�ɼ۲�ѯ--��Ʊ����ϵͳ</title>
<link rel="stylesheet" href="<%=path%>/assets/css/styles.css" />
</head>
<body>
	<form method="post" action="<%=path%>/servlet/SearchQueryServlet">
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
						<td colspan="4" nowrap class="tdc"><span id="sp">ʵʱ�ɼ۲�ѯ</span>
						</td>
					</tr>
					<tr>
						<td colspan="4" nowrap class="tdc"><input type="text"
							class="maintext" name="queryKey" id="queryKey"
							placeholder="�������Ʊ���ơ�ƴ����д������ѯ" /> <input type="submit"
							class="sm" value="��ѯ" /></td>
					</tr>
					<tr>
						<td nowrap class="tdc">&nbsp;</td>
						<td nowrap class="tdc">&nbsp;</td>
						<td nowrap class="tdc">&nbsp;</td>
						<td nowrap class="tdc">&nbsp;</td>
					</tr>
					<tr>
						<td width="146" nowrap class="tdc"><span id="sp">��Ʊ����</span>
						</td>
						<td width="146" nowrap class="tdc"><span id="sp">��Ʊ����</span>
						</td>
						<td width="146" nowrap class="tdc"><span id="sp">���µ���</span>
						</td>
						<td width="147" nowrap class="tdc"><span id="sp">��ز���</span>
						</td>
					</tr>
					<%
						Integer pageTotal = (Integer) request.getAttribute("pageTotal"); // �ܵ�ҳ��
						List<StockInfoBean> list = (List<StockInfoBean>) request
								.getAttribute("list"); //��ѯ�ļ�¼��Ϣ
						if (list != null) {
							for (int i = 0; i < list.size(); i++) { // �Լ�¼��Ϣ��ѭ����ʾ
								StockInfoBean si = (StockInfoBean) list.get(i);
								String buylink = path + "/buyStock.jsp?stockid="
										+ si.getStockid();
					%>
					<tr>
						<td nowrap class="tdc"><%=si.getStockid()%></td>
						<td nowrap class="tdc"><%=si.getStockName()%></td>
						<td nowrap class="tdc"><%=si.getStockPrice()%></td>
						<td nowrap class="tdc"><a href="<%=buylink%>">����</a></td>
					</tr>
					<%
						}
						}
					%>
				</table>
				<br /> <br />
				<%
					// ��ʾҳ��
					if (pageTotal != null) {
						out.print("<span id=\"sp\">ҳ����");
						for (int i = 1; i <= pageTotal; i++) { //�����ܵ�ҳ����ѭ����ʾ
							out.println("<a href='" + path
									+ "/servlet/PricePageQueryServlet?page=" + i + "'>"
									+ i + "</a>&nbsp;");
						}
						out.print("</span>");
					}
				%>
			</div>
		</div>
	</form>
	
</body>
</html>