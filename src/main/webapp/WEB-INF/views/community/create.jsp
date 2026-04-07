<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Create Post - GGUEK Admin</title>
<c:import url="/WEB-INF/views/temp/head_css.jsp" />

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
/* 글쓰기 페이지 전용 스타일 */
.card-header {
	background-color: rgb(41, 40, 43);
	color: white;
}

.form-label {
	font-weight: bold;
	color: rgb(33, 37, 40);
}

/* 별점 스타일 (라디오 버튼 숨기기 및 별 배치) */
.star-rating {
	display: flex;
	flex-direction: row-reverse;
	justify-content: flex-end;
	font-size: 2.2rem;
}

/* 실제 라디오 동그라미는 숨김 */
.star-rating input[type="radio"] {
	display: none !important;
}

/* 기본 별 색상 (회색) */
.star-rating label {
	color: #ddd;
	cursor: pointer;
	transition: all 0.2s;
	margin-bottom: 0;
	padding: 0 2px;
}

/* 마우스 호버 및 선택된 별 색상 (금색) */
.star-rating label:hover, .star-rating label:hover ~ label, .star-rating input:checked 
	~ label {
	color: #f39c12 !important;
}

/* 설명 텍스트 */
.star-text {
	font-size: 0.85rem;
	color: #858796;
	margin-top: 5px;
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
						<i class="fas fa-edit mr-2"></i>새 글 작성
					</h1>
				</div>

				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold">게시글 정보를 입력해주세요</h6>
					</div>
					<div class="card-body">
						<form action="${pageContext.request.contextPath}/community/create"
							method="post">

							<div class="mb-4">
								<label for="commTitle" class="form-label">제목</label> <input
									type="text" class="form-control" id="commTitle"
									name="commTitle" placeholder="제목을 입력하세요" required>
							</div>

							<div class="row">
								<div class="col-md-6 mb-4">
									<label for="commName" class="form-label">작성자</label> <input
										type="text" class="form-control" id="commName" name="commName"
										value="${sessionScope.dto.name}" required>
								</div>

								<div class="col-md-6 mb-4">
									<label class="form-label d-block">중요도 표시</label>
									<div class="star-rating">
										<input type="radio" id="star5" name="commStar" value="5" /> <label
											for="star5" title="5 stars"><i class="fas fa-star"></i></label>

										<input type="radio" id="star4" name="commStar" value="4" /> <label
											for="star4" title="4 stars"><i class="fas fa-star"></i></label>

										<input type="radio" id="star3" name="commStar" value="3" /> <label
											for="star3" title="3 stars"><i class="fas fa-star"></i></label>

										<input type="radio" id="star2" name="commStar" value="2" /> <label
											for="star2" title="2 stars"><i class="fas fa-star"></i></label>

										<input type="radio" id="star1" name="commStar" value="1"
											checked /> <label for="star1" title="1 star"><i
											class="fas fa-star"></i></label>
									</div>
									<div class="star-text">별을 클릭하여 중요도를 선택하세요.</div>
								</div>
							</div>

							<div class="mb-4">
								<label for="commContents" class="form-label">내용</label>
								<textarea class="form-control" id="commContents"
									name="commContents" rows="10" placeholder="내용을 상세히 입력해주세요"
									required></textarea>
							</div>

							<hr>

							<div class="text-right pb-3">
								<button type="reset" class="btn btn-secondary px-4 mr-2">다시
									작성</button>
								<button type="submit" class="btn btn-dark px-5 shadow-sm">게시글
									등록</button>
								<a href="${pageContext.request.contextPath}/community/list"
									class="btn btn-outline-dark px-4 ml-2">취소</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<c:import url="/WEB-INF/views/temp/footer_script.jsp" />
</body>
</html>