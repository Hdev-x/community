<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>GGUEK Admin System</title>
    <c:import url="/WEB-INF/views/temp/head_css.jsp" />
    <style>
        /* 로그인 전 중앙 배치를 위한 스타일 */
        .landing-wrapper {
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            background: linear-gradient(135deg, rgb(255, 255, 255) 0%, rgb(217, 228, 255) 100%);
        }
        .main-logo {
            font-size: 3rem;
            font-weight: 800;
            color: #2c3e50;
            margin-bottom: 2rem;
            text-shadow: 1px 1px 2px rgba(0,0,0,0.1);
        }
        .btn-main {
            padding: 15px 45px;
            font-size: 1.25rem;
            font-weight: 600;
            border-radius: 50px;
            transition: all 0.3s;
            box-shadow: 0 5px 5px rgba(0,0,0,0.1);
        }
        .btn-main:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 10px rgba(0,0,0,0.2);
        }
    </style>
</head>
<body>

<c:choose>
    <%-- [CASE 1] 로그인 전: 깔끔한 중앙 버튼 스타일 (랜딩 페이지) --%>
    <c:when test="${empty sessionScope.dto}">
        <div class="landing-wrapper text-center">
            <div class="main-logo">COMMUNIYT</div>
            <p class="text-muted mb-5">시스템에 접속하려면 로그인이 필요합니다.</p>
            
            <div class="d-flex gap-3 justify-content-center">
                <a href="${pageContext.request.contextPath}/member/login" class="btn btn-dark btn-main mx-2">Login</a>
                <a href="${pageContext.request.contextPath}/member/joins" class="btn btn-outline-dark btn-main mx-2">Join</a>
            </div>
        </div>
    </c:when>

    <%-- [CASE 2] 로그인 후: 사이드바가 있는 관리자 레이아웃 --%>
    <c:otherwise>
        <div class="d-flex" id="wrapper">
            <c:import url="/WEB-INF/views/temp/sidebar.jsp" />

            <div id="page-content-wrapper">
                <c:import url="/WEB-INF/views/temp/topbar.jsp" />

                <div class="container-fluid py-5">
                    <div class="row">
                        <div class="col-12">
                            <h1 class="font-weight-bold text-gray-800">Welcome back, ${sessionScope.dto.name}님!</h1>
                            <hr>
                        </div>
                    </div>
                    
                    <div class="row mt-4">
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">학과 관리</div>
                                            <a href="/department/list" class="h5 mb-0 font-weight-bold text-gray-800 text-decoration-none">목록 바로가기</a>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-university fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        </div>
                </div>
            </div>
        </div>
    </c:otherwise>
</c:choose>

    <c:import url="/WEB-INF/views/temp/footer_script.jsp" />
</body>
</html>