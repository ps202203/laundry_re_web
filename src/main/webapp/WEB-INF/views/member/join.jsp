<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table tr td { text-align:left; padding-left: 10px }
p { margin: 20px auto; text-align:right; color: #3367d6 }
.valid, .invalid { font-size:14px; font-weight:bold; } 
.valid { color:green }
.invalid { color:red }
[name=address]{ width:calc(100% - 22px); margin-top:3px }
.ui-datepicker table tr, .ui-datepicker table tr td { height: inherit; }
/* 달력날짜 삭제 이미지가 날짜input 태그 안에 위치하게  */
#delete { position: relative; right: 30px; }
</style>
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="css/common.css?<%=new java.util.Date()%>">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src='js/common.js?<%=new java.util.Date()%>'></script>
<script src='js/member_check.js?<%=new java.util.Date()%>'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js'></script>

 <!-- Custom CSS -->
  <link href=" ${pageContext.request.contextPath}/resources/css/style2.css?<%=new java.util.Date()%>'" rel='stylesheet'/>
  <!-- Fonts -->
  <link href=" ${pageContext.request.contextPath}/resources/fonts/fonts_style.css" rel='stylesheet'/>
  <link rel="shortcut icon" type="image/x-icon" href="resources/images/logo.ico" />
  
</head>
<body>

<background></background>
  <div id="navbar" class="">
    <div class="inner_wrap">
      <div id="logo" style="width: 96px; height: 36px;"><a href="index">한울빨래방</a></div>
      <div id="link_menu">
        <li><a href="about"><i class="home"></i>회사소개</a></li>
        <li><a href="khjsolution"><i class="solution"></i>솔루션소개</a></li>
        <li><a href="partner"><i class="guide"></i>입점안내</a></li>
        <li><a href="member"><i class="boss"></i>관리자 회원가입</a></li>
        <li>
          <button class="modal-button" href="#myModal"><i class="contact"></i>문의하기</button>
        </li>
        <li>
          <button class="close">X</button>
        </li>
      </div>
      <div id="menu_icon" style="margin: 2px 0px;"></div>
    </div>
  </div>

<h3 class="sauptop">사업자 가입신청</h3>
<p class='w-px500'></p>
<form action='join' method='post' enctype='multipart/form-data'>
<table class='w-px500'>
	<tr><th class='w-px120'> 이름</th>
		<td><input type='text' name='name'></td>
	</tr>
	<tr><th> 아이디</th>
		<td>
			<input type='text' name='ownerid' class='chk' >
			<a class='btn-fill-s' onclick='id_check()'>아이디중복확인</a>
			<div class='valid'>아이디를 입력하세요(영문소문자,숫자만 가능)</div>
		</td>
	</tr>
	<tr><th> 비밀번호</th>
		<td>
			<input type='password' name='password' class='chk'><br>
			<div class='valid'>비밀번호를 입력하세요(영문 대/소문자,숫자를 모두 포함)</div>
		</td>
	</tr>
	<tr><th> 비밀번호 확인</th>
		<td>
			<input type='password' name='pw_ck' class='chk'><br>
			<div class='valid'>비밀번호를 다시 입력하세요</div>
		</td>
	</tr>
	<!-- 
	<tr><th>이메일</th>
		<td>
			<input type='text' name='email' class='chk'><br>
			<div class='valid'>이메일을 입력하세요</div>
		</td>
	</tr>
	 -->
	
	<tr>
	<th>전화번호</th>
		<td><input type='text' name='phone' maxlength="13"></td>
	</tr>
	</table>
<!-- </form> -->

<!-- ///////////// 여기서 부터 사업장 정보///////////////////////////////////// -->

	<h3>매장 정보</h3>
<p class='w-px500'></p>
<!-- 	<form action='store' method='post'> -->
	<table class='w-px500'>
	<tr><th class='w-px120'>업체명</th>
		<td><input type='text' name='location' maxlength="13"></td>
	</tr>
	
	<tr><th>사업장주소</th>
		<td>
			<a class='btn-fill-s' onclick='post()'>우편번호찾기</a>
			<input class='w-px50' type='text' name='post' readonly>
			<input type='text' name='address' readonly>
			<input type='text' name='address'>
		</td>
	</tr>
	
	<tr><th>사업장사진</th>
		<td class='text-left' style='padding-left:10px'>
		<c:forEach var='i' begin="1" end="5">
		<div>
			<label>
				<input type='file' name='file' class='attach-file' >
				<a><i class="font-btn fa-solid fa-file-arrow-up"></i></a>
				<span class='file-name'></span>
			</label>
			<a class='delete'><i class="font-btn fa-solid fa-trash-can"></i></a><br>
		</div>
		</c:forEach>
		
		</td>
	</tr>
	
	
	
	<tr><th>편의시설 유무</th>
	
		<td>
			<label><input type='checkbox'  name='f_cctv' value='1'>CCTV</label>
			<label><input type='checkbox'  name='f_game' value='1'>오락기</label>
			<label><input type='checkbox'  name='f_toilet' value='1'>화장실</label><br>
			<label><input type='checkbox'  name='f_concent' value='1'>콘센트</label>
			<label><input type='checkbox'  name='f_wifi' value='1'>WIFI</label>
			<label><input type='checkbox'  name='f_coin' value='1'>코인노래방</label>
			
		</td>
		</tr>
		
		
		<tr><th>사용가격</th>
	<td><select name='cost'>
			<c:forEach var='i' begin="5" end="9">
			<option value='${i*1000}'>${i*1000}원</option>
<!-- 			<option value='5000'>5000원</option><option  value='6000'>6000원</option><option >7000원</option><option >8000원</option><option >9000원</option> -->
			</c:forEach>
		</select>
	</td>
</tr>

		<tr><th>세탁기 갯수</th>
	<td><select name='machine'>
		<c:forEach var='i' begin="1" end="5">
		<option value='${i}'>${i}개</option>
		</c:forEach>
<!-- 			<option value='5000'>1개</option><option value='5000'>1개</option><option >3개</option><option >4개</option><option >5개</option> -->
			
		</select>
	</td>
</tr>

<tr><th>위도,경도</th>
		<td>
			<input type='text' name='latitude' >
			<div class='valid'>위도를 입력하세요</div>
			<input type='text' name='longitude' >
			<div class='valid'>경도를 입력하세요</div>
		</td>
	</tr>

</table>
</form>
<div class='btnSet'>
	<a class='btn-fill' onclick='join()'>회원가입</a>
	<a class='btn-empty' onclick='history.go(-1)'>취소</a>
</div>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>


//아이디 중복확인 요청
function id_check(){
	var $id = $('[name=ownerid]');
	if( $id.hasClass('chked') ) return;  //이미 중복확인했다면 다시 할 필요없음
		
	var data = member.tag_status( $id );
	if( data.code=='invalid' ){
		alert( '아이디 중복확인 불필요!\n' + data.desc );
		$id.focus();
		return;
	}
	
	$.ajax({
		url: 'id_check',
		data: { id: $id.val() },
		success: function( response ){
			$id.addClass('chked');
			//false(사용가능아이디) : true(이미사용중인아이디)
			response = member.id_usable( !response );
			$id.siblings('div').text( response.desc )
					.removeClass().addClass( response.code );
			
		},error: function(req,text){
			alert(text+':'+req.status);
		}
	});
}

$('.chk').keyup(function(e){
	if( $(this).attr('name')=='id' && e.keyCode==13 ){
		id_check();
	}else{
		//아이디 태그에 뭔가 입력한다면 중복확인했음을 삭제 
		if( $(this).attr('name')=='id' ) $(this).removeClass('chked')
			
		var status = member.tag_status( $(this) );
		$(this).siblings('div').text( status.desc )
			.removeClass().addClass( status.code );
	}
});

$('[name=birth]').change(function(){
	$('#delete').css('display', 'inline');
});
$('#delete').on('click', function(){
	$('[name=birth]').val('');
	$('#delete').css('display', 'none');
});


// 우편번호찾기
function post(){
    new daum.Postcode({
        oncomplete: function(data) {
        	console.log( data )
        	$('[name=post]').val( data.zonecode ); //우편번호
        	//도로명:R, 지번:J
        	var address = data.userSelectedType=='R' 
        				? data.roadAddress : data.jibunAddress;
        	if( data.buildingName != '' ) 
        		address += ' ('+data.buildingName+')';
        	$('[name=address]').eq(0).val( address );
//         	$('[name=address]:eq(0)').val( address );
        }
    }).open();	
}

//form태그 submit처리
function join(){
	$('[name=f_cctv]').val( $('[name=f_cctv]:checked') ? 1 : 0 ); 
	$('[name=f_game]').val( $('[name=f_game]:checked') ? 1 : 0 ); 
	$('[name=f_toilet]').val( $('[name=f_toilet]:checked') ? 1 : 0 ); 
	$('[name=f_concent]').val( $('[name=f_concent]:checked') ? 1 : 0 ); 
	$('[name=f_wifi]').val( $('[name=f_wifi]:checked') ? 1 : 0 ); 
	$('[name=f_coin]').val( $('[name=f_coin]:checked') ? 1 : 0 ); 
	
	
	if( $('[name=name]').val()=='' ){
		alert('성명을 입력하세요');
		$('[name=name]').focus();
		return;
	}
	
	//아이디인 경우: 중복확인여부
	if( $('[name=ownerid]').hasClass('chked') ){
		//중복확인했고 + invalid -> 이미 사용중인 아이디 
		if( $('[name=ownerid]').siblings('div').hasClass('invalid') ){
			alert( '회원가입 불가\n' + member.id.unusable.desc );
			$('[name=ownerid]').focus();
			return;
		}
	}else{
		//중복확인하지 않은 경우
		if( ! validate_check( $('[name=ownerid]') ) ) return;
		else{
			alert( '회원가입 불가\n' + member.id.valid.desc );
			$('[name=ownerid]').focus();
			return;
		}
	}
	
	//비번, 비번확인, 이메일
	if( ! validate_check( $('[name=password]') ) ) return;
	if( ! validate_check( $('[name=pw_ck]') ) ) return;
// 	if( ! validate_check( $('[name=email]') ) ) return;
	
	$('form').submit();
}

//각 태그의 상태를 확인
function validate_check(tag){
	var data = member.tag_status( tag );
	if( data.code=='valid' )	return true;
	else {
		alert('회원가입 불가\n' + data.desc);
		tag.focus();
		return false;
	}
}
</script>

<footer>
	<div class='inner_wrap'>
		<logo>
			<i class='mongddang'></i>
			<span class='mongddang'>(주)한울빨래방</span>
		</logo>
		<info>
			<ul>
				<li>(주)한울빨래방</li>
				<li>광주 남구 경열로 3 2층</li>
				<li>사업자번호 : 123-45-67890</li>
				<li>통신판매번호 : 제2022-광주남구-0001호</li>
				<li>대표메일 : mail@gmail.com</li>
			</ul>
			<ul class='social_group'>
				<li>
					<a href='https://www.facebook.com/studymoa1' target='_blank'>
						<i class='facebook'></i>
					</a>
				</li>
				<li>
					<a href='https://www.instagram.com/' target='_blank'>
						<i class='instagram'></i>
					</a>
				</li>
				<li>
					 <a href='https://www.youtube.com/' target='_blank'>
						<i class='youtube'></i>
					</a>
				</li>
				<li class='boss'>
					<a href='https://maplestory.nexon.com/Home/Main' target='_blank'>
						<i class='ceo'></i>
						<span>관리자</span>
					</a>
				</li>
				<li class='kakao' id='kakao-chat-btn'>
					<a href='#'>
						<img src="https://developers.kakao.com/assets/img/about/logos/channel/consult_small_yellow_pc.png" title='카카오톡 채널 1:1 채팅 버튼' alt='카카오톡 채널 1:1 채팅버튼'>
					</a>
				</li>
			</ul>
		</info>
	</div>
</footer>
<!-- Modal myModal -->
  <div id="myModal" class="modal">
    <div class="modal-content input">
      <div class="modal-header"> <span class="close">×</span>
      <h2>문의하기</h2>
      </div>
      <div class="modal-body" style="padding:0; overflow:hidden;">
        <iframe src="//studymoa.me/partnership/?"></iframe>
      </div>
    </div>
  </div>

<!-- link_menu JS -->
<script type="text/javascript" async="" src="js/link_menu.js"></script>
<!-- Menu Scroll JS -->
<script type="text/javascript" async="" src="js/menu_scroll.js"></script>
<!-- Carousel Modal JS -->
<script type="text/javascript" async="" src="js/modal.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript" src="js/footer.js"></script>

</body>
</html>