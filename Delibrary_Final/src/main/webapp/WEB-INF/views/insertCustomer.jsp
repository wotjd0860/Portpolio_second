<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp"
    crossorigin="anonymous">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
    crossorigin="anonymous">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css" />
	<link rel="stylesheet" href="css/yurim.css">
	<script src="https://cdn.jsdelivr.net/npm/vue"></script>
   <!--  <script type="text/javascript" src="../resource/insertCustomer.js"></script> -->
   <title>회원가입 - 딜리브러리</title>
</head>

<body>
	<nav class="navbar sticky-top navbar-expand-sm navbar-dark bg-dark p-0">
		<div class="container">
			<a href="Home.do" class="navbar-brand"><img alt="딜리브러리" src="img/logo_bg_dark.jpg" height="20" class="pl-3 mb-1"></a>
			<button class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<ul class="navbar-nav ml-4">
					<li class="nav-item dropdown">
						<a href="about.html" class="nav-link dropdown-toggle" data-toggle="dropdown">도서관소개</a>
							<ul class="dropdown-menu dropdown-menu-left fade-down">
								<li><a class="dropdown-item" href="about.html"> 대출/반납/연장</a></li>
								<li><a class="dropdown-item" href="#"> 공지사항 </a></li>
								<li><a class="dropdown-item" href="#"> 자주묻는질문</a></li>
								<li><a class="dropdown-item" href="#"> 묻고답하기 </a></li>
								<li><a class="dropdown-item" href="#"> 오시는길 </a></li>
							</ul>
					</li>
					<li class="nav-item dropdown">
						<a href="books.html" class="nav-link dropdown-toggle" data-toggle="dropdown">도서정보</a>
							<ul class="dropdown-menu dropdown-menu-left fade-down">
								<li><a class="dropdown-item" href="books.html">도서검색</a></li>
								<li><a class="dropdown-item" href="#">사서추천도서</a></li>
								<li><a class="dropdown-item" href="#">신착도서</a></li>
								<li><a class="dropdown-item" href="#">인기도서</a></li>
							</ul>
					</li>
					<li class="nav-item dropdown">
						<a href="community.html" class="nav-link dropdown-toggle" data-toggle="dropdown">커뮤니티</a>
							<ul class="dropdown-menu dropdown-menu-left fade-down">
								<li><a class="dropdown-item" href="community.html">창작물게시판</a></li>
								<li><a class="dropdown-item" href="#">중고장터</a></li>
								<li><a class="dropdown-item" href="#">자유게시판</a></li>
							</ul>
					</li>
					<li class="nav-item dropdown">
						<a href="mypage.html" class="nav-link dropdown-toggle" data-toggle="dropdown">나의도서</a>
							<ul class="dropdown-menu dropdown-menu-left fade-down">
								<li><a class="dropdown-item" href="mypage.html"> 나의도서정보</a></li>
								<li><a class="dropdown-item" href="lentBooks.html">대출현황/이력</a></li>
								<li><a class="dropdown-item" href="myfolder.html">내서재</a></li>
								<li><a class="dropdown-item" href="#">개인정보수정</a></li>
							</ul>
					</li>
				</ul>
				<ul id="app" class="navbar-nav ml-auto">
					<li class="nav-item" v-bind:title="login">
						<a href="LoginPage.do" class="nav-link"><i class="fas fa-sign-in-alt"></i></a>
					</li>
					<li class="nav-item" v-bind:title="signup">
						<a href="insertCustomer.do" class="nav-link"><i class="fas fa-user-plus"></i></a>
					</li>
					<li class="nav-item" v-bind:title="bookcart">
						<a href="sitemap.do" class="nav-link"><i class="fas fa-book"></i></a>
					</li>
					<li class="nav-item" v-bind:title="sitemap">
						<a href="sitemap.do" class="nav-link"><i class="far fa-map"></i></a>
					</li>
					<script>
						var app = new Vue({
							el: '#app',	
							data: {
								login: '로그인',
								signup: '회원가입',
								bookcart: '북카트',
								sitemap: '사이트맵',
							}});
					</script>
				</ul>
			</div>
		</div>
	</nav>
  
	<!-- PAGE HEADER -->
	<header id="page-header">
		<div class="container">
		  <div class="row">
			<div class="col-md-6 m-auto text-center">
			  <h1 style="font-weight: 200;">회원가입</h1>
			  <small style="color: Gainsboro;">딜리브러리의 도서를 온라인으로 대여하세요.</small>
			</div>
		  </div>
		</div>
	</header>
	
  <!-- MAIN SECTION -->
	<section id="insertCustomer">
		<!-- 폼 시작 -->
		<form action="insertCustomer.do" method="post" enctype="multipart/form-data">
		
		<!-- 이메일 INPUT START -->
		<label class="mt-4" for="m_phone">이메일</label>
		<span class="signup_required">*</span>
		<div class="input-group mb-3">
		<!-- 이메일 중복체크 폼 시작 -->
			<input class="form-control" type="email" id="email" name="email" placeholder="이메일을 입력해주세요" required>
			<div class="input-group-append">
				<button class="btn btn-outline-info btn-Customer" type="button" data-toggle="modal" data-target="#emailCheckModal">중복체크</button>
			</div>
		<!-- 이메일 중복체크 폼 끝 -->
		</div>
		<small class="form-text text-muted email"><span class="signup_required">실제 사용하시는 이메일을</span> 입력해주세요.</small>	
		<!-- 이메일 INPUT END -->

		<!-- 비번 INPUT START -->
		<div class="form-group mt-2">
			<label for="pw">비밀번호</label> <span class="signup_required">*</span>
			<input class="form-control" type="password" id="pw" name="pw" placeholder="비밀번호를 입력해주세요" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required>
			<small class="form-text text-muted">비밀번호는 <span class="signup_required">8~16자, 영문 대문자, 소문자, 숫자 </span>를 포함해야 합니다.</small>
			
		</div>
		<!-- 비번 INPUT END -->

		<!-- 비번확인 INPUT START -->
		<div class="form-group mt-3">
			<label for="pw-check">비밀번호 확인</label> <span class="signup_required">*</span>
			<input class="form-control" type="password" id="pw_check" placeholder="비밀번호를 다시 입력해주세요" required>
			<span class="signup_required">
				<small class="form-text pw_message" id="pw_match">비밀번호가 일치하지 않습니다.</small>
				<small class="form-text pw_message" id="pw_length">8~16자로 설정해주세요. </small>
				<small class="form-text pw_message" id="pw_ok">영문 대문자, 소문자, 숫자 조합으로 해주세요.</small>
			</span>	
		</div>
		<!-- 비번확인 INPUT END -->


		<!-- 이름 INPUT START -->
		<div class="form-group mt-2">
			<label for="name">이름</label> <span class="signup_required">*</span>
			<input class="form-control" type="text" id="name" name="name" placeholder="이름을 입력해주세요" required>
			<small class="form-text text-muted">반드시 <span class="signup_required">한글 실명</span>으로 기입해주세요.<br>
			실명이 아닐 경우, 서비스 이용에 제약이 생길 수 있습니다.<br>
			- 띄어쓰기, 특수 문자 사용 불가</small>
		</div>
		<!-- 이름 INPUT END -->

		<!-- 닉네임 INPUT START -->
		<div class="form-group my-4">
			<label for="name">닉네임</label> <span class="signup_required">*</span>
			<input class="form-control" type="text" id="nickname" name="nickname" placeholder="닉네임을 입력해주세요" required>
			<small class="form-text text-muted">딜리브러리에서 커뮤니티 활동시 사용할 닉네임을 입력해주세요.<br>
				<span class="signup_required">한글 6자 혹은 알파벳 12자 </span>이내로 기입해주세요.<br>
				- 띄어쓰기, 특수 문자 사용 불가<br>
				- 욕설, 비속어 사용시 이용이 제한될 수도 있습니다.</small>
		</div>
		<!-- 닉네임 INPUT END -->

		<!-- 프사 INPUT START -->
		<label for="file">프로필사진</label>
		<div class="custom-file">
			<input type="file" id="myfile" class="custom-file-input" name="uploadFile">
			<label class="custom-file-label" for="myfile">파일찾기</label>
			<small class="form-text text-muted">딜리브러리에서 커뮤니티 활동시 사용할 프로필사진을 업로드 해주세요.<br>
				(업로드 가능 최대파일사이즈: 10MB)
			</small>
		</div>
		<!-- 프사 INPUT END -->

		<!-- 폰번호 INPUT START -->
		<label class="mt-4" for="m_phone">휴대폰번호</label>
		<span class="signup_required">*</span>
		<div class="form-group mb-3">
			<input class="form-control" type="tel" id="m_phone" name="m_phone" placeholder="휴대폰번호를 입력해주세요">
		</div>
		<!-- 폰번호 INPUT END -->

		<!-- 주소 INPUT START -->
		<label for="m_phone mt-4">주소</label>
		<span class="signup_required">*</span>

		<div id="address_postcode">
			<div class="input-group">
				<input class="form-control" type="text" name="addr2_a" id="getPostcode_input" required>
				<input class="form-control" type="text" name="addr2_b" id="getDetail_addr">
				<div class="input-group-append">
					<button class="btn btn-outline-info btn-Customer" type="button" id="getPostcode">우편번호찾기</button>
				</div>
			</div>
		</div>
		<!-- 상세주소 INPUT START -->
		<div class="form-group mt-1">
			<input class="form-control" type="text" id="getAddr1" name="addr1_a">
			<input class="form-control mt-1" type="text" id="getAddr2" name="addr1_b" placeholder="상세주소를 입력해주세요." required>
		</div>
		<!-- 주소 INPUT END -->
		
			<div class="interest_check"><!-- 관심장르 CHECKBOX START -->
			<div class="form-group mt-4">
				<label class="mb-1">도서 관심장르를 모두 선택해주세요.</label> <br>
			
				<div class="row">
					<!-- 관심장르 CHECKBOX 1st ROW -->
					<div class="d-inline-block w-50 p-1 form-check">
						<input type="checkbox" value="인문" class="d-none form-check-input" id="interest_check1" name="genre"/>
						<div class="btn btn-light w-100 btn-Customer" id="interest1">인문</div>
						</label>
					</div>
			
					<div class="d-inline-block w-50 p-1 form-check"><input type="checkbox" value="경영"
							class="d-none form-check-input" id="interest_check2" name="genre"/>
						<div class="btn btn-light w-100 btn-Customer" id="interest2">경영</div>
						</label>
					</div>
				</div> <!-- 관심장르 CHECKBOX 1st ROW END -->
			
				<div class="row">
					<!-- 관심장르 CHECKBOX 2nd ROW -->
					<div class="d-inline-block w-50 p-1 form-check"><label class="w-100 form-check-label"><input type="checkbox"
								value="소설" class="d-none form-check-input" id="interest_check3" name="genre"/>
							<div class="btn btn-light w-100 btn-Customer" id="interest3">소설</div>
						</label></div>
			
					<div class="d-inline-block w-50 p-1 form-check"><label class="w-100 form-check-label"><input type="checkbox"
								value="역사" class="d-none form-check-input" id="interest_check4" name="genre"/>
							<div class="btn btn-light w-100 btn-Customer" id="interest4">역사</div>
						</label></div>
				</div><!-- 관심장르 CHECKBOX 2nd ROW END -->
			
				<div class="row">
					<!-- 관심장르 CHECKBOX 3rd ROW -->
					<div class="d-inline-block w-50 p-1 form-check"><label class="w-100 form-check-label">
							<input type="checkbox" value="순수과학" class="d-none form-check-input" id="interest_check5" name="genre"/>
							<div class="btn btn-light w-100 btn-Customer" id="interest5">순수과학</div>
						</label></div>
					<div class="d-inline-block w-50 p-1 form-check"><label class="w-100 form-check-label">
							<input type="checkbox" value="응용과학" class="d-none form-check-input" id="interest_check6" name="genre"/>
							<div class="btn btn-light w-100 btn-Customer" id="interest6">응용과학</div>
						</label></div>
				 </div><!-- 관심장르 CHECKBOX 3rd ROW END -->
				</div><!-- 관심장르 CHECKBOX END -->
	
			<!-- 마케팅 동의 -->
				<div class="form-group form-check mt-4">
					<input type="checkbox" class="form-check-input" id="agreement">
					<label class="form-check-label" for="agreement">마케팅 정보 수신 동의(선택)</label>
					<small class="form-text text-muted mb-2">마케팅 정보 수신에 동의하시면 신간도서 및 이벤트 소식을 빠르게 전해드립니다.</small>
				</div>

		<!-- 가입버튼 -->
			<div class="form-group mt-2">
				<button class="btn btn-dark btn-block mb-1 btn-Customer" type="submit">가입하기</button>
				<small class="form-text text-muted text-center mb-4">회원가입 진행 시 딜리브러리의 <span class="signup_required">개인정보처리방침</span>에 동의하신 것으로 간주됩니다.</small>
			</div>
		</div>
		</form>
	</section>
 
  <!-- FOOTER -->	
  <footer id="main-footer" class="text-center p-4">
    <div class="container">
      <div class="row">
        <div class="col">
          <p>Copyright &copy;
            <span id="year"></span> Delibrary 딜리브러리</p>
        </div>
      </div>
    </div>
  </footer>
  
   <!----------------------  이메일 중복체크 모달창 섹션  ----------------------->
   <div class="modal" id="emailCheckModal">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">이메일 중복체크</h5>
            <button class="close" data-dismiss="modal">&times;</button>
          </div>
          <div class="modal-body">
			
              <div class="form-group">
                <label for="email">이메일을 입력해주세요.</label>
               <form action="emailCheck.do" method="post">
                <input type="email" placeholder="예시) hello@delibrary.com" class="form-control" name="email">
              </div>
          </div>
          <div class="modal-footer">
			<button class="btn btn-primary btn-Customer" id="btn_emailCheck" type="submit">중복체크</button>
		 </form>	
          </div>
        </div>
      </div>
    </div>
  </div>


  <!---------------------- 자바스크립트 섹션 ----------------------->

  <script src="http://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
	crossorigin="anonymous"></script>
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <script>
    // Get the current year for the copyright
    $('#year').text(new Date().getFullYear());

	//////////////////////////**우편번호**//////////////////////////////////
	window.onload=function(){
		document.querySelector('#getPostcode').addEventListener('click',function (){
			 new daum.Postcode({
				oncomplete: function (data) {
					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
					// 각 주소의 노출 규칙에 따라 주소를 조합한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var addr = ''; // 주소 변수
					var extraAddr = ''; // 참고항목 변수

					//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
					if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
						addr = data.roadAddress;
					} else { // 사용자가 지번 주소를 선택했을 경우(J)
						addr = data.jibunAddress;
					}

					// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
					if (data.userSelectedType === 'R') {
						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
							extraAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
						}
						// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if (extraAddr !== '') {
							extraAddr = ' (' + extraAddr + ')';
						}
						// 조합된 참고항목을 해당 필드에 넣는다.
						document.getElementById("getDetail_addr").value = extraAddr;

					} else {
						document.getElementById("getAddr1").value = '';
					}

					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					document.getElementById('getPostcode_input').value = data.zonecode;
					document.getElementById("getAddr1").value = addr;
					// 커서를 상세주소 필드로 이동한다.
					document.getElementById("getAddr2").focus();
				}
			}).open();

		});


 	//////////////////////////**관심장르 체크박스**//////////////////////////////////
	let select = 0;
	let interestButton = ['#interest1','#interest2','#interest3','#interest4','#interest5','#interest6'];	
	let interestCheck = ['#interest_check1','#interest_check2','#interest_check3','#interest_check4','#interest_check5','#interest_check6'];	

	for(let i=0; i < interestButton.length; i++){	
		document.querySelector(interestButton[i]).addEventListener('click', function () {
				document.querySelector(interestButton[i]).classList.toggle('active');
				select += 1;
				if(select % 2 != 0) {
					document.querySelector(interestCheck[i]).setAttribute('checked', 'checked');
				} else {
					document.querySelector(interestCheck[i]).removeAttribute('checked');
				}
		})
	}
	//////////////////////////**이메일 중복체크:제이쿼리**//////////////////////////////////
	
	$.ajax({
            url: "/emailCheck.do",
            type: "POST",
            success: function(data){
               
            }
         }); 
     
	$('#btn_emailCheck').click(function() {
		if(data<0) {
			   alert('사용 가능한 이메일 입니다');
		   } else {
			   alert('이미 가입 되어있는 이메일 입니다');
		   }
	});

	

	//////////////////////////**비밀번호 및 비밀번호 확인**//////////////////////////////////
	let inputPw = document.getElementById('pw'); //패스워드 입력 
	let inputPw_check = document.getElementById('pw_check'); //패스워드 체크 입력

	let pw_length = document.getElementById('pw_length'); //패스워드 길이 메세지
	let pw_match = document.getElementById('pw_match'); // 패스워드 매치 메세지
	let pw_ok = document.getElementById('pw_ok'); // 패스워드 조합 메세지
	
	//패스워드창 클릭하면 메세지 띄우기
	inputPw.onfocus = function () {
		inputPw.classList.add('is-invalid');
		pw_match.style.display = 'block';
		pw_length.style.display = 'block';
		pw_ok.style.display = 'block';
	}

	//패스워드창 클릭 안하면 초록/빨강 인풋 테두리 없에기
	inputPw.onblur = function(){
		inputPw.classList.remove('is-invalid');
		inputPw.classList.remove('is-valid');
	}

	//패스워드창 패스워드 체크
	inputPw.onkeyup = function(){
		let lowerCaseLetters = /[a-z]/g;
		let upperCaseLetters = /[A-Z]/g;
		let numbers = /[0-9]/g;

		//패스워드 8~16자, 대문자, 소문자 다 있으면 메세지 없에기
		if(inputPw.value.match(lowerCaseLetters) && inputPw.value.match(upperCaseLetters) && inputPw.value.match(numbers)){
			pw_ok.style.display = 'none';
		}

		//패스워드 길이 8자 이상이면 메세지 없에기
		if(inputPw.value.length >= 8) {
			pw_length.style.display = 'none';
		}

		//조건 다 맞으면 인풋 테두리 초록
		if (inputPw.value.match(lowerCaseLetters) && inputPw.value.match(upperCaseLetters) && inputPw.value.match(numbers) && (inputPw.value.length >= 8)) {
			inputPw.classList.remove('is-invalid');
			inputPw.classList.add('is-valid');
		}
	}

	//패스워드체크창 클릭하면 빨간테두리
	inputPw_check.onfocus = function() {
		inputPw_check.classList.add('is-invalid');
	}

	//패스워드체크창 나가면 테두리 빼기
	inputPw_check.onblur = function() {
		inputPw.classList.remove('is-invalid');
		inputPw.classList.remove('is-valid');
	}

	inputPw_check.onkeyup = function(){
		inputPw_val = document.getElementById('pw').value; //패스워드 입력값
		inputPw_check_val = document.getElementById('pw_check').value; // 패스워드 체크 입력값

		if(inputPw_val === inputPw_check_val) { //두개 값 같아지면 초록테두리 
			inputPw_check.classList.remove('is-invalid');
			inputPw_check.classList.add('is-valid');
			pw_match.style.display = 'none'; //불일치 메세지 없에기
		}
	}
	
}
  </script>
</body>

</html>