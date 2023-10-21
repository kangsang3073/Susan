<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1번가 수산 고객 수정</title>
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
</script>
</head>
<body>
	<div class="contentbody">
		<!--  본문 내용 시작 -->

		<div id="wrap">
			<h3>고객 등록</h3>
			<form action="${pageContext.request.contextPath}/guest/updatePro" id="update" method="post">
				<fieldset>
					<div class="insert">
						<input type="hidden" name="num" class="num" value="${customerUpdate.num }">
						<label>이름</label> 
						<input type="text" name="name" class="name" value="${customerUpdate.name }">
						<br>
						<label>전화번호</label> 
						<input type="text" name="phoneNum" class="phoneNum" value="${customerUpdate.phoneNum }"><br> 
						<label>주소</label>
							<div>
							<input type="text" id="sample4_postcode" name="postNum" style="float: left;" class="postNum" value="${customerUpdate.postNum }">
							<input type="button" class="btn btn-primary" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
							</div>
							<input type="text" id="sample4_roadAddress" class="addr" name="addr" style="width: 530px;" value="${customerUpdate.addr }">
							<span id="guide" style="color: #999; display: none"></span> <br>
							<input type="text" id="sample4_detailAddress" class="addr2" size="60" name="addr2" value="${customerUpdate.addr2 }">
							<br>
					</div>
				</fieldset>
				<div id="button" style="text-align: center;">
					<input type="submit" value="수정" class="btn btn-primary">
					<input type="reset" value="취소" class="btn btn-primary">
				</div>
			</form>
		</div>

		<!--  본문내용 끝 -->
	</div>
</body>
</html>