<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1번가 수산</title>
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
<link href="../resources/css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"></script>
<script type="text/javascript" src="../resources/js/jquery-3.6.3.js"></script>  
</head>
    <body class="sb-nav-fixed">
    <jsp:include page="top.jsp" /> 
        <div id="layoutSidenav">
        	<div id="layoutSidenav_nav">
         <jsp:include page="side.jsp" />
         	</div>
         <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">1번가 수산</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">관리자 페이지</li>
                        </ol>
                        <div class="row">
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-primary text-white mb-4">
                                    <div class="card-body">고객 관리</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="${pageContext.request.contextPath}/guest">바로가기</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-warning text-white mb-4">
                                    <div class="card-body">택배 관리</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="${pageContext.request.contextPath}/parcel">바로가기</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-success text-white mb-4">
                                    <div class="card-body">구매 관리</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="${pageContext.request.contextPath}/store">바로가기</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-danger text-white mb-4">
                                    <div class="card-body">판매 관리</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="${pageContext.request.contextPath}/sale">바로가기</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area me-1"></i>
                                        판매 랭킹
                                    </div>
                                    <div class="card-body"><canvas id="myChart" width="100%" height="50"></canvas></div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                        판매 현황
                                    </div>
                                    <div class="card-body"><canvas id="mySales" width="100%" height="50"></canvas></div>
                                </div>
                            </div>
                        </div>
<!--                         <div class="card mb-4"> -->
<!--                             <div class="card-header"> -->
<!--                                 <i class="fas fa-table me-1"></i> -->
<!--                                 판매 내역 -->
<!--                             </div> -->
<!--                             <div class="card-body"> -->
<!--                                 <table id="datatablesSimple"> -->
<!--                                     <thead> -->
<!--                                         <tr> -->
<!--                                             <th>종류</th> -->
<!--                                             <th>수량</th> -->
<!--                                             <th>단위</th> -->
<!--                                             <th>단가</th> -->
<!--                                         </tr> -->
<!--                                     </thead> -->
<!--                                 </table> -->
<!--                             </div> -->
<!--                         </div> -->
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
					<jsp:include page="footer.jsp" />
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" ></script>
        <script src="../resources/js/scripts.js"></script>
<!--         <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script> -->
<!--         <script src="assets/demo/chart-area-demo.js"></script> -->
<!--         <script src="assets/demo/chart-bar-demo.js"></script> -->

		<!-- 수주왕 그래프 -->
		<script src="../resources/js/contractchart.js"></script>
		<script src="../resources/js/sales.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
		
		<!-- jQuery -->
		<script type="text/javascript" src="../resources/js/jquery-3.6.3.js"></script>  
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>

        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" ></script>
        <script src="../resources/js/datatables-simple-demo.js"></script>
</body>
</html>