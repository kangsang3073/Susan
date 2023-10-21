<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--             <div id="layoutSidenav_nav"> -->
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <a class="nav-link" href="${pageContext.request.contextPath}/admin">
                                <div class="sb-nav-link-icon"><i class="fa fa-user"></i></div>
                                계정 관리
                            </a>
                            <a class="nav-link" href="${pageContext.request.contextPath}/main">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-bar"></i></div>
                                관리 현황
                            </a>
                            <a class="nav-link" href="${pageContext.request.contextPath}/guest">
                                <div class="sb-nav-link-icon"><i class="fas fa-address-card"></i></div>
                                고객 관리
                            </a>
                            <a class="nav-link" href="${pageContext.request.contextPath}/parcel">
                                <div class="sb-nav-link-icon"><i class="fa fa-truck"></i></div>
                                택배 관리
                            </a>
                            <a class="nav-link" href="${pageContext.request.contextPath}/store">
                                <div class="sb-nav-link-icon"><i class="fas fa-cloud-download-alt"></i></div>
                                구매 관리
                            </a>
                            <a class="nav-link" href="${pageContext.request.contextPath}/sale">
                                <div class="sb-nav-link-icon"><i class="fas fa-cloud-upload-alt"></i></div>
                                판매 관리
                            </a>
                        </div>
                    </div>
<!--                     <div class="sb-sidenav-footer"> -->
<!--                         <div class="small">Logged in as:</div> -->
<!--                         Start Bootstrap -->
<!--                     </div> -->
                </nav>
<!--             </div> -->
</body>
</html>