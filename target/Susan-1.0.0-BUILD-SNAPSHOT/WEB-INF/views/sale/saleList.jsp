<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1번가 수산 판매 관리</title>
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
                        <h1 class="mt-4">판매 관리</h1>
						<hr>
                        <div class="card mb-4">
                            <div class="card-header">
<!--                             <div id="productionselect_search"> -->
											<form action="${pageContext.request.contextPath}/sale" method="GET">
                            				<i class="fas fa-table me-1">판매 정보 조회</i>
                               				판매 정보 조회<br>
                               				<hr>
												<label>품목 : </label>
												<input type="text" name="menu" id="menu" value="">
												<label>결제 : </label>
												<select name="payment" id="payment">
													<option value="" selected="selected">선택</option>
													<option value="현금">현금</option>
													<option value="이체">이체</option>
													<option value="카드">카드</option>
												</select>
<!-- 												<input type="text" name="payment" id="payment" value=""> -->
												<label>판매 기간 : </label>
												<input type="date" name="sdate" id="sdate" value="">
												-<input type="date" name="edate" id="edate" value="">
												<input type="submit" class="btn btn-primary" id="IconButton6" value="조회">
											</form>
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1">판매 정보 조회</i>
                                판매 정보
                                <input type="button" class="btn btn-primary" id="IconButton2" value="엑셀다운로드">
                                <input type="button" class="btn btn-primary" id="IconButton2" value="신규등록" onclick="insert()">
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
<!--                                         	<th><lable><input type="checkbox" name="codeId" id="checkall"></lable></th> -->
                                            <th>품목</th>
                                            <th>수량</th>
                                            <th>판매 금액</th>
                                            <th>총 금액</th>
                                            <th>결제</th>
                                            <th>판매 일</th>
                                            <th>비고</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                    <c:choose>
                                    	<c:when test="${empty saleList }">
                                    		<tr>
<!--                                     			<td align="center">데이터가 없습니다.</td> -->
                                    			<td align="center">데이터가 없습니다.</td>
                                    			<td align="center">데이터가 없습니다.</td>
                                    			<td align="center">데이터가 없습니다.</td>
                                    			<td align="center">데이터가 없습니다.</td>
                                    			<td align="center">데이터가 없습니다.</td>
                                    			<td align="center">데이터가 없습니다.</td>
                                    			<td align="center">데이터가 없습니다.</td>
                                    		</tr>
                                    	</c:when>
                                    	<c:when test="${!empty saleList }">
                                    		<c:forEach var="sale" items="${saleList}">
                                    		<tr>
<!--                                     			<td><input type="checkbox" name="codeId" id="check"></td> -->
                                            	<td class="menu">${sale.menu}</td>
                                            	<td class="qty1">${sale.qty1}</td>
                                            	<td class="salePrice">${sale.salePrice}</td>
                                            	<td class="salePrice">${sale.salePrice*sale.qty}</td>
                                            	<td class="payment">${sale.payment}</td>
                                            	<td class="saleDate">${sale.saleDate}</td>
                                            	<td class="num">
                                            	<input type="button" class="btn btn-primary" id="IconButton2" name="num" value="수정" onclick="update('${sale.num}');">
                                            	<input type="button" class="btn btn-primary" id="IconButton2" name="num" value="삭제" 
                                            			onclick="location.href='${pageContext.request.contextPath}/sale/deletePro?num=${sale.num}'">
                                            	</td>
                                        	</tr>
                                        	  <c:set var="total" value="${total + sale.salePrice*sale.qty}" />
                                    		</c:forEach>
                                    	</c:when>
                                    </c:choose>
                                    </tbody>
                                </table>
                                <div>
                                총금액 : 
                                <c:out value="${total }"></c:out>
                                </div>
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
			   openWin = window.open("${pageContext.request.contextPath}/sale/insert", 
			            "childForm", "width=600, height=300,top=300, left=300, resizable = no, scrollbars = no");   
			  }
			  
			function update(num) {
				var _width = '600';
				var _height = '300';
				var _left = Math.ceil((window.screen.width - _width) / 2);
				var _top = Math.ceil((window.screen.height - _height) / 2);
				let popOption = 'width='+ _width+ ', height='+ _height+ ', left='+ _left+ ', top='+ _top;
				window.open(
				"${pageContext.request.contextPath}/sale/update?num="+num,
				"1번가 수산",popOption);
				}
			
		</script>
		
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="../resources/js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"></script>
        <script src="../resources/js/datatables-simple-demo.js"></script>
    </body>
</html>