<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1번가 수산 고객 추가</title>
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
<link href="../resources/css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	function sample4_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						var fullRoadAddr = data.roadAddress;
						var extraRoadAddr = '';

						if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
							extraRoadAddr += data.bname;
						}

						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraRoadAddr += (extraRoadAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}

						if (extraRoadAddr !== '') {
							extraRoadAddr = ' (' + extraRoadAddr + ')';
						}

						document.getElementById('sample4_postcode').value = data.zonecode;
						document.getElementById('sample4_roadAddress').value = fullRoadAddr;
						document.getElementById('guide').innerHTML = '';
						document.getElementById('sample4_detailAddress')
								.focus();
					}
				}).open();
	}
	
	function sample5_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						var fullRoadAddr = data.roadAddress;
						var extraRoadAddr = '';

						if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
							extraRoadAddr += data.bname;
						}

						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraRoadAddr += (extraRoadAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}

						if (extraRoadAddr !== '') {
							extraRoadAddr = ' (' + extraRoadAddr + ')';
						}

						document.getElementById('sample5_postcode').value = data.zonecode;
						document.getElementById('sample5_roadAddress').value = fullRoadAddr;
						document.getElementById('guide').innerHTML = '';
						document.getElementById('sample5_detailAddress')
								.focus();
					}
				}).open();
	}
</script>
</head>
<body>
	<div class="contentbody">
		<!--  본문 내용 시작 -->

		<div id="wrap">
			<h3>고객 등록</h3>
			<form action="${pageContext.request.contextPath}/parcel/insertPro" id="insert" method="post">
				<fieldset>
					<div class="insert">
						<label>받는분성명</label> 
						<input type="text" name="getName" class="getName">
						<br>
						<label>받는분전화번호</label> 
						<input type="text" name="getNum" class="getNum"><br> 
						<label>받는분주소</label>
							<div>
							<input type="text" id="sample4_postcode" name="getPostNum" style="float: left" class="getPostNum" placeholder="우편번호">
							<input type="button" class="btn btn-primary" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
							</div>
							<input type="text" id="sample4_roadAddress" class="getAddr" placeholder="도로명주소" name="getAddr" style="width: 530px;">
							<span id="guide" style="color: #999; display: none"></span> <br>
							<input type="text" id="sample4_detailAddress" class="getAddr2" size="60" placeholder="상세주소" name="getAddr2">
							<br>
						<label>받는분기타연락처</label> 
						<input type="text" name="getNum2" class="getNum2"><br>
						<label>보내는분성명</label> 
						<input type="text" name="sendName" class="sendName"><br>
						<label>보내는분전화번호</label> 
						<input type="text" name="sendNum" class="sendNum"><br>
						<label>보내는분주소</label>
							<div>
							<input type="text" id="sample5_postcode" name="sendPostNum" style="float: left;" class="sendPostNum" placeholder="우편번호">
							<input type="button" class="btn btn-primary" onclick="sample5_execDaumPostcode()" value="우편번호 찾기"><br>
							</div>
							<input type="text" id="sample5_roadAddress" class="sendAddr" placeholder="도로명주소" name="sendAddr" style="width: 530px;">
							<span id="guide" style="color: #999; display: none"></span> <br>
							<input type="text" id="sample5_detailAddress" class="sendAddr2" size="60" placeholder="상세주소" name="sendAddr2">
							<br>
						<label>내품명</label> 
						<input type="text" name="menu" class="menu" ><br>
					</div>
				</fieldset>
				<div id="button" style="text-align: center;">
					<input type="submit" value="등록" class="btn btn-primary">
					<input type="reset" value="취소" class="btn btn-primary">
				</div>
			</form>
		</div>

		<!--  본문내용 끝 -->
	</div>
</body>
</html>