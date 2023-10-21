
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1번가 수산 택배 관리</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="../resources/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"></script>
</head>
    <body class="sb-nav-fixed">
    <jsp:include page="../main/top.jsp" /> 
        <div id="layoutSidenav">
        	<div id="layoutSidenav_nav">
         <jsp:include page="../main/side.jsp" />
         	</div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">택배 관리</h1>
						<hr>
                        <div class="card mb-4">
                            <div class="card-header">
<!--                             <div id="productionselect_search"> -->
											<form action="${pageContext.request.contextPath}/parcel" method="GET">
		                          				<i class="fas fa-table me-1">택배 정보 조회</i>
	                               				고객 정보 조회<br>
	                               				<hr>
												<label>받는분 이름 : </label>
												<input type="text" name="getName" id="getName" value="">
												<label>받는분 번호 : </label>
												<input type="text" name="getNum" id="getNum" value="">
												<label>구매 기간 : </label>
												<input type="date" name="sdate" id="sdate" value="">
												-<input type="date" name="edate" id="edate" value="">
												<input type="submit" class="btn btn-primary" id="IconButton6" value="조회">
											</form>
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                택배 정보
                                <input type="button" class="btn btn-primary" id="IconButton2" value="신규등록" onclick="insert()">
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>받는분성명</th>
                                            <th>받는분전화번호</th>
                                            <th>받는분주소</th>
                                            <th>받는분기타연락처</th>
                                            <th>보내는분성명</th>
                                            <th>보내는분전화번호</th>
                                            <th>보내는분주소</th>
                                            <th>내품명</th>
                                            <th>작성날짜</th>
                                            <th>비고</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:choose>
                                    	<c:when test="${empty parcelList }">
                                    		<tr>
                                    			<td align="center">데이터가 없습니다.</td>
                                    			<td align="center">데이터가 없습니다.</td>
                                    			<td align="center">데이터가 없습니다.</td>
                                    			<td align="center">데이터가 없습니다.</td>
                                    			<td align="center">데이터가 없습니다.</td>
                                    			<td align="center">데이터가 없습니다.</td>
                                    			<td align="center">데이터가 없습니다.</td>
                                    			<td align="center">데이터가 없습니다.</td>
                                    			<td align="center">데이터가 없습니다.</td>
                                    			<td align="center">데이터가 없습니다.</td>
                                    		</tr>
                                    	</c:when>
                                    	<c:when test="${!empty parcelList }">
                                    		<c:forEach var="parcel" items="${parcelList}">
                                    		<tr>
                                            	<td class="getName ">${parcel.getName }</td>
                                            	<td class="getNum ">${parcel.getNum }</td>
                                            	<td class="getAddr">${parcel.getAddr}</td>
                                            	<td class="getNum2 ">${parcel.getNum2 }</td>
                                            	<td class="sendName ">${parcel.sendName }</td>
                                            	<td class="sendNum ">${parcel.sendNum }</td>
                                            	<td class="sendAddr">${parcel.sendAddr2}</td>
                                            	<td class="menu">${parcel.menu}</td>
                                            	<td class="parcelDate">${parcel.parcelDate}</td>
                                            	<td class="num">
                                            	<input type="button" class="btn btn-primary" id="IconButton2" name="num" value="수정" onclick="update('${parcel.num}');">
                                            	<input type="button" class="btn btn-primary" id="IconButton2" name="num" value="삭제" 
                                            			onclick="location.href='${pageContext.request.contextPath}/parcel/deletePro?num=${parcel.num}'">
                                            	</td>
                                        	</tr>
                                    		</c:forEach>
                                    	</c:when>
                                    </c:choose>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
					<jsp:include page="../main/footer.jsp" />
                </footer>
            </div>
        </div>
		<script type="text/javascript">	   
			  function insert() 
			  { 
			   window.name = "insert"; 
			   openWin = window.open("${pageContext.request.contextPath}/parcel/insert", 
			            "childForm", "width=600, height=300,top=300, left=300, resizable = no, scrollbars = no");   
			  }
			  
			function update(num) {
				var _width = '600';
				var _height = '300';
				var _left = Math.ceil((window.screen.width - _width) / 2);
				var _top = Math.ceil((window.screen.height - _height) / 2);
				let popOption = 'width='+ _width+ ', height='+ _height+ ', left='+ _left+ ', top='+ _top;
				window.open(
				"${pageContext.request.contextPath}/parcel/update?num="+num,
				"1번가 수산",popOption);
				}
			
		</script>
		
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="../resources/js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"></script>
        <script src="../resources/js/datatables-simple-demo.js"></script>
    </body>
</html>