
<%@ page contentType="text/html;charset=GBK"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<title>ע��ҳ��--��Ʊ����</title>
<link rel="stylesheet" href="assets/css/styles.css" />
<script type="text/javascript" src="<%=path%>/assets/js/register.js"></script>
</head>
<body>
	<form method="post" action="RegisterServlet">
		<div id="umain">
			<h1>��Ʊ����ϵͳ</h1>
			<div class="register">
				<h1>��ӭ��ע���˻�</h1>
				<table width="100%" border="0">
					<tr>
						<td nowrap class="tdr">*�û��˻���</td>
						<td class="tdl" nowrap><input type="text" id="userid"
							name="userid"></td>
						<td nowrap>�����</td>
					</tr>
					<tr>
						<td nowrap class="tdr">*���룺</td>
						<td class="tdl" nowrap><input type="password" id="password"
							name="password"></td>
						<td nowrap>�����</td>
					</tr>
					<tr>
						<td nowrap class="tdr">*ȷ�����룺</td>
						<td class="tdl" nowrap><input type="password" id="passwordag"
							name="passwordag"></td>
						<td nowrap>�����</td>
					</tr>
					<tr>
						<td width="36%" nowrap class="tdr">*������</td>
						<td class="tdl" width="40%" nowrap><input type="text"
							id="name" name="name"></td>
						<td width="24%" nowrap>�����</td>
					</tr>
					<tr>
						<td nowrap class="tdr">�Ա�</td>
						<td class="tdl" nowrap><label>&nbsp;&nbsp;<input
								type="radio" name="sex" value="1"> ��&nbsp;&nbsp; <input
								type="radio" name="sex" value="2"> Ů
						</label></td>
						<td nowrap>&nbsp;</td>
					</tr>
					<tr>
						<td nowrap class="tdr">�������£�</td>
						<td nowrap class="tdl"><label> &nbsp;&nbsp;<select
								name="birthdayYear">
									<option value="1990">1990</option>
									<option value="1991">1991</option>
									<option value="1992">1992</option>
									<option value="1993">1993</option>
									<option value="1994">1994</option>
									<option value="1995">1995</option>
									<option value="1996">1996</option>
									<option value="1997">1997</option>
									<option value="1998">1998</option>
									<option value="1999">1999</option>
									<option value="2000">2000</option>
							</select> �� <select name="birthdayMonth">
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
							</select> ��
						</label></td>
						<td nowrap>&nbsp;</td>
					</tr>
					<tr>
						<td nowrap class="tdr">*�������䣺</td>
						<td nowrap class="tdl"><input type="text" id="email"
							name="email"></td>
						<td nowrap>�����</td>
					</tr>
					<tr>
						<td nowrap class="tdr">*�ֻ����룺</td>
						<td class="tdl" nowrap><input type="text" id="telephone"
							name="telephone"></td>
						<td nowrap>�����</td>
					</tr>
					<tr>
						<td colspan="3"><input type="submit" value="ע ��" onclick="return check()"></td>
					</tr>
				</table>

			</div>
		</div>
	</form>
	
</body>
</html>