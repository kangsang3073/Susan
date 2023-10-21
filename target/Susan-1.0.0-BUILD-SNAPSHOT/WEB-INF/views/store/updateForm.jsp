<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1번가 수산 구매 수정</title>
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
<link href="../resources/css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"></script>
</head>
<body>
	<div class="contentbody">
		<!--  본문 내용 시작 -->

		<div id="wrap">
			<h3>구매 수정</h3>
			<form action="${pageContext.request.contextPath}/store/updatePro" id="update" method="post">
				<fieldset>
					<div class="update">
						<input type="hidden" name="num" class="num" value="${storeUpdate.num }">
						<label>업체명</label> 
						<input type="text" name="account" class="account" value="${storeUpdate.account }">
						<label>품목</label> 
						<input type="text" name="menu" class="menu" value="${storeUpdate.menu }">
						<br>
						<label>수량</label> 
						<input type="text" name="qty" class="qty" value="${storeUpdate.qty }">
<!-- 						<label>단위</label> -->
						<select name="unit" id="unit" value="${storeUpdate.unit }">
							<option value="KG">KG</option>
							<option value="마리">마리</option>
						</select><br>
						<label>가격</label>
						<input type="text" name="storePrice" class="storePrice" value="${storeUpdate.storePrice }"><br> 
				</fieldset>
				<div id="button" style="text-align: center;">
					<input type="submit" value="수정" class="btn btn-primary">
					<input type="reset" value="취소" class="btn btn-primary" onclick="window.close()">
				</div>
			</form>
		</div>

		<!--  본문내용 끝 -->
	</div>
</body>
</html>