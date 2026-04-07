<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>학과 목록</title>
    <c:import url="/WEB-INF/views/temp/head_css.jsp" />
</head>
<body>
    <div class="d-flex" id="wrapper">
        <c:import url="/WEB-INF/views/temp/sidebar.jsp" />

        <div id="page-content-wrapper">
            <c:import url="/WEB-INF/views/temp/topbar.jsp" />

            <div class="container-fluid">
                <h1 class="mt-4">내용이 들어가는 곳</h1>
                <p>여기에 학과 테이블이나 폼을 넣으시면 됩니다.</p>
            </div>
        </div>
    </div>
    
    <c:import url="/WEB-INF/views/temp/footer_script.jsp" />
</body>
</html>