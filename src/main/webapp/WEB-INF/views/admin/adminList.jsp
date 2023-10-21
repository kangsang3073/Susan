<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1번가 수산 계정 관리</title>
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
                        <h1 class="mt-4">계정 관리</h1>
						<hr>
<!--                         <div class="card mb-4"> -->
<!--                             <div class="card-header"> -->
<%-- 											<form action="${pageContext.request.contextPath}/admin" method="GET"> --%>
<!-- 		                          				<i class="fas fa-table me-1">계정 정보 조회</i> -->
<!-- 	                               				계정 정보 조회<br> -->
<!-- 	                               				<hr> -->
<!-- 												<label>계정 : </label> -->
<!-- 												<input type="text" name="name" id="name" value=""> -->
<!-- 												<input type="submit" class="btn btn-primary" id="IconButton6" value="조회"> -->
<!-- 											</form> -->
<!--                             </div> -->
<!--                         </div> -->
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                계정 정보
                                <input type="button" class="btn btn-primary" id="IconButton2" value="신규등록" onclick="insert()">
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>계정</th>
                                            <th>비고</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:choose>
                                    	<c:when test="${empty employeeList}">
                                    		<tr>
                                    			<td align="center">데이터가 없습니다.</td>
                                    			<td align="center">데이터가 없습니다.</td>
                                    		</tr>
                                    	</c:when>
                                    	<c:when test="${!empty employeeList}">
                                    		<c:forEach var="emp" items="${employeeList}">
                                    		<tr>
                                            	<td class="id">${emp.id}</td>
                                            	<td class="num">
                                            	<input type="button" class="btn btn-primary" id="IconButton2" name="num" value="수정" onclick="update('${emp.num}');">
                                            	<input type="button" class="btn btn-primary" id="IconButton2" name="num" value="삭제" 
                                            			onclick="location.href='${pageContext.request.contextPath}/admin/deletePro?num=${emp.num}'">
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
			   openWin = window.open("${pageContext.request.contextPath}/admin/insert", 
			            "childForm", "width=600, height=300,top=300, left=300, resizable = no, scrollbars = no");   
			  }
			  
			function update(num) {
				var _width = '600';
				var _height = '300';
				var _left = Math.ceil((window.screen.width - _width) / 2);
				var _top = Math.ceil((window.screen.height - _height) / 2);
				let popOption = 'width='+ _width+ ', height='+ _height+ ', left='+ _left+ ', top='+ _top;
				window.open(
				"${pageContext.request.contextPath}/admin/update?num="+num,
				"1번가 수산",popOption);
				}
			
		</script>
		
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="../resources/js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"></script>
        <script src="../resources/js/datatables-simple-demo.js"></script>
    </body>
</html>