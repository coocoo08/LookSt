<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-1.11.3.js"></script>

<style type="text/css">
.profileEdit_Btn {
	margin-left: 100px;
}

.pro_img_box {
	width: 300px;
	height: 300px;
	border-radius: 70%;
}

#profile_img {
	width: 300px;
	height: 300px;
	border-radius: 70%;
	object-fit: cover;
}

.feed_img {
	width: 100%;
	height: 400px;
	object-fit: cover;
	border-radius: 7%;
}

@media ( max-width : 576px;) {
}
</style>

<!-- <script type="text/javascript"> 
// 	$(document).ready(function(){
		
// 		let member_id = @database
		
// 		let showList = function (member_id) {
// 			$.ajax({
// 				type: 'GET', //요청 메서드
// 				url: '/lookst/sns/snsProfile?'+member_id+'_follwer',	// 요청 URI
// 				success: function (result) {		// 서버로부터 응답이 도착하면 호출될 함수
// 					$("#followerList").html(toHtml(result))	// result는 서버가 전송한 데이터
// 				},
// 				error: function() { alert("ERROR")}	// 에러가 발생할 때, 호출될 함수				
// 			})
// 		}
		
// 		let toHtml = function(followers) {
// 			let tmp = "<ul style='display: block;'>"
			
// 			pro_follwer.forEach(function(follower) {
// 				tmp += '<li  ' 
// 				tmp += ' data-follower=' + pro_follwer.follower + '>'
// 				tmp += ' follower=<span class="follower" >' + pro_follwer.follower + '</span>'
// 				tmp += '</li>'
// 			})
// 			return tmp += "</ul>"
// 		}
// // 		var followerUrl='';
// // 		$('.show').click(function(){
// // 			followerUrl = $(this).val();
// // 			console.log(followerUrl);
// // 			$.ajax({			
// // 				url: 'followerUrl?'+member_id+'_follwer',  
// // 	 			type:"Post",
// // 	 			contentType:'application/json;charset=utf-8',
// // 				dataType:'json',
// // 				data : JSON.stringify({member:bno, comment:comment}),
// // 	 			success:function(response) {
// // 	 				showList(response);
// // 	 			},
// // 	 			error:function(xhr,status,msg){
// // 	 				console.log("상태값 : " + status + " Http에러메시지 : "+msg);
// // 	 			}
// // 	 		});
// // 		});
// // 		function showList(data){
// // 			var tmp = '';
// // 			$(".modal-body").empty();
// // 			var head = '<span>'+movieUrl+'</span>';
// // 			$(".modal-body").append(head);
// // 			$.each(data, function(index, item){
// // 				tmp = '<tr>';
// // 				tmp += '<td>' + item.idx + '</td>';
// // 				tmp += '<td>' + item.time + '</td>';
// // 				tmp += '</tr>';
// // 				$(".modal-body").append(timeList);
// // 			})
// // 		}
// 	});
</script> -->



<title>snsProfile</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/fix/header.jsp"%>
	<!-- 바디 시작 -->
	<!-- myProfile -->
	<div class="container">
		<div class="row justify-content-md-center">
			<h2 class="col-auto my-5">Profile</h2>
		</div>
	</div>
	<!-- myProfile 끝 -->
	<!-- 프로필 정보 -->
	<div class="profile container justify-content-center">
		<div class="profile-card card mb-5"
			style="max-width: 100%; border: none;">
			<div class="row g-0">
				<!-- 프로필 이미지-->
				<div class="profile_img col-md-6">
					<div class="col-6 offset-3 ">
						<div class="pro_img_box">
							<img
								src="${pageContext.request.contextPath }/resources/sns/img/${pro_info.profile_img}"
								id="profile_img" class="" alt="...">
						</div>
					</div>
				</div>
				<!-- 프로필 기본정보 -->
				<div class="profile_info col-md-6">
					<div class="card-body">
						<!-- nickname -->
						<div class="nickname fw-bold fs-1 mb-md-4">${pro_info.member_nick }
							<!-- 프로필 수정-->
							<button type="button"
								class="profileEdit_Btn btn btn-primary fs-4 ms-auto"
								data-bs-toggle="modal" data-bs-target="#profile-edit-Modal">
								<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
									fill="currentColor" class="bi bi-gear" viewBox="0 0 19 19">
                                    <path
										d="M8 4.754a3.246 3.246 0 1 0 0 6.492 3.246 3.246 0 0 0 0-6.492zM5.754 8a2.246 2.246 0 1 1 4.492 0 2.246 2.246 0 0 1-4.492 0z"></path>
                                    <path
										d="M9.796 1.343c-.527-1.79-3.065-1.79-3.592 0l-.094.319a.873.873 0 0 1-1.255.52l-.292-.16c-1.64-.892-3.433.902-2.54 2.541l.159.292a.873.873 0 0 1-.52 1.255l-.319.094c-1.79.527-1.79 3.065 0 3.592l.319.094a.873.873 0 0 1 .52 1.255l-.16.292c-.892 1.64.901 3.434 2.541 2.54l.292-.159a.873.873 0 0 1 1.255.52l.094.319c.527 1.79 3.065 1.79 3.592 0l.094-.319a.873.873 0 0 1 1.255-.52l.292.16c1.64.893 3.434-.902 2.54-2.541l-.159-.292a.873.873 0 0 1 .52-1.255l.319-.094c1.79-.527 1.79-3.065 0-3.592l-.319-.094a.873.873 0 0 1-.52-1.255l.16-.292c.893-1.64-.902-3.433-2.541-2.54l-.292.159a.873.873 0 0 1-1.255-.52l-.094-.319zm-2.633.283c.246-.835 1.428-.835 1.674 0l.094.319a1.873 1.873 0 0 0 2.693 1.115l.291-.16c.764-.415 1.6.42 1.184 1.185l-.159.292a1.873 1.873 0 0 0 1.116 2.692l.318.094c.835.246.835 1.428 0 1.674l-.319.094a1.873 1.873 0 0 0-1.115 2.693l.16.291c.415.764-.42 1.6-1.185 1.184l-.291-.159a1.873 1.873 0 0 0-2.693 1.116l-.094.318c-.246.835-1.428.835-1.674 0l-.094-.319a1.873 1.873 0 0 0-2.692-1.115l-.292.16c-.764.415-1.6-.42-1.184-1.185l.159-.291A1.873 1.873 0 0 0 1.945 8.93l-.319-.094c-.835-.246-.835-1.428 0-1.674l.319-.094A1.873 1.873 0 0 0 3.06 4.377l-.16-.292c-.415-.764.42-1.6 1.185-1.184l.292.159a1.873 1.873 0 0 0 2.692-1.115l.094-.319z"></path>
                                </svg>
								&nbsp; 프로필 수정
							</button>
						</div>
						<div class="cnt d-flex flex-row mb-5 d-grid gap-md-5 mt-5">
							<button type="button" class="post_Cnt btn fs-4">
								게시물
								<div class="count fs-4 fw-bold m-auto">${feed_Cnt }</div>
							</button>
							<button type="button" class="follwing_Cnt btn fs-4"
								data-bs-toggle="modal" data-bs-target="#following-Modal">
								팔로잉
								<div class="count fs-4 fw-bold m-auto">2</div>
							</button>
							<button type="button" class="show btn fs-4 "
								data-bs-toggle="modal" data-bs-target="#follwer-Modal"
								value="follower">
								팔로워
								<div class="count fs-4 fw-bold m-auto">16</div>
							</button>
						</div>
						<div class="IDIntro d-flex flex-row mb-3 d-grid gap-md-2 mt-5">
							<div class="userid fw-bold fs-4">${pro_info.member_id}</div>
							<div class="intro fs-4 align-text-bottom">${pro_info.profile_intro }</div>
						</div>
					</div>
				</div>
				<!-- 프로필 기본정보 -->
			</div>
		</div>
		<!-- 피드 -->
		<div class="post container">
			<div class="row mt-5 mb-5">

				<c:forEach var="pro_feed" items="${pro_feed }">
					<div class="col-sm-4 mb-3">
						<div class="card" style="border: none;">
							<div class="post_img card-body">
								<img class="feed_img"
									src="${pageContext.request.contextPath }/resources/sns/img/${pro_feed.post_img_img}"
									alt="...">
							</div>
						</div>
					</div>
				</c:forEach>

			</div>
		</div>
		<!-- 피드 끝 -->
	</div>
	<!-- 프로필 정보 끝 -->
	<!--profile-edit-Modal -->
	<div class="modal fade" id="profile-edit-Modal" tabindex="-1"
		aria-labelledby="profile-edit-ModalLabel" aria-hidden="true">
		<div
			class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="profile-edit-Modal">프로필수정</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div class="mb-3">
						<label for="formFile" class="form-label">프로필 이미지 선택</label> <input
							class="form-control" type="file" id="formFile">
					</div>
					<div class="input-group mb-3">
						<span class="input-group-text" id="basic-addon1">@</span> <input
							type="text" class="form-control" placeholder="Username"
							aria-label="Username" aria-describedby="basic-addon1" readonly>
					</div>
					<div class="input-group">
						<span class="input-group-text">자기소개 글</span>
						<textarea class="form-control" placeholder="자신을 소개해주세요."
							aria-label="With textarea"></textarea>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">취소</button>
					<button type="button" class="btn btn-primary">저장</button>
				</div>
			</div>
		</div>
	</div>
	<!--profile-edit-Modal 끝 -->

	<!-- following-Modal -->
	<div class="modal fade" id="following-Modal" tabindex="-1"
		aria-labelledby="following-Modal" aria-hidden="true">
		<div
			class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="following-Modal">팔로워</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<ul>

						<c:forEach var="pro_follwing" items="${pro_follwing }">
							<br />
							<li class="fs-4" style="list-style: none;"><span>${pro_follwing.following }</span></li>
						</c:forEach>

					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- following-Modal 끝 -->

	<!-- follower-Modal -->
	<div class="modal fade" id="follwer-Modal" tabindex="-1"
		aria-labelledby="follwer-Modal" aria-hidden="true">
		<div
			class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="follwer-Modal">팔로워</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="follower modal-body" id="followerList">
					<ul>

						<c:forEach var="pro_follwer" items="${pro_follwer }">
							<br />
							<li class="fs-4" style="list-style: none;"><span>${pro_follwer.follower }</span></li>
						</c:forEach>

					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- follower-Modal 끝 -->
	<%@ include file="/WEB-INF/views/fix/footer.jsp"%>
</body>
</html>