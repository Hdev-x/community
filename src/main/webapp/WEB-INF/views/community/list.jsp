<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>Community - GGUEK Admin</title>
<c:import url="/WEB-INF/views/temp/head_css.jsp" />
<style>
/* 게시판 전용 추가 스타일 */
.table thead th {
	background-color: #f8f9fc;
	text-transform: uppercase;
	font-size: 0.85rem;
	letter-spacing: 0.05em;
}

.star-gold {
	color: #f39c12;
}

.title-link {
	text-decoration: none;
	color: #4e73df;
	font-weight: 600;
}

.title-link:hover {
	text-decoration: underline;
}

tr.row-hover:hover {
	background-color: #f8f9fc;
	cursor: pointer;
}
</style>
</head>
<body>
	<div class="d-flex" id="wrapper">
		<c:import url="/WEB-INF/views/temp/sidebar.jsp" />

		<div id="page-content-wrapper">
			<c:import url="/WEB-INF/views/temp/topbar.jsp" />

			<div class="container-fluid py-4">
				<div
					class="d-sm-flex align-items-center justify-content-between mb-4">
					<h1 class="h3 mb-0 text-gray-800 font-weight-bold">
						<i class="fas fa-comments mr-2"></i>COMMUNITY
					</h1>
					<div>
						<a href="${pageContext.request.contextPath}/community/create"
							class="btn btn-dark shadow-sm"> <i
							class="fas fa-pen fa-sm text-white-50 mr-1"></i> 글쓰기
						</a>
					</div>
				</div>

				<div class="card shadow mb-4">
					<div
						class="card-header py-3 d-flex justify-content-between align-items-center bg-dark">
						<h6 class="m-0 font-weight-bold text-light">자유게시판</h6>
						<span class="badge badge-light">Total: ${commList.size()}</span>
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" width="100%" cellspacing="0">
								<colgroup>
									<col style="width: 8%;" />
									<col style="width: 12%;" />
									<col style="width: 50%;" />
									<col style="width: 15%;" />
									<col style="width: 15%;" />
								</colgroup>
								<thead>
									<tr class="text-center">
										<th>No</th>
										<th>중요도</th>
										<th>제목</th>
										<th>작성자</th>
										<th>날짜</th>
									</tr>
								</thead>
								<tbody>
									<c:choose>
										<c:when test="${not empty list}">
											<c:forEach var="item" items="${list}">
												<tr class="row-hover text-center"
													onclick="location.href='${pageContext.request.contextPath}/community/detail?num=${item.commNo}'">

													<%-- 1. 번호 --%>
													<td>${item.commNo}</td>

													<%-- 2. 중요도 (이 부분만 남기고 기존 별점 td는 지우세요!) --%>
													<td class="text-center text-warning font-weight-bold">
														<c:forEach begin="1" end="${item.commStar}">★</c:forEach>
													</td>

													<%-- 3. 제목 --%>
													<td class="text-left px-4"><a
														href="${pageContext.request.contextPath}/community/detail?num=${item.commNo}"
														class="title-link"> ${item.commTitle} </a></td>

													<%-- 4. 작성자 --%>
													<td><span class="text-muted small">${item.commName}</span></td>

													<%-- 5. 날짜 --%>
													<td class="text-muted small"><fmt:formatDate
															value="${item.commTime}" pattern="yyyy-MM-dd" /></td>
												</tr>
											</c:forEach>
										</c:when>
										<c:otherwise>
											<tr>
												<td colspan="5" class="py-5 text-center text-muted">
													등록된 게시글이 없습니다. 첫 번째 글의 주인공이 되어보세요!</td>
											</tr>
										</c:otherwise>
									</c:choose>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<c:import url="/WEB-INF/views/temp/footer_script.jsp" />
</body>
</html>