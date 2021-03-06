<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<link href="${root }/img/view/header/logo.ico" rel="shortcut icon" type="image/x-icon">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Wellness_Header</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${root }/css/header.css">
<script>
	function showMenu() {
		const headerBottom = document.querySelector('.header_bottom')
		const divineLine = document.querySelector('.divine_line')
		const hoverShowMenu = document.querySelectorAll('.hover_show_menu')

		for (let i = 0; i < hoverShowMenu.length; i++) {
			hoverShowMenu[i].onmouseover = function() {
				divineLine.classList.remove('hidden')
				headerBottom.classList.remove('hidden')
			}
			// 			hoverShowMenu[i].onmouseout = function() {
			// 				divineLine.classList.add('hidden')
			// 				headerBottom.classList.add('hidden')
			// 			}
		}
		divineLine.onmouseover = function() {
			divineLine.classList.remove('hidden')
			headerBottom.classList.remove('hidden')
		}
		divineLine.onmouseout = function() {
			divineLine.classList.add('hidden')
			headerBottom.classList.add('hidden')
		}
		headerBottom.onmouseover = function() {
			divineLine.classList.remove('hidden')
			headerBottom.classList.remove('hidden')
		}
		headerBottom.onmouseout = function() {
			divineLine.classList.add('hidden')
			headerBottom.classList.add('hidden')
		}
	}
</script>
</head>
<body>

	<div class="header">
		<div class="header_top">
			<div class="logo">
				<a href="${root }/"><img src="${root }/img/view/header/wellness_logo.svg"></a>
			</div>
			<div class="big_category">
				<ul>
					<li class="hover_show_menu" onmouseover="showMenu()">??????????????????????????????</li>
					<li class="hover_show_menu" onmouseover="showMenu()">????????????????????????</li>
					<li class="hover_show_menu" onmouseover="showMenu()">??????/?????? ??????</li>
					<li class="hover_show_menu" onmouseover="showMenu()">??????</li>
					<li class="hover_show_menu" onmouseover="showMenu()">
						<a href="${root }/${member == null ? 'login' : 'logout' }">${member == null ? '?????????' : '????????????' }</a>
               		</li>
					<li class="hover_show_menu" onmouseover="showMenu()"><a href="${root }/mypage?mode=info">???????????????</a></li>
<!-- 					<li> -->
<%-- 						<div class="search_icon" style="background-image: url('${root}/img/view/header/search_icon.svg');"></div> --%>
<!-- 					</li> -->
					<li style="padding: 34px 30px;">
						<div class="language" style="background-image: url('${root}/img/view/header/language.svg'); width: 30px; height: 30px;"></div>
					</li>
				</ul>
			</div>
			<div class="mobile_hamburger">
				<img src="${root }/img/view/header/hamburger.png" onclick="showMobileMenu()">
			</div>
			<div class="mobile_nav_bar">
				<div class="mnb_top">
					<div class="mnbt_function_top">
						<div class="mnb_close"><img src="${root }/img/view/header/close.png" onclick="closeMobileMenu()"></div>
						<div class="mnb_logo"><a href="${root }/"><img src="${root }/img/view/header/wellness_logo.svg"></a></div>
					</div>
					<div class="mnbt_mid">
						<a href="${root }/${empty member ? 'login' : 'logout' }"><img src="${root }/img/view/header/login_icon.png"></a>
					</div>
					<div class="mnbt_bot">
						<c:if test="${empty member }">
							<span style="font-weight: bold"><a href="${root }/login">?????????</a></span><span> ????????? ></span>
						</c:if>
						<c:if test="${not empty member }">
							<span style="font-weight: bold"><a href="${root }/logout">????????????</a></span>
						</c:if>
					</div>
				</div>
				<div class="mnb_bottom">
					<div class="mnbb_menu">
						<div class="mnbb_menu_name" onclick="showInner1(event)">
							<div onclick="showInner2(event)">??????????????????????????????</div>
							<div><img src="${root }/img/view/header/down.png" onclick="showInner3(event)"></div>
						</div>
						<div class="mnbb_menu_inner_name hidden">
							<div><a href="${root }/intro_wellness">???????????????????????????</a></div>
							<div><a href="${root }/intro_platform">???????????????</a></div>
						</div>
					</div>
					<div class="mnbb_menu">
						<div class="mnbb_menu_name" onclick="showInner1(event)">
							<div onclick="showInner2(event)">????????????????????????</div>
							<div><img src="${root }/img/view/header/down.png" onclick="showInner3(event)"></div>
						</div>
						<div class="mnbb_menu_inner_name hidden">
							<div><a href="${root }/tour_list_nature">????????????</a></div>
							<div><a href="${root }/tour_list_ocean">????????????</a></div>
							<div><a href="${root }/tour_list_cosmetic">??????&??????/??????</a></div>
							<div><a href="${root }/tour_list_meal">??????/??????</a></div>
							<div><a href="${root }/tour_list_hotel">??????/?????????</a></div>
						</div>
					</div>
					<div class="mnbb_menu">
						<div class="mnbb_menu_name" onclick="showInner1(event)">
							<div onclick="showInner2(event)">??????/?????? ??????</div>
							<div><img src="${root }/img/view/header/down.png" onclick="showInner3(event)"></div>
						</div>
						<div class="mnbb_menu_inner_name hidden">
							<div><a href="${root }/package_list_nature">????????????</a></div>
							<div><a href="${root }/my_reserve">??????????????????</a></div>
						</div>
					</div>
					<div class="mnbb_menu">
						<div class="mnbb_menu_name" onclick="showInner1(event)">
							<div onclick="showInner2(event)">??????</div>
							<div><img src="${root }/img/view/header/down.png" onclick="showInner3(event)"></div>
						</div>
						<div class="mnbb_menu_inner_name hidden">
							<div><a href="${root }/notice">??????</a></div>
							<div><a href="${root }/event">?????????</a></div>
							<div><a href="${root }/gallery_list">??????????????????</a></div>
							<div><a href="${root }/event_wellness">?????????????????????</a></div>
						</div>
					</div>
					<div class="mnbb_menu">
						<div class="mnbb_menu_name">
							<div><a href="${root }/${empty member ? 'login' : 'logout'}">${empty member ? '?????????' : '????????????' }</a></div>
						</div>
					</div>
					<div class="mnbb_menu">
						<div class="mnbb_menu_name">
							<div><a href="${root }/mypage?mode=info">???????????????</a></div>
						</div>
					</div>
				</div>
			</div>
			<script>
				function showMobileMenu() {
					var mobile_nav_bar = document.querySelector('.mobile_nav_bar')
					mobile_nav_bar.style.display = 'block'
				}
				function closeMobileMenu() {
					var mobile_nav_bar = document.querySelector('.mobile_nav_bar')
					mobile_nav_bar.style.display = 'none'
				}
				function showInner1(event) {
					if(event.target.parentNode.querySelector('.mnbb_menu_inner_name').classList.contains('hidden')) {
						event.target.getElementsByTagName('img')[0].src = '${root}/img/view/header/up.png'
						event.target.parentNode.querySelector('.mnbb_menu_inner_name').classList.remove('hidden')
						event.target.parentNode.querySelector('.mnbb_menu_inner_name').style.display = 'block'
					}else{
						event.target.getElementsByTagName('img')[0].src = '${root}/img/view/header/down.png'
						event.target.parentNode.querySelector('.mnbb_menu_inner_name').classList.add('hidden')
						event.target.parentNode.querySelector('.mnbb_menu_inner_name').style.display = 'none'
					}
				}
				function showInner2(event) {
					if(event.target.parentNode.parentNode.querySelector('.mnbb_menu_inner_name').classList.contains('hidden')) {
						event.target.parentNode.getElementsByTagName('img')[0].src = '${root}/img/view/header/up.png'
						event.target.parentNode.parentNode.querySelector('.mnbb_menu_inner_name').classList.remove('hidden')
						event.target.parentNode.parentNode.querySelector('.mnbb_menu_inner_name').style.display = 'block'
					}else{
						event.target.parentNode.getElementsByTagName('img')[0].src = '${root}/img/view/header/down.png'
						event.target.parentNode.parentNode.querySelector('.mnbb_menu_inner_name').classList.add('hidden')
						event.target.parentNode.parentNode.querySelector('.mnbb_menu_inner_name').style.display = 'none'
					}
				}
				function showInner3(event) {
					if(event.target.parentNode.parentNode.parentNode.querySelector('.mnbb_menu_inner_name').classList.contains('hidden')) {
						event.target.parentNode.parentNode.getElementsByTagName('img')[0].src = '${root}/img/view/header/up.png'
						event.target.parentNode.parentNode.parentNode.querySelector('.mnbb_menu_inner_name').classList.remove('hidden')
						event.target.parentNode.parentNode.parentNode.querySelector('.mnbb_menu_inner_name').style.display = 'block'
					}else{
						event.target.parentNode.parentNode.getElementsByTagName('img')[0].src = '${root}/img/view/header/down.png'
						event.target.parentNode.parentNode.parentNode.querySelector('.mnbb_menu_inner_name').classList.add('hidden')
						event.target.parentNode.parentNode.parentNode.querySelector('.mnbb_menu_inner_name').style.display = 'none'
					}
				}
			</script>
		</div>
		<div class="divine_line hidden" onmouseover="showMenu()"></div>
		<div class="header_bottom hidden">
			<div class="logo"></div>
			<div class="small_category" onmouseover="showMenu()">
				<ul>
					<li><a href="${root }/intro_wellness">???????????????????????????</a></li>
					<li><a href="${root }/intro_platform">???????????????</a></li>
				</ul>
				<ul>
					<li><a href="${root }/tour_list_nature">????????????</a></li>
					<li><a href="${root }/tour_list_ocean">????????????</a></li>
					<li><a href="${root }/tour_list_cosmetic">??????&??????/??????</a></li>
					<li><a href="${root }/tour_list_meal">??????/??????</a></li>
					<li><a href="${root }/tour_list_hotel">??????/?????????</a></li>
				</ul>
				<ul>
					<li><a href="${root }/package_list_nature">????????????</a></li>
					<li><a href="${root }/my_reserve">?????? ????????????</a></li>
				</ul>
				<ul>
					<li><a href="${root }/notice">????????????</a></li>
					<li><a href="${root }/event">?????????</a></li>
					<li><a href="${root }/gallery_list">??????????????????</a></li>
					<li><a href="${root }/event_wellness">?????????????????????</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- ?????? ??? -->

</body>
</html>