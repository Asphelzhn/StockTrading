
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

<script type="text/javascript" src="<%=path%>/assets/js/changeImg.js"></script>
<title>股票信息管理--股票交易系统</title>
<link rel="stylesheet" href="<%=path%>/assets/css/styles.css" />
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>


<body>
	<form method="post" action="<%=path %>/addStock.jsp">
		<div id="mainlist">
		<div class="jumbotron">
        <h1>股票趋势查询</h1>
   		 </div>
			<div class="mainlist">
				<h1>
					<span id="sp"> <a href="<%=path%>/servlet/MainServlet">返回主页</a>
						&nbsp;&nbsp;&nbsp;&nbsp;欢迎您：<%=uib.getName()%>&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="<%=path%>/servlet/LogoutServlet">退出系统</a>
					</span>
				</h1>
			</div>
            <%
                List<StockInfoBean> list = (List<StockInfoBean>) request
                        .getAttribute("list"); //查询的记录信息
                if (list != null) {
                    for (int i = 0; i < list.size(); i++) { // 对记录信息做循环显示
                        StockInfoBean si = (StockInfoBean) list.get(i);
                        String stock_id = si.getStockid();
                        String imgpath = "http://image.sinajs.cn/newchart/min/n/" + stock_id +".gif";
            %>

			<br /> 
			<div align="right">
						<button type="button" class="btn btn-success" onclick="changeImg_min(<%=stock_id%>);">分时</button>
						<button type="button" class="btn btn-success" onclick="changeImg_day(<%=stock_id%>);">日</button>
						<button type="button" class="btn btn-primary" onclick="changeImg_week(<%=stock_id%>);">周</button>
						<button type="button" class="btn btn-primary" onclick="changeImg_month(<%=stock_id%>);">月</button>
                        <button type="button" class="btn btn-primary" onclick="changeImg_year(<%=stock_id%>);">年</button>
			</div>
			<br />


            <tr>
                <img alt="股票日线图" src=<%=imgpath%> align="middle" id="chart">
            </tr>
            <%
                    }
                }
            %>

		</div>
	</form>
	
</body>
</html>