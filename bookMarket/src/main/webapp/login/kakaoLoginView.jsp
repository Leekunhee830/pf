<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/layout/header.jsp"/>
<link href="${pageContext.request.contextPath}/css/join.css"  rel="stylesheet" type="text/css"/>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/kakao_join.js"></script>


	<div class="join_wrap">
		<div class="join_cont">
			<div class="join_form">
				<div><h2>카카오 계정연동/회원가입</h2></div>
				<form action="KakaoJoin.do" method="post" id="join_submit">
					<input type="hidden" name="user_id" value="${sessionScope.kakao_id}">
					<input type="hidden" name="user_name" value="${sessionScope.kakao_name}">
					
					<div class="join_font">전화번호</div>
					<div>
						<select name="user_phone1" id="user_phone1">
							<option value="010">010</option>
							<option value="070">070</option>
							<option value="011">011</option>
						</select>
						-
						<input type="text" id="user_phone2" name="user_phone2" required size="5" maxlength='4'>
						-
						<input type="text" id="user_phone3" name="user_phone3" required size="5" maxlength='4'>
					</div>
					
					<div class="join_font">이메일</div>
					<div>
						<input type="text" id="user_email1" name="user_email1" placeholder="이메일을 입력하세요." required size="15">
						@
						<select name="user_email2" id="user_email2">
							<option value="naver.com">naver.com</option>
							<option value="gmail.com">gmail.com</option>
							<option value="daum.com">daum.com</option>
						</select>
						<input type="button" value="인증번호 받기" id="send_email_btn_k"/>
					</div>
					<div class="join_font">인증번호</div>
					<div>
						<input type="text" id="user_email_checkNum">
						<input type="button" value="인증하기" id="send_email_check_k"/>
						<div id="email_check" class="check_font"></div>
					</div>
					
					<div class="join_submit">
						<input type="button" value="회원가입" id="join_button_k"/>
					</div>
				</form>
			</div>
		</div>
	</div>

<jsp:include page="/layout/footer.jsp"/>