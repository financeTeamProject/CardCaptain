<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@font-face {
    font-family: 'GmarketSansMedium';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
@font-face {
    font-family: 'Cafe24Ohsquare';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/Cafe24Ohsquare.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
body {
	margin: 0;
	top: 0;
}
.body {
	width: 100%;
	heigth: 100%;
}
	/* 헤더  ~82번째줄*/
#header {
	width: 100%;
	height: 55px;
	border-style: solid;
    border-width: 0 0 2px 0;
    border-color: #0047AB;
    font-family: 'GmarketSansMedium';
    min-width: 1830px;
}
#headerWrap {
	width: 1600px;
	height: 100%;
	margin: 0 auto;
	display: flex;
}
#headerLeft {
	display: inline-block;
	width: 50%;
	height: 100%;
    font-size: 16px;
	vertical-align: top;
}
#headerLogo {
    display: inline-block;
    vertical-align: top;
    background-image: url("/cdcp/resources/images/main/logo.png");
    background-repeat: no-repeat;
    background-size: 120px;
    width: 120px;
    height: 40px;
    cursor: pointer;
    text-align: center;
    margin-top: 10px;
}
#headerLeft .menu1 { 
	display: inline-block;
	width: 130px;
	height: 100%;
	line-height: 65px;
	color: #0047AB;
	text-align: center;
	letter-spacing: 2px;
	vertical-align: top;
	cursor: pointer;
}	/* header_left 종료 */

#headerRight {
	display: inline-block;
	width: 50%;
	height: 100%;
    font-size: 18px;
	vertical-align: top;
}
#imgSearch {
 	display: inline-block;
    background-image: url("/cdcp/resources/images/main/search.png");
    background-repeat: no-repeat;
    background-size: 30px;
    width: 30px;
    height: 25px;
    cursor: pointer;
    text-align: center;
    margin-left: 85%;
}
#imgLogin {
 	display: inline-block;
    background-image: url("/cdcp/resources/images/main/login1.png");
    background-repeat: no-repeat;
    background-size: 30px;
    width: 30px;
    height: 25px;
    cursor: pointer;
    margin-top: 15px;
}
	/* header_right 종료 */
	/* 헤더 종료 */
	
	/* 풋터  ~127번째줄*/
#footer {
	min-width: 600px;	
    width: 100%;
  	height: 100px;
	border-radius: 5px;
	border-style: solid;
    border-width: 2px 0 0 0;
    border-color: #0047AB;
    font-family: 'Cafe24Ohsquare';
}
#footerMenu {
    height: inherit;
    margin: 0 auto;
    color: #0047AB;
    text-align: center;
    font-family: GmarketSansMedium;
    font-size: 12px;
}	
#footerLogo {
    display: inline-block;
    vertical-align: top;
    background-image: url("/cdcp/resources/images/main/logo.png");
    background-repeat: no-repeat;
    background-size: 120px;
    width: 120px;
    height: 40px;
    cursor: pointer;
    text-align: center;
    margin-top: 10px;
}
	/* 풋터 종료 */

	/*슬라이드 화면부분 ~165번째줄 */
*{margin:0;padding:0;}
#content {
	width: 100%;
    height: 2800px;
    margin: 0 auto;
}
ul,li{
	list-style:none;
}
.slide {
	width: 100%;
	height:700px;
	overflow:hidden;
	position:relative;
	background-color: #F4F5F6;
	border-style: solid;
    border-width: 0 0 2px 0;
    border-color: #0047AB;
}
.slide1 {
	width: 100%;
	height:700px;
	overflow:hidden;
	position:relative;
	border-style: solid;
    border-width: 0 0 2px 0;
    border-color: #0047AB;
}
.slide ul {
	width:calc(100% * 4);
	display:flex;transition:1s;
}
.slide li {
	width:calc(100% / 4);
	height:1000px;
}
.slide li:nth-child(1){background:#F4F5F6;}
.slide li:nth-child(2){background:#9565ab3b;}
.slide li:nth-child(3){background:#81ab653b;}
.slide li:nth-child(4){background:#6589ab3b;}
input#pos1,#pos2,#pos3,#pos4 {
	display: none;
}
	/* 라벨 부분 ~184번째줄 */
.slide .bullet{
	position:absolute;
	bottom:20px;
	left:0;
	right:0;
	text-align:center;
	z-index:10;
}
.slide .bullet label{
	width:10px;
	height:10px;
	border-radius:10px;
	border:2px solid #666;
	display:inline-block;
	background:#fff;
	font-size:0;
	transition:0.5s;
	cursor:pointer;
}
/* 메인 1페이지 부분 */
.top {
	height:5%;
	width: 100%;
}
.bottom {
	height: 60%;
	width: 1600px;
	background-color: #0047ab;
	margin: 0 auto;
	display: flex;
}
.bottom_Left {
	display:inline-block;
	vertical-align: top;
	height: 100%;
	width: 50%;
}
.bottom_right {
	display:inline-block;
	vertical-align: top;
	height: 100%;
	width: 50%
}

/* 슬라이드 조작 */
#pos1:checked ~ ul{margin-left:0;}
#pos2:checked ~ ul{margin-left:-100%;}
#pos3:checked ~ ul{margin-left:-200%;}
#pos4:checked ~ ul{margin-left:-300%;}
/* bullet 조작 */
#pos1:checked ~ .bullet label:nth-child(1),
#pos2:checked ~ .bullet label:nth-child(2),
#pos3:checked ~ .bullet label:nth-child(3),
#pos4:checked ~ .bullet label:nth-child(4){background:#666;}

/* Map CSS Start */
	.map_wrap, .map_wrap * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
	.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
	.map_wrap {position:relative;width:100%;height:500px;}
	#menu_wrap {position:absolute;top:0;left:0;bottom:0;width:360px;margin:10px 10px 10px 10px;padding:5px;overflow-y:auto;background:rgba(173, 216, 230, 0.3);z-index: 1;font-size:12px;border-radius: 10px;}
	.bg_white {background:#fff;}
	#menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}
	#menu_wrap .option{text-align: center;}
	#menu_wrap .option p {margin:10px 0;}  
	#menu_wrap .option button, .map_area input[type='button'] {width: 70px;height: 25px;color: white;border-style: none;background-color: #0047AB;border-radius: 5px;font-size: 12px;font-family: GmarketSansMedium;}
	#menu_wrap .option button:hover, .map_area input[type='button']:hover {background-color: #FFD400;color: #282c37;cursor: pointer;}
	#placesList li {list-style: none;}
	#placesList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
	#placesList .item span {display: block;margin-top:4px;}
	#placesList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
	#placesList .item .info{padding:10px 0 10px 55px;}
	#placesList .info .gray {color:#8a8a8a;}
	#placesList .info .jibun {padding-left:26px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
	#placesList .info .tel {color:#009900;}
	#placesList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
	#placesList .item .marker_1 {background-position: 0 -10px;}
	#placesList .item .marker_2 {background-position: 0 -56px;}
	#placesList .item .marker_3 {background-position: 0 -102px}
	#placesList .item .marker_4 {background-position: 0 -148px;}
	#placesList .item .marker_5 {background-position: 0 -194px;}
	#placesList .item .marker_6 {background-position: 0 -240px;}
	#placesList .item .marker_7 {background-position: 0 -286px;}
	#placesList .item .marker_8 {background-position: 0 -332px;}
	#placesList .item .marker_9 {background-position: 0 -378px;}
	#placesList .item .marker_10 {background-position: 0 -423px;}
	#placesList .item .marker_11 {background-position: 0 -470px;}
	#placesList .item .marker_12 {background-position: 0 -516px;}
	#placesList .item .marker_13 {background-position: 0 -562px;}
	#placesList .item .marker_14 {background-position: 0 -608px;}
	#placesList .item .marker_15 {background-position: 0 -654px;}
	#pagination {margin:10px auto;text-align: center;}
	#pagination a {display:inline-block;margin-right:10px;}
	#pagination .on {font-weight: bold; cursor: default;color:#777;}
	#map {display:inline-block;margin-left:420px;}
	.map_area h1 {font-family:'GmarketSansMedium'}
/* Map CSS End */

/* 로그인팝업 */
.popinput {
	width: 50%;
    height: 40px;
    padding: 0px 20px;
    border: 1px solid lightgray;
    outline: none;
    font-size: 13px;
    border-style: solid;
    border-width: 0 0 1px 0;
    border-color: #0047AB;
    outline: 0;
    text-decoration: none;
    letter-spacing: 2px;
    margin: 5px 50px 10px 70px;
}
.cardcaptain {
	width: 100%;
	height: 95px;
	line-height: 110px;
	text-align: center;
	font-size: 25px;
	color: #0047AB;
	letter-spacing: 5px;
	cursor: pointer;
}
#popup {
	height: 320px;
	width: 400px;
	background-color: white;
	border-radius: 70px;
	display: none;
	margin: 300px auto;
	z-index: 50;
}
#loginBtn {
	margin-bottom: 10px;
	margin-top: 5px;
	background: linear-gradient(125deg,#81ecec,#6c5ce7,#81ecec);
	background-size: 200%;
	color: white;
 	font-weight: bold;
	border: none;
	cursor: pointer;
	display: inline;
	margin: 20px 10px 15px 90px;
}
.re {
	display: inline-block;
	vertical-align: top;
	font-size: 11px;
    margin: 10px 0 10px 130px;
}
.new {
	display: inline-block;
	vertical-align: top;
	font-size: 11px;
	margin: 10px 0 10px 0;
}
.re:hover, .new:hover {
	cursor: pointer;
}
.error {
    font-size: 11px;
    color: red;
    visibility: hidden;
}
#errorMsg {
	width: auto;
	height: 100%;
	display:none;
	vertical-align:top;
    color: #e65f3e;
    font-size: 13px;
    text-align: center;
} /* 로그인팝업종료 */
</style>
<script type="text/javascript" src = "resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	/* 카드순위 페이지 이동 */
	$("#ranking").on("click", function(){
		location.href = "card_rank";
	});
	/* 카드검색/비교 페이지 이동 */
	 $("#search").on("click", function(){
		location.href = "search";
	});
	/* 컨텐츠 페이지 이동 */
	$("#contents").on("click", function(){
		location.href = "content";
	});
	
	/* 로그인팝업 실행 */
	$("#imgLogin").on("click", function(){
		$("#popup").css("display","block");
		$(".body").css("display","none");
	});
	
	$("#searchmem, #join").on("click", function() {
		var ival = $(this).prop("id");
		$(location).attr('href',ival);
	});
	
	$(".cardcaptain").on("click", function(){
		location.href = "/cdcp";
	});
	/* 로그인 */
	$("#loginBtn").on("click", function () {
		if($.trim($("#mId").val()) == "") {
			alert("아이디를 입력해 주세요.");
			$("#mId").focus();
		} else if($.trim($("#mPw").val()) == "") {
			alert("비밀번호를 입력해 주세요.");
			$("#mPw").focus();
		} else {
			var params = $("loginForm").serialize();
			
			$.ajax({
				url: "login",
				type: "post",
				dataType: "json",
				data: params,
				success: function (res) {
					if(res.resMsg == "success"){
						location.href = "cdcp";
					} else {
						$(".errorMsg").css("display","inline");
						$("#masage").html("아이디 또는 비밀번호가 일치하지 않습니다.")
					}
				},
				error: function (request, status, error) {
					console.log(error);
				}
			}); //ajax end
		}
	}); //loginBtn end
}); // document ready end
	
/* Map */
	function sendPlace(obj) {
	var placeText = obj.value;
	var choicePlace = confirm('현재 위치에서 ' + placeText + '을/를 찾으신다면 확인을 선택해 주세요.');
	
	if (choicePlace) {
		var locate = "";
		var geocoder = new kakao.maps.services.Geocoder();
		navigator.geolocation.getCurrentPosition(found);
		
		function found(position) {
			var lat = position.coords.latitude; // 위도
			var lon = position.coords.longitude; // 경도
			var coord = new kakao.maps.LatLng(lat,lon);
			
			var callback = function(result, status) {
			    if (status === kakao.maps.services.Status.OK) {
						console.log(result[0].address.address_name);
						locate = result[0].address.address_name;
						document.getElementById('keyword').value = locate + ' ' + placeText;		
						serachButton.click();
			    }
			};
			geocoder.coord2Address(coord.getLng(), coord.getLat(), callback);
		}
	} else {
		var otherPlace = prompt('그렇다면 어느 곳에 있는 ' + placeText + '을/를 찾고 계신가요?');
		if (!otherPlace) {
			alert('정확한 장소를 입력하셔야 찾을 수 있습니다.');
		} else {
			document.getElementById('keyword').value = otherPlace + ' ' + placeText;
			serachButton.click();
		}
	}
}
</script>
</head>
<body>
<!-- 로그인팝업 -->
<div id="popup">
	<div class="cardcaptain">&nbsp;&nbsp;&nbsp;&nbsp;Card Captain&nbsp;&nbsp;&nbsp;&nbsp;X</div>
	<form action="testLogins" id="loginForm" method="post">
			<input type="email" class="popinput" placeholder="ID" id="mId" name="mId">
			<input type="password" class="popinput" placeholder="PW" id="mPw" name="mPw">
		<span class="errorMsg" id="masage" aria-live="assertive"></span>
		<input type="button" class="popinput" id="loginBtn" value="로그인"/><br/>
	</form>
	<div class="re" id="searchmem">ID/PW 찾기</div>
	<div class="new" id="join">|&nbsp;&nbsp;회원 가입</div>
</div>
<!-- 로그인팝업 종료 -->
<div class="body">
	<div id="header">
		<div id="headerWrap">
		<div id="headerLeft">
			<div id="headerLogo"></div>
			<div class="menu1" id="ranking">카드순위</div>
			<div class="menu1" id="search">카드검색/비교</div>
			<div class="menu1" id="contents">컨텐츠</div>
		</div>
		<div id="headerRight">
			<div id="imgSearch"></div>
			<div id="imgLogin"></div>
			</div>
		</div>
	</div>
	<div id="content">
		<div class="slide">
		<input type="radio" name="pos" id="pos1" checked>
		<input type="radio" name="pos" id="pos2">
		<input type="radio" name="pos" id="pos3">
		<input type="radio" name="pos" id="pos4">
		<ul>
			<li>
				<div class="top"></div>
				<div class="bottom">
			 		<div class="bottom_Left"></div>
			 		<div class="bottom_right"></div>
				</div>
			</li>
			<li></li>
			<li></li>
			<li></li>
	    </ul>
	    <p class="bullet">
	      <label for="pos1">1</label>
	      <label for="pos2">2</label>
	      <label for="pos3">3</label>
	      <label for="pos4">4</label>
	    </p>
	  </div><br/>
	<!-- Map html Start -->
	<div class="slide1">
		<div class="map_area" style="width:1600px; border-width:7px;padding:40px;margin:0 auto;">
			<h1>시험 끝! <span>OO카드 들고 </span>나 오늘 집에 안갈래~</h1><br/>
			<input type="button" value="올리브영" onclick="sendPlace(this);">
			<input type="button" value="스타벅스" onclick="sendPlace(this);">
			<input type="button" value="GS25" onclick="sendPlace(this);">
			
			<div class="map_wrap">
				<div id="menu_wrap" class="bg_white">
				<div class="option">
				<div>
					<form onsubmit="searchPlaces(); return false;">
						<input type="text" value="장소 입력" id="keyword" size="40" readonly="readonly" style="border-style:none;border-radius:5px;height:25px;width:350px;"> 
						<button type="submit" id="serachButton" style="visibility: hidden;">검색하기</button>
					</form>
				</div>
				</div>
				
				<ul id="placesList"></ul>
				<div id="pagination"></div>
				</div>
				<div id="map" style="width:70%;height:100%;position:relataive;overflow:hidden;"></div>
			</div>
		</div><br/>
		</div>
	<!-- Map html End -->
		<div class="slide"></div>
	</div>
	<div id="footer">
		<div id="footerMenu">
			<div id="footerLogo"></div>
			<div>서울시 금천구 가산디지털2로 115,509호,811호,1109-1호(가산동,대륭테크노타운3차) 금융조 조장 : 주건정</div>
			<div>Copyright © 2021-2031 CardCaptain All Rights Reserved.</div>
		</div>
	</div>
</div>
<!-- Map Script Start -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=29608232c0ba9b75c6a7e2bffb0fb082&libraries=services,clusterer,drawing"></script>
<script>
// 마커를 담을 배열입니다
var markers = [];

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption);

// 장소 검색 객체를 생성합니다
var ps = new kakao.maps.services.Places();  

// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({zIndex:1});

// 키워드로 장소를 검색합니다
searchPlaces();

// 키워드 검색을 요청하는 함수입니다
function searchPlaces() {
    var keyword = document.getElementById('keyword').value;

    if (!keyword.replace(/^\s+|\s+$/g, '')) {
        alert('키워드를 입력해주세요!');
        return false;
    }
    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
    ps.keywordSearch( keyword, placesSearchCB); 
}

// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
function placesSearchCB(data, status, pagination) {
	var keyword = document.getElementById('keyword').value;
	if (status === kakao.maps.services.Status.OK) {
		displayPlaces(data);// 정상적으로 검색이 완료됐으면 검색 목록과 마커를 표출합니다	
		displayPagination(pagination);// 페이지 번호를 표출합니다
	} else if (status === kakao.maps.services.Status.ZERO_RESULT) {
		if (keyword == '장소 입력') {
			return false;
		} else {
			alert('검색 결과가 존재하지 않습니다.');
			document.getElementById('keyword').value = '장소 입력';
		}
			return;
	} else if (status === kakao.maps.services.Status.ERROR) {
		alert('검색 결과 중 오류가 발생했습니다.');
		return;
	}
}

// 검색 결과 목록과 마커를 표출하는 함수입니다
function displayPlaces(places) {
    var listEl = document.getElementById('placesList'), 
    menuEl = document.getElementById('menu_wrap'),
    fragment = document.createDocumentFragment(), 
    bounds = new kakao.maps.LatLngBounds(), 
    listStr = '';
    
    removeAllChildNods(listEl);// 검색 결과 목록에 추가된 항목들을 제거합니다
    removeMarker();// 지도에 표시되고 있는 마커를 제거합니다
    
		for (var i=0; i<places.length; i++) {
        // 마커를 생성하고 지도에 표시합니다
			var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
			marker = addMarker(placePosition, i), 
			itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다        
			bounds.extend(placePosition);// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해 LatLngBounds 객체에 좌표를 추가합니다

        // 마커와 검색결과 항목에 mouseover 했을때 해당 장소에 인포윈도우에 장소명을 표시합니다 mouseout 했을 때는 인포윈도우를 닫습니다
        (function(marker, title) {
            kakao.maps.event.addListener(marker, 'mouseover', function() {
                displayInfowindow(marker, title);
            });

            kakao.maps.event.addListener(marker, 'mouseout', function() {
                infowindow.close();
            });

            itemEl.onmouseover =  function () {
                displayInfowindow(marker, title);
            };

            itemEl.onmouseout =  function () {
                infowindow.close();
            };
        })(marker, places[i].place_name);

        fragment.appendChild(itemEl);
    }
    // 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
    listEl.appendChild(fragment);
    menuEl.scrollTop = 0;

    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
    map.setBounds(bounds);
}

// 검색결과 항목을 Element로 반환하는 함수입니다
function getListItem(index, places) {
    var el = document.createElement('li'),
    itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
                '<div class="info">' +
                '   <h5>' + places.place_name + '</h5>';

    if (places.road_address_name) {
        itemStr += '    <span>' + places.road_address_name + '</span>' +
                    '   <span class="jibun gray">' +  places.address_name  + '</span>';
    } else {
        itemStr += '    <span>' +  places.address_name  + '</span>'; 
    }                 
      itemStr += '  <span class="tel">' + places.phone  + '</span>' +
                '</div>';           

    el.innerHTML = itemStr;
    el.className = 'item';

    return el;
}

// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
function addMarker(position, idx, title) {
    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
        imgOptions =  {
            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
        },
        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
            marker = new kakao.maps.Marker({
            position: position, // 마커의 위치
            image: markerImage 
        });

    marker.setMap(map); // 지도 위에 마커를 표출합니다
    markers.push(marker);  // 배열에 생성된 마커를 추가합니다

    return marker;
}

// 지도 위에 표시되고 있는 마커를 모두 제거합니다
function removeMarker() {
    for ( var i = 0; i < markers.length; i++ ) {
        markers[i].setMap(null);
    }   
    markers = [];
}

// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
function displayPagination(pagination) {
    var paginationEl = document.getElementById('pagination'),
        fragment = document.createDocumentFragment(),
        i; 

    // 기존에 추가된 페이지번호를 삭제합니다
    while (paginationEl.hasChildNodes()) {
        paginationEl.removeChild (paginationEl.lastChild);
    }

    for (i=1; i<=pagination.last; i++) {
        var el = document.createElement('a');
        el.href = "#";
        el.innerHTML = i;

        if (i===pagination.current) {
            el.className = 'on';
        } else {
            el.onclick = (function(i) {
                return function() {
                    pagination.gotoPage(i);
                }
            })(i);
        }

        fragment.appendChild(el);
    }
    paginationEl.appendChild(fragment);
}

// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
// 인포윈도우에 장소명을 표시합니다
function displayInfowindow(marker, title) {
    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

    infowindow.setContent(content);
    infowindow.open(map, marker);
}

 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
function removeAllChildNods(el) {
    while (el.hasChildNodes()) {
        el.removeChild (el.lastChild);
    }
}
</script>
<!-- Map Script End -->
</body>
</html>