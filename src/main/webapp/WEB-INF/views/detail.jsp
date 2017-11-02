<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="네이버 예약, 네이버 예약이 연동된 곳 어디서나 바로 예약하고, 네이버 예약 홈(나의예약)에서 모두 관리할 수 있습니다.">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,minimum-scale=1,user-scalable=no">
    <title>네이버 예약</title>
    <link href="/resources/css/style.css" rel="stylesheet">
</head>

<body>
    <div id="container">
        <div class="header fade">
            <header class="header_tit">
              <%@include  file="header.html" %>
            </header>
        </div>
        <div class="ct main">
            <div>
                <div class="section_visual">
                    <header>
                      <%@include  file="header.html" %>
                    </header>
                    <div class="pagination">
                        <div class="bg_pagination"></div>
                        <div class="figure_pagination">
                            <span class="num">1</span>
                            <span class="num off">/ <span>3</span></span>
                        </div>
                    </div>
                    <div class="group_visual">
                        <div>
                            <div class="container_visual" style="width: 414px;">
                                <ul class="visual_img">
                                </ul>
                            </div>
                            <div class="prev">
                                <div class="prev_inn">
                                    <a href="#" class="btn_prev" title="이전">
                                        <!-- [D] 첫 이미지 이면 off 클래스 추가 -->
                                        <i class="spr_book2 ico_arr6_lt off"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="nxt">
                                <div class="nxt_inn">
                                    <a href="#" class="btn_nxt" title="다음">
                                        <i class="spr_book2 ico_arr6_rt"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="section_store_details">
                </div>
                <div class="section_event">
                </div>
                <div class="section_btn"> <button type="button" class="bk_btn"> <i class="fn fn-nbooking-calender2"></i> <span>예매하기</span> </button> </div>
                <div class="section_review_list">
                    <div class="review_box">
                        <h3 class="title_h3">예매자 한줄평</h3>
                        <div class="short_review_area">
                            <div class="grade_area">
                            </div>
                            <ul class="list_short_review">
                            </ul>
                        </div>
                        <p class="guide"> <i class="spr_book2 ico_bell"></i> <span>네이버 예약을 통해 실제 방문한 이용자가 남긴 평가입니다.</span> </p>
                    </div>
                    <a class="btn_review_more" href="#"> <span>예매자 한줄평 더보기</span> <i class="fn fn-forward1"></i> </a>
                </div>
                <div class="section_info_tab">
                    <!-- [D] tab 선택 시 anchor에 active 추가 -->
                    <ul class="info_tab_lst">
                        <li class="item _detail">
                            <a href="#" class="anchor active"> <span>상세정보</span> </a>
                        </li>
                        <li class="item _path">
                            <a href="#" class="anchor"> <span>오시는길</span> </a>
                        </li>
                    </ul>
                    <!-- [D] 상세정보 외 다른 탭 선택 시 detail_area_wrap에 hide 추가 -->
                    <div class="detail_area_wrap">
                        <div class="detail_area">
                        </div>
                    </div>
                    <!-- [D] 오시는길 외 다른 탭 선택 시 detail_location에 hide 추가 -->
                    <div class="detail_location hide">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer>
        <div class="gototop">
            <a href="#" class="lnk_top"> <span class="lnk_top_text">TOP</span> </a>
        </div>
        <div class="footer">
            <p class="dsc_footer">네이버(주)는 통신판매의 당사자가 아니며, 상품의정보, 거래조건, 이용 및 환불 등과 관련한 의무와 책임은 각 회원에게 있습니다.</p>
            <span class="copyright">© NAVER Corp.</span>
        </div>
    </footer>
  	<div id="imageviewer" class="hide" style="height:100vh; width:100vw; position:fixed; top:0px; left:0px; background:#000000; z-index:1000000;">
  		<button class="btn_close" type="button">닫기</button>
  		<span style="color:#ffffff; float:right"><span class="index_image">1</span>/<span class="total_image">1</span></span>
  		<ul class="image_list" style="overflow:visible; width:100%; height:100%; position:relative; white-space:nowrap; font-size:0;">
      </ul>
  	</div>
    <script type="text/handlebars-template" id="topimages-template">
      {{#each this}}
        <li class="item" style="width: 414px;">
          <img alt="" class="img_thumb" src="/api/images/{{this}}">
          <span class="img_bg"></span>
          <div class="visual_txt">
              <div class="visual_txt_inn">
                  <h2 class="visual_txt_tit"> <span></span> </h2>
                  <p class="visual_txt_dsc"></p>
              </div>
          </div>
        </li>
      {{/each}}
    </script>
    <script type="text/handlebars-template" id="topbuttons-template">
      <div class="group_btn_goto">
        <a class="btn_goto_home" title="홈페이지" href="{{homepage}}" target="siteUrl"> <i class="fn fn-home1"></i> </a>
        <a class="btn_goto_tel" title="전화" href="tel:{{tel}}"> <i class="fn fn-call1"></i> </a>
        <a class="btn_goto_mail" title="이메일" href="mailto:{{email}}"> <i class="fn fn-mail1"></i> </a>
        <a href="#" class="btn_goto_path" title="길찾기" target="_blank"> <i class="fn fn-path-find1"></i> </a>
        <a href="#" class="fn fn-share1 naver-splugin btn_goto_share" title="공유하기"></a>
      </div>
    </script>
    <script type="text/handlebars-template" id="topcontent-template">
      <!-- [D] 펼쳐보기 클릭 시 store_details에 close3 제거 -->
      <div class="store_details close3">
          <p class="dsc">{{content}}</p>
      </div>
      <!-- [D] 토글 상황에 따라 bk_more에 display:none 추가 -->
      <a href="#" class="bk_more _open"> <span class="bk_more_txt">펼쳐보기</span> <i class="fn fn-down2"></i> </a>
      <a href="#" class="bk_more _close hide"> <span class="bk_more_txt">접기</span> <i class="fn fn-up2"></i> </a>
    </script>
    <script type="text/handlebars-template" id="topevent-template">
      <div class="event_info_box">
          <div class="event_info_tit">
              <h4 class="in_tit"> <i class="spr_book ico_evt"></i> <span>이벤트 정보</span> </h4>
          </div>
          <div class="event_info">
              <div class="in_dsc">{{event}}</div>
          </div>
      </div>
    </script>
    <script type="text/handlebars-template" id="reviewsummary-template">
      <!-- [D] 별점 graph_value는 퍼센트 환산하여 width 값을 넣어줌 -->
      <span class="graph_mask"> <em class="graph_value" style="width: {{percentage}}%;"></em> </span>
      <strong class="text_value"> <span>{{score}}</span> <em class="total">5.0</em> </strong>
      <span class="join_count"><em class="green">{{totalCount}}건</em> 등록</span>
    </script>
    <script type="text/handlebars-template" id="reviews-template">
      {{#each this}}
        <li class="list_item" data-id={{id}}>
          <div>
            <div class="review_area">
              <div class="thumb_area{{hasImage}}">
                <a href="#" class="thumb" title="이미지 크게 보기">
                <img width="90" height="90" class="img_vertical_top" src="{{mainImageUri}}" alt="리뷰이미지"></a>
                <span class="img_count">{{imageCount}}</span>
              </div>
              <h4 class="resoc_name">{{productName}}</h4>
              <p class="review">{{review}}</p>
            </div>
            <div class="info_area">
              <div class="review_info">
                <span class="grade">{{score}}</span>
                <span class="name">{{user}}</span>
                <span class="date">{{modifyDate}} 방문</span>
              </div>
            </div>
          </div>
        </li>
      {{/each}}
    </script>
    <script type="text/handlebars-template" id="bottomdetail-template">
      <div class="detail_info">
        <h3 class="blind">상세정보</h3>
        <ul class="detail_info_group">
          <li class="detail_info_lst">
            <strong class="in_tit">[소개]</strong>
            <p class="in_dsc">{{content}}</p>
          </li>
          <li class="detail_info_lst"> <strong class="in_tit">[상세정보]</strong>
            <ul class="in_img_group">
              <li class="in_img_lst">
                <img alt="" class="img_thumb" data-lazy-image="/api/images/{{subImage}}">
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </script>
    <script type="text/handlebars-template" id="location-template">
      <div class="box_store_info no_topline">
          <div id="map" style="width:374px;height:200px;">
            <a href="#" class="store_location" title="지도웹으로 연결">
              <span class="img_border"></span>
              <span class="btn_map"><i class="spr_book2 ico_mapview"></i></span>
            </a>
          </div>
          <h3 class="store_name">엔에이치엔티켓링크(주)</h3>
          <div class="store_info">
              <div class="store_addr_wrap">
                  <span class="fn fn-pin2"></span>
                  <p class="store_addr store_addr_bold">{{placeStreet}}</p>
                  <p class="store_addr">
                      <span class="addr_old">지번</span>
                      <span class="addr_old_detail">{{placeLot}}</span>
                  </p>
                  <p class="store_addr addr_detail">{{placeName}}</p>
              </div>
              <div class="lst_store_info_wrap">
                  <ul class="lst_store_info">
                    <li class="item">
                      <span class="item_lt">
                        <i class="fn fn-call2"></i> <span class="sr_only">전화번호</span>
                      </span>
                      <span class="item_rt"> <a href="tel:{{tel}}" class="store_tel">{{tel}}</a></span>
                    </li>
                    <li class="item">
                      <span class="item_lt">
                        <span>홈페이지</span>
                      </span>
                      <span class="item_rt"> <a href="{{homepage}}">{{homepage}}</a></span>
                    </li>
                    <li class="item">
                      <span class="item_lt">
                        <span>이메일</span>
                      </span>
                      <span class="item_rt"> <a href="mailto:{{email}}">{{email}}</a></span>
                    </li>
                  </ul>
              </div>
          </div>
          <!-- [D] 모바일 브라우저에서 접근 시 column2 추가와 btn_navigation 요소 추가 -->
          <div class="bottom_common_path column2">
              <a href="#" target="_blank" class="btn_path"> <i class="fn fn-path-find2"></i> <span>길찾기</span> </a>
              <a hewf="#" class="btn_navigation before"> <i class="fn fn-navigation2"></i> <span>내비게이션</span> </a>
          </div>
      </div>
    </script>
    <script type="text/x-handlebars-template" id="imageviewer-template">
      {{#each this}}
        <li style="display:inline-block; width:100%; height:100%; text-align:center;">
          <img src="/api/images/{{this}}" style="max-width:100%; max-hegiht:100%;">
        </li>
      {{/each}}
    </script>
    <script type="text/javascript"
      src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=${clientId}&submodules=geocoder"></script>
    <script src="/resources/dist/detail.js"></script>
</body>
</html>
