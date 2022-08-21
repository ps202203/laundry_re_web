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
</head>
<body>

<h3>매장 정보</h3>
<p class='w-px500'></p>
<form action='store' method='post'>
	<table class='w-px500'>
	<tr><th class='w-px120'>업체명</th>
		<td><input type='text' name='phone' maxlength="13"></td>
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
			<label>
				<input type='checkbox'  value='CCTV' >CCTV
				<input type='checkbox'  value='오락기' >오락기
				<input type='checkbox'  value='화장실' >화장실<br>
				<input type='checkbox'  value='콘센트' >콘센트
				<input type='checkbox'  value='WIFI' >WIFI
				<input type='checkbox'  value='코인노래방' >코인노래방
			</label>
		</td>
		</tr>
		
		
		<tr><th>사용가격</th>
	<td><select name='cost'>
			<option >5000원</option><option >6000원</option><option >7000원</option><option >8000원</option><option >9000원</option>
			</option>
			
		</select>
	</td>
</tr>

		<tr><th>세탁기 갯수</th>
	<td><select name='Machinecount'>
			<option >1개</option><option >2개</option><option >3개</option><option >4개</option><option >5개</option>
			</option>
			
		</select>
	</td>
</tr>

<tr><th>위도,경도</th>
		<td>
			<input type='text' name='Latitude' >
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
	var $id = $('[name=id]');
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
	if( $('[name=name]').val()=='' ){
		alert('성명을 입력하세요');
		$('[name=name]').focus();
		return;
	}
	
	//아이디인 경우: 중복확인여부
	if( $('[name=id]').hasClass('chked') ){
		//중복확인했고 + invalid -> 이미 사용중인 아이디 
		if( $('[name=id]').siblings('div').hasClass('invalid') ){
			alert( '회원가입 불가\n' + member.id.unusable.desc );
			$('[name=id]').focus();
			return;
		}
	}else{
		//중복확인하지 않은 경우
		if( ! validate_check( $('[name=id]') ) ) return;
		else{
			alert( '회원가입 불가\n' + member.id.valid.desc );
			$('[name=id]').focus();
			return;
		}
	}
	
	//비번, 비번확인, 이메일
	if( ! validate_check( $('[name=pw]') ) ) return;
	if( ! validate_check( $('[name=pw_ck]') ) ) return;
	if( ! validate_check( $('[name=email]') ) ) return;
	
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

</body>
</html>