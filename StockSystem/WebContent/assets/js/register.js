
function check() {
	var userid = document.getElementById("userid").value;
	var password = document.getElementById("password").value;
	var passwordag = document.getElementById("passwordag").value;
	var name = document.getElementById("name").value;
	var sex = document.getElementsByName("sex");
	var email = document.getElementById("email").value;
	var telephone = document.getElementById("telephone").value;
	if (userid.length == 0) {
		alert("�������˺ţ�");
		return false;
	}
	if (password.length == 0) {
		alert("���������룡");
		return false;
	}
	if (passwordag.length == 0) {
		alert("������ȷ�����룡");
		return false;
	}
	if (name.length == 0) {
		alert("������������");
		return false;
	}
	if (sex[0].checked == false && sex[1].checked == false) {
		alert("��ѡ���Ա�");
		return false;
	}
	if (email.length == 0) {
		alert("������������䣡");
		return false;
	}
	if (telephone.length == 0) {
		alert("������绰���룡");
		return false;
	}
	if (password != passwordag) {
		alert("�����������벻һ�£�");
		return false;
	}
	if (!checkEmail(email)) {
		alert("�����������벻�Ϸ���");
		return false;
	}
	if (!checkTel(telephone)) {
		alert("�绰�������벻�Ϸ���");
		return false;
	}
}
function checkEmail(email) {
	var str = email;
	var Expression = /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
	var objExp = new RegExp(Expression);
	if (objExp.test(str) == true) {
		return true;
	} else {
		return false;
	}
}
function checkTel(tel) {
	var str = tel;
	var Expression = /((\d{11})|^((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$)/;
	var objExp = new RegExp(Expression);
	if (objExp.test(str) == true) {
		return true;
	} else {
		return false;
	}
}