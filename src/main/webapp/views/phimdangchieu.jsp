<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
   pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link rel="stylesheet" href="
      <c:url value="/resources/css/bootstrap.min.css" />
      ">
      <link rel="stylesheet" href="
      <c:url value="/resources/css/app.css" />
      ">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   </head>
   <body>
      <c:url var="userUrl" value="/user"/>
      <jsp:include page="./templates/header.jsp"></jsp:include>
      <div ng-controller="navbarController" class="galaxy-nav ng-scope">
         <div class="container">
     
            <nav>
               <ul class="primary-nav">
                  <li>
                     <!-- ngIf: isMobile == false -->
                     <a href="<c:url value="/lichchieu" />" ng-if="isMobile == false" class="ng-scope">Mua vé</a><!-- end ngIf: isMobile == false --><!-- ngIf: isMobile == true -->
                  </li>
                  <li class="sub-nav">
                     <!-- ngIf: isMobile == false -->
                     <a href="javascript:;" ng-if="isMobile == false" class="ng-scope dropdown1">Phim <i class="fa fa-caret-down"></i></a>
                     <!-- end ngIf: isMobile == false --><!-- ngIf: isMobile == true -->
                     <div id="sub-menu">
                        <ul class="undefined">
                           <li>
                              <a href="phimdangchieu">Phim đang chiếu</a>
                           </li>
                           <li>
                              <a href="phimsapchieu">Phim sắp chiếu</a>
                           </li>
                        </ul>
                     </div>
                     <div id="sub-menu-movie" class="hidden-sm hidden-xs">
                        <div class="visible-lg-block">
                           <div class="row submenu-title">
                              <div class="col-sm-12">
                                 <h3><a href="phimdangchieu">Phim đang chiếu</a></h3>
                              </div>
                           </div>
                           <div class="row movies-group-header">
                              <!-- ngRepeat: movie in item.movieShowing | limitTo:4 -->
                              <div ng-repeat="movie in item.movieShowing | limitTo:4" class="col-sm-3 ng-scope">
                                 <article style="background-image: url(resources/media/2018/1/23/ho-nhat-duy-2_1516676326357.jpg)" class="article-movie-header">
                                    <a href="/dat-ve/798muoi" style="width:100%;">
                                       <figure>
                                          <figcaption class="overlay">
                                             <div class="movies-content-header">
                                                <galaxy-icon-movie ng-age="movie.age" class="ng-isolate-scope"></galaxy-icon-movie>
                                                <div class="group">
                                                   <div class="btn secondary-white btn-header">Mua vé</div>
                                                </div>
                                             </div>
                                          </figcaption>
                                       </figure>
                                    </a>
                                 </article>
                                 <div class="title-movie-header">
                                    <h4 class="ng-binding">798MƯỜI</h4>
                                    <h4 class="vn ng-binding"></h4>
                                 </div>
                              </div>
                              <!-- end ngRepeat: movie in item.movieShowing | limitTo:4 -->
                              <div ng-repeat="movie in item.movieShowing | limitTo:4" class="col-sm-3 ng-scope">
                                 <article style="background-image: url(resources/media/2018/1/17/250x175_1516162983452.jpg)" class="article-movie-header">
                                    <a href="/dat-ve/peter-rabbit" style="width:100%;">
                                       <figure>
                                          <figcaption class="overlay">
                                             <div class="movies-content-header">
                                                <galaxy-icon-movie ng-age="movie.age" class="ng-isolate-scope"></galaxy-icon-movie>
                                                <div class="group">
                                                   <div class="btn secondary-white btn-header">Mua vé</div>
                                                </div>
                                             </div>
                                          </figcaption>
                                       </figure>
                                    </a>
                                 </article>
                                 <div class="title-movie-header">
                                    <h4 class="ng-binding">PETER RABBIT</h4>
                                    <h4 class="vn ng-binding">THỎ PETER</h4>
                                 </div>
                              </div>
                              <!-- end ngRepeat: movie in item.movieShowing | limitTo:4 -->
                              <div ng-repeat="movie in item.movieShowing | limitTo:4" class="col-sm-3 ng-scope">
                                 <article style="background-image: url(resources/media/2018/1/2/sd_1514877019847.jpg)" class="article-movie-header">
                                    <a href="/dat-ve/muse" style="width:100%;">
                                       <figure>
                                          <figcaption class="overlay">
                                             <div class="movies-content-header">
                                                <galaxy-icon-movie ng-age="movie.age" class="ng-isolate-scope"></galaxy-icon-movie>
                                                <div class="group">
                                                   <div class="btn secondary-white btn-header">Mua vé</div>
                                                </div>
                                             </div>
                                          </figcaption>
                                       </figure>
                                    </a>
                                 </article>
                                 <div class="title-movie-header">
                                    <h4 class="ng-binding">MUSE</h4>
                                    <h4 class="vn ng-binding">NÀNG THƠ CỦA QUỶ</h4>
                                 </div>
                              </div>
                              <!-- end ngRepeat: movie in item.movieShowing | limitTo:4 -->
                              <div ng-repeat="movie in item.movieShowing | limitTo:4" class="col-sm-3 ng-scope">
                                 <article style="background-image: url(resources/media/2017/12/22/thang5rucro_1513914094543.jpg)" class="article-movie-header">
                                    <a href="/dat-ve/thang-nam-ruc-ro" style="width:100%;">
                                       <figure>
                                          <figcaption class="overlay">
                                             <div class="movies-content-header">
                                                <galaxy-icon-movie ng-age="movie.age" class="ng-isolate-scope"></galaxy-icon-movie>
                                                <div class="group">
                                                   <div class="btn secondary-white btn-header">Mua vé</div>
                                                </div>
                                             </div>
                                          </figcaption>
                                       </figure>
                                    </a>
                                 </article>
                                 <div class="title-movie-header">
                                    <h4 class="ng-binding">THÁNG NĂM RỰC RỠ</h4>
                                    <h4 class="vn ng-binding"></h4>
                                 </div>
                              </div>
                              <!-- end ngRepeat: movie in item.movieShowing | limitTo:4 -->
                           </div>
                           <div class="row submenu-title">
                              <div class="col-sm-12">
                                 <h3><a href="phimsapchieu">Phim sắp chiếu</a></h3>
                              </div>
                           </div>
                           <div class="row movies-group-header">
                              <!-- ngRepeat: movie in item.movieCommingSoon | limitTo:4 -->
                              <div ng-repeat="movie in item.movieCommingSoon | limitTo:4" class="col-sm-3 ng-scope">
                                 <article style="background-image: url(resources/media/2018/2/5/450_1517804806339.jpg)" class="article-movie-header">
                                    <a href="/dat-ve/three-billboards-outside-ebbing-missouri" style="width:100%;">
                                       <figure>
                                          <figcaption class="overlay">
                                             <div class="movies-content-header">
                                                <galaxy-icon-movie ng-age="movie.age" class="ng-isolate-scope"></galaxy-icon-movie>
                                                <div class="group">
                                                   <div class="btn secondary-white btn-header">Mua vé</div>
                                                </div>
                                             </div>
                                          </figcaption>
                                       </figure>
                                    </a>
                                 </article>
                                 <div class="title-movie-header">
                                    <h4 class="ng-binding">THREE BILLBOARDS OUTSIDE EBBING, MISSOURI</h4>
                                    <h4 class="vn ng-binding">THREE BILLBOARDS - TRUY TÌM CÔNG LÝ</h4>
                                 </div>
                              </div>
                              <!-- end ngRepeat: movie in item.movieCommingSoon | limitTo:4 -->
                              <div ng-repeat="movie in item.movieCommingSoon | limitTo:4" class="col-sm-3 ng-scope">
                                 <article style="background-image: url(resources/media/2018/3/2/detective-k34_1519975450042.jpg)" class="article-movie-header">
                                    <a href="/dat-ve/detective-k-secret-of-the-living-dead" style="width:100%;">
                                       <figure>
                                          <figcaption class="overlay">
                                             <div class="movies-content-header">
                                                <galaxy-icon-movie ng-age="movie.age" class="ng-isolate-scope"></galaxy-icon-movie>
                                                <div class="group">
                                                   <div class="btn secondary-white btn-header">Mua vé</div>
                                                </div>
                                             </div>
                                          </figcaption>
                                       </figure>
                                    </a>
                                 </article>
                                 <div class="title-movie-header">
                                    <h4 class="ng-binding">DETECTIVE K: SECRET OF THE LIVING DEAD</h4>
                                    <h4 class="vn ng-binding">THÁM TỬ K: MA CÀ RỒNG BÁO THÙ</h4>
                                 </div>
                              </div>
                              <!-- end ngRepeat: movie in item.movieCommingSoon | limitTo:4 -->
                              <div ng-repeat="movie in item.movieCommingSoon | limitTo:4" class="col-sm-3 ng-scope">
                                 <article style="background-image: url(resources/media/2018/1/16/awt-_1516092287588.jpg)" class="article-movie-header">
                                    <a href="/dat-ve/nep-gap-thoi-gian" style="width:100%;">
                                       <figure>
                                          <figcaption class="overlay">
                                             <div class="movies-content-header">
                                                <galaxy-icon-movie ng-age="movie.age" class="ng-isolate-scope"></galaxy-icon-movie>
                                                <div class="group">
                                                   <div class="btn secondary-white btn-header">Mua vé</div>
                                                </div>
                                             </div>
                                          </figcaption>
                                       </figure>
                                    </a>
                                 </article>
                                 <div class="title-movie-header">
                                    <h4 class="ng-binding">A WRINKLE IN TIME</h4>
                                    <h4 class="vn ng-binding">NẾP GẤP THỜI GIAN</h4>
                                 </div>
                              </div>
                              <!-- end ngRepeat: movie in item.movieCommingSoon | limitTo:4 -->
                              <div ng-repeat="movie in item.movieCommingSoon | limitTo:4" class="col-sm-3 ng-scope">
                                 <article style="background-image: url(resources/media/2018/3/2/redsea2_1519976970593.jpg)" class="article-movie-header">
                                    <a href="/dat-ve/operation-red-sea" style="width:100%;">
                                       <figure>
                                          <figcaption class="overlay">
                                             <div class="movies-content-header">
                                                <galaxy-icon-movie ng-age="movie.age" class="ng-isolate-scope"></galaxy-icon-movie>
                                                <div class="group">
                                                   <div class="btn secondary-white btn-header">Mua vé</div>
                                                </div>
                                             </div>
                                          </figcaption>
                                       </figure>
                                    </a>
                                 </article>
                                 <div class="title-movie-header">
                                    <h4 class="ng-binding">OPERATION RED SEA</h4>
                                    <h4 class="vn ng-binding">ĐIỆP VỤ BIỂN ĐỎ</h4>
                                 </div>
                              </div>
                              <!-- end ngRepeat: movie in item.movieCommingSoon | limitTo:4 -->
                           </div>
                        </div>
                     </div>
                  </li>
                  <li class="sub-nav">
                     <!-- ngIf: isMobile == false --><a href="javascript:;" ng-if="isMobile == false" class="ng-scope">Góc điện ảnh</a><!-- end ngIf: isMobile == false --><!-- ngIf: isMobile == true -->
                     <div id="sub-menu">
                        <ul class="undefined">
                           <li><a href="dien-anh">Thể loại phim</a></li>
                           <li><a href="dien-vien">Diễn viên</a></li>
                           <li><a href="dao-dien">Đạo diễn</a></li>
                           <li><a href="binh-luan-phim">Bình luận phim</a></li>
                           <li><a href="movie-blog">Blog điện ảnh</a></li>
                        </ul>
                     </div>
                  </li>
                  <li class="sub-nav">
                     <!-- ngIf: isMobile == false --><a href="javascript:;" ng-if="isMobile == false" class="ng-scope">Sự kiện</a><!-- end ngIf: isMobile == false --><!-- ngIf: isMobile == true -->
                     <div id="sub-menu">
                        <ul class="undefined">
                           <li><a href="khuyen-mai">Ưu đãi</a></li>
                           <li><a href="phim-hay">Phim hay tháng</a></li>
                        </ul>
                     </div>
                  </li>
                  <li>
                     <!-- ngIf: isMobile == false --><a href="rap-gia-ve" ng-if="isMobile == false" class="ng-scope">Rạp/Giá Vé</a><!-- end ngIf: isMobile == false --><!-- ngIf: isMobile == true -->
                  </li>
                  <li>
                     <!-- ngIf: isMobile == false --><a href="gop-y" ng-if="isMobile == false" class="ng-scope">Hỗ trợ</a><!-- end ngIf: isMobile == false --><!-- ngIf: isMobile == true -->
                  </li>
                  <li>
                     <!-- ngIf: isMobile == false --><a href="chinh-sach" ng-if="isMobile == false" class="ng-scope">Thành viên</a><!-- end ngIf: isMobile == false --><!-- ngIf: isMobile == true -->
                  </li>
               </ul>
            </nav>
         </div>
      </div>
  









     <div class="container">
   <div class="row">
      <div class="col-md-12">
         <div class="tab-movies">
            <div class="tab-movies-line">
               <ul class="nav nav-tabs">
                  <li class="active"><a onclick="javascript:window.history.pushState(null, null, &quot;/phim-dang-chieu/&quot;); window.location.reload();">Phim đang chiếu</a></li>
                  <li><a onclick="javascript:window.history.pushState(null, null, &quot;/phimsapchieu/&quot;); window.location.reload();">Phim sắp chiếu</a></li>
               </ul>
               <div class="tab-content">
                  <div id="tab_onshow" class="tab-pane active">
                     <div class="row watchmovie-group animated fadeInUp">

                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2018/3/7/poster-simplified_1520397161679.jpg">
                              <a href="/dat-ve/pacific-rim-uprising">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i class="icon-c13"></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <div class="title-watchmovie">
                              <h4>PACIFIC RIM UPRISING</h4>
                              <h4 class="vn">PACIFIC RIM: TRỖI DẬY</h4>
                           </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2018/3/14/basedonatruestory-poster-official-2_1521002181544.jpg">
                              <a href="/dat-ve/based-on-a-true-story">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <div class="title-watchmovie">
                              <h4>BASED ON A TRUE STORY</h4>
                              <h4 class="vn">TIỂU THUYẾT GIA CUỒNG LOẠN</h4>
                           </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2018/1/30/thang-5-ruc-ro_1517297369206.jpg">
                              <a href="/dat-ve/thang-nam-ruc-ro">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i class="icon-c16"></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <div class="title-watchmovie">
                              <h4>THÁNG NĂM RỰC RỠ</h4>
                              <h4 class="vn"></h4>
                           </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2018/3/7/2_1520397193030.jpg">
                              <a href="/dat-ve/sherlock-gnomes">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <div class="title-watchmovie">
                              <h4>SHERLOCK GNOMES</h4>
                              <h4 class="vn">SHERLOCK GNOMES: THÁM TỬ SIÊU QUẬY</h4>
                           </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2018/3/19/xac-song-poster-version-2_1521454369450.jpg">
                              <a href="/dat-ve/the-cured">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i class="icon-c18"></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <div class="title-watchmovie">
                              <h4>THE CURED</h4>
                              <h4 class="vn">XÁC SỐNG</h4>
                           </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2018/3/13/gringo1-1520907278439_1520910432384.jpg">
                              <a href="/dat-ve/gringo">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i class="icon-c18"></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <div class="title-watchmovie">
                              <h4>GRINGO</h4>
                              <h4 class="vn">NHỌ GẶP HÊN</h4>
                           </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2018/3/12/07-talltales-la_1520834070830.jpg">
                              <a href="/dat-ve/tall-tales">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <div class="title-watchmovie">
                              <h4>TALL TALES</h4>
                              <h4 class="vn">DẾ APOLLO VÀ NỮ HOÀNG</h4>
                           </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2018/2/22/thelod_1519284787240.jpg">
                              <a href="/dat-ve/lodgers">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i class="icon-c18"></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <div class="title-watchmovie">
                              <h4>THE LODGERS</h4>
                              <h4 class="vn">LUẬT QUỶ</h4>
                           </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2018/3/13/nhungcogaivagangto_1520913844907.jpg">
                              <a href="/dat-ve/girl-2">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i class="icon-c16"></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <div class="title-watchmovie">
                              <h4>GIRL 2</h4>
                              <h4 class="vn">NHỮNG CÔ GÁI VÀ GĂNG TƠ</h4>
                           </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2018/3/7/4_1520396379604.jpg">
                              <a href="/dat-ve/operation-red-sea">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i class="icon-c18"></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <div class="title-watchmovie">
                              <h4>OPERATION RED SEA</h4>
                              <h4 class="vn">ĐIỆP VỤ BIỂN ĐỎ</h4>
                           </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2018/2/28/goodbye-christopher-robin---poster_1519785073692.jpg">
                              <a href="/dat-ve/goodbye-christopher-robin">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <div class="title-watchmovie">
                              <h4>GOODBYE CHRISTOPHER ROBIN</h4>
                              <h4 class="vn">TẠM BIỆT CHRISTOPHER ROBIN</h4>
                           </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2018/3/19/tomb-raider---official-poster_1521426676502.jpg">
                              <a href="/dat-ve/tomb-raider">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i class="icon-c16"></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <div class="title-watchmovie">
                              <h4>TOMB RAIDER</h4>
                              <h4 class="vn">TOMB RAIDER: HUYỀN THOẠI BẮT ĐẦU</h4>
                           </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2018/1/23/ho-nhat-duy_1516676324588.jpg">
                              <a href="/dat-ve/798muoi">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i class="icon-c16"></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <div class="title-watchmovie">
                              <h4>798MƯỜI</h4>
                              <h4 class="vn"></h4>
                           </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2018/1/16/sieusaongo_1516069933589.jpg">
                              <a href="/dat-ve/sieu-sao-sieu-ngo">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i class="icon-c13"></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <div class="title-watchmovie">
                              <h4>SIÊU SAO SIÊU NGỐ</h4>
                              <h4 class="vn"></h4>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div id="tab_oncomming" class="tab-pane">
                     <div class="row watchmovie-group animated fadeInUp">
                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2018/3/13/hurricane-heist---poster_1520915386246.jpg">
                              <a href="/dat-ve/the-hurricane-heist">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <!--article.article-watchmovie(style='background-image: url(#{item.imagePortrait})')--><!--  figure--><!--    figcaption.overlay--><!--      .movies-content--><!--        i(class='#{getIcon(item.age)}')--><!--        .group--><!--          a.btn.secondary-white(href='#{getUrlMovieDetail(item.slug)}') #{i18n('Mua vé')}-->
                           <div class="title-watchmovie">
                              <h4>THE HURRICANE HEIST</h4>
                              <h4 class="vn">VỤ CƯỚP TRONG TÂM BÃO</h4>
                           </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2018/3/19/fa-official-final_1521425877691.jpg">
                              <a href="/dat-ve/ong-ngoai-tuoi-30">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <!--article.article-watchmovie(style='background-image: url(#{item.imagePortrait})')--><!--  figure--><!--    figcaption.overlay--><!--      .movies-content--><!--        i(class='#{getIcon(item.age)}')--><!--        .group--><!--          a.btn.secondary-white(href='#{getUrlMovieDetail(item.slug)}') #{i18n('Mua vé')}-->
                           <div class="title-watchmovie">
                              <h4>ÔNG NGOẠI TUỔI 30</h4>
                              <h4 class="vn"></h4>
                           </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2018/3/22/ploey-bay-di-dung-so-2_1521690282861.JPG">
                              <a href="/dat-ve/ploey-you-never-fly-alone">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <!--article.article-watchmovie(style='background-image: url(#{item.imagePortrait})')--><!--  figure--><!--    figcaption.overlay--><!--      .movies-content--><!--        i(class='#{getIcon(item.age)}')--><!--        .group--><!--          a.btn.secondary-white(href='#{getUrlMovieDetail(item.slug)}') #{i18n('Mua vé')}-->
                           <div class="title-watchmovie">
                              <h4>PLOEY - YOU NEVER FLY ALONE</h4>
                              <h4 class="vn">PLOEY BAY ĐI ĐỪNG SỢ</h4>
                           </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2018/1/3/ready_1514971830323.jpg">
                              <a href="/dat-ve/ready-player-one">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <!--article.article-watchmovie(style='background-image: url(#{item.imagePortrait})')--><!--  figure--><!--    figcaption.overlay--><!--      .movies-content--><!--        i(class='#{getIcon(item.age)}')--><!--        .group--><!--          a.btn.secondary-white(href='#{getUrlMovieDetail(item.slug)}') #{i18n('Mua vé')}-->
                           <div class="title-watchmovie">
                              <h4>READY PLAYER ONE</h4>
                              <h4 class="vn"></h4>
                           </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2017/12/28/xxxx300_1514429531192.jpg">
                              <a href="/dat-ve/do-you-see-me">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <!--article.article-watchmovie(style='background-image: url(#{item.imagePortrait})')--><!--  figure--><!--    figcaption.overlay--><!--      .movies-content--><!--        i(class='#{getIcon(item.age)}')--><!--        .group--><!--          a.btn.secondary-white(href='#{getUrlMovieDetail(item.slug)}') #{i18n('Mua vé')}-->
                           <div class="title-watchmovie">
                              <h4>DO YOU SEE ME</h4>
                              <h4 class="vn">THẰNG HỀ</h4>
                           </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2018/3/23/fa-cgv-yebc-poster-chinh--cmyk-7-2_1521779124197.jpg">
                              <a href="/dat-ve/yeu-em-bat-chap">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <!--article.article-watchmovie(style='background-image: url(#{item.imagePortrait})')--><!--  figure--><!--    figcaption.overlay--><!--      .movies-content--><!--        i(class='#{getIcon(item.age)}')--><!--        .group--><!--          a.btn.secondary-white(href='#{getUrlMovieDetail(item.slug)}') #{i18n('Mua vé')}-->
                           <div class="title-watchmovie">
                              <h4>YÊU EM BẤT CHẤP</h4>
                              <h4 class="vn"></h4>
                           </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2018/1/15/rampage1_1515983602990.jpg">
                              <a href="/dat-ve/rampage">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <!--article.article-watchmovie(style='background-image: url(#{item.imagePortrait})')--><!--  figure--><!--    figcaption.overlay--><!--      .movies-content--><!--        i(class='#{getIcon(item.age)}')--><!--        .group--><!--          a.btn.secondary-white(href='#{getUrlMovieDetail(item.slug)}') #{i18n('Mua vé')}-->
                           <div class="title-watchmovie">
                              <h4>RAMPAGE</h4>
                              <h4 class="vn">SIÊU THÚ CUỒNG NỘ</h4>
                           </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2018/3/19/braven1_1521447831332.jpg">
                              <a href="/dat-ve/braven">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <!--article.article-watchmovie(style='background-image: url(#{item.imagePortrait})')--><!--  figure--><!--    figcaption.overlay--><!--      .movies-content--><!--        i(class='#{getIcon(item.age)}')--><!--        .group--><!--          a.btn.secondary-white(href='#{getUrlMovieDetail(item.slug)}') #{i18n('Mua vé')}-->
                           <div class="title-watchmovie">
                              <h4>BRAVEN</h4>
                              <h4 class="vn"></h4>
                           </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2018/3/23/quiet-palce_1521774800776.jpg">
                              <a href="/dat-ve/a-quiet-place">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <!--article.article-watchmovie(style='background-image: url(#{item.imagePortrait})')--><!--  figure--><!--    figcaption.overlay--><!--      .movies-content--><!--        i(class='#{getIcon(item.age)}')--><!--        .group--><!--          a.btn.secondary-white(href='#{getUrlMovieDetail(item.slug)}') #{i18n('Mua vé')}-->
                           <div class="title-watchmovie">
                              <h4>A QUIET PLACE</h4>
                              <h4 class="vn"></h4>
                           </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2018/3/19/teaser-ba-chang-khuyet_1521449380094.jpg">
                              <a href="/dat-ve/lat-mat-ba-chang-khuyet">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <!--article.article-watchmovie(style='background-image: url(#{item.imagePortrait})')--><!--  figure--><!--    figcaption.overlay--><!--      .movies-content--><!--        i(class='#{getIcon(item.age)}')--><!--        .group--><!--          a.btn.secondary-white(href='#{getUrlMovieDetail(item.slug)}') #{i18n('Mua vé')}-->
                           <div class="title-watchmovie">
                              <h4>LẬT MẶT: BA CHÀNG KHUYẾT</h4>
                              <h4 class="vn"></h4>
                           </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2018/2/22/dw300_1519283565582.jpg">
                              <a href="/dat-ve/death-wish">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <!--article.article-watchmovie(style='background-image: url(#{item.imagePortrait})')--><!--  figure--><!--    figcaption.overlay--><!--      .movies-content--><!--        i(class='#{getIcon(item.age)}')--><!--        .group--><!--          a.btn.secondary-white(href='#{getUrlMovieDetail(item.slug)}') #{i18n('Mua vé')}-->
                           <div class="title-watchmovie">
                              <h4>DEATH WISH</h4>
                              <h4 class="vn"></h4>
                           </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2018/3/19/charming_1521451504008.jpg">
                              <a href="/dat-ve/charming">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <!--article.article-watchmovie(style='background-image: url(#{item.imagePortrait})')--><!--  figure--><!--    figcaption.overlay--><!--      .movies-content--><!--        i(class='#{getIcon(item.age)}')--><!--        .group--><!--          a.btn.secondary-white(href='#{getUrlMovieDetail(item.slug)}') #{i18n('Mua vé')}-->
                           <div class="title-watchmovie">
                              <h4>CHARMING</h4>
                              <h4 class="vn">HOÀNG TỬ HÀO HOA</h4>
                           </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2018/3/19/mv5bmjmxnjy2mdu1ov5bml5banbnxkftztgwnzy1mtuwntm--v1-sy1000-cr0-0-674-1000-al-_1521427712003.jpg">
                              <a href="/dat-ve/avengers-infinity-war">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <!--article.article-watchmovie(style='background-image: url(#{item.imagePortrait})')--><!--  figure--><!--    figcaption.overlay--><!--      .movies-content--><!--        i(class='#{getIcon(item.age)}')--><!--        .group--><!--          a.btn.secondary-white(href='#{getUrlMovieDetail(item.slug)}') #{i18n('Mua vé')}-->
                           <div class="title-watchmovie">
                              <h4>AVENGERS: INFINITY WAR</h4>
                              <h4 class="vn">AVENGERS: CUỘC CHIẾN VÔ CỰC</h4>
                           </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2018/3/8/100ngaybenem_1520476853185.jpg">
                              <a href="/dat-ve/100-ngay-ben-em">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <!--article.article-watchmovie(style='background-image: url(#{item.imagePortrait})')--><!--  figure--><!--    figcaption.overlay--><!--      .movies-content--><!--        i(class='#{getIcon(item.age)}')--><!--        .group--><!--          a.btn.secondary-white(href='#{getUrlMovieDetail(item.slug)}') #{i18n('Mua vé')}-->
                           <div class="title-watchmovie">
                              <h4>100 NGÀY BÊN EM</h4>
                              <h4 class="vn"></h4>
                           </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2018/3/23/11h-officialposter-mar02-50cm-x-70cm1_1521778168696.jpg">
                              <a href="/dat-ve/11-niem-hy-vong">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <!--article.article-watchmovie(style='background-image: url(#{item.imagePortrait})')--><!--  figure--><!--    figcaption.overlay--><!--      .movies-content--><!--        i(class='#{getIcon(item.age)}')--><!--        .group--><!--          a.btn.secondary-white(href='#{getUrlMovieDetail(item.slug)}') #{i18n('Mua vé')}-->
                           <div class="title-watchmovie">
                              <h4>11 NIỀM HY VỌNG</h4>
                              <h4 class="vn"></h4>
                           </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2018/1/4/slender-man---teaser_1515041391634.jpg">
                              <a href="/dat-ve/slender-man">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <!--article.article-watchmovie(style='background-image: url(#{item.imagePortrait})')--><!--  figure--><!--    figcaption.overlay--><!--      .movies-content--><!--        i(class='#{getIcon(item.age)}')--><!--        .group--><!--          a.btn.secondary-white(href='#{getUrlMovieDetail(item.slug)}') #{i18n('Mua vé')}-->
                           <div class="title-watchmovie">
                              <h4>SLENDER MAN</h4>
                              <h4 class="vn"></h4>
                           </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2018/2/21/dp2_1519188019784.jpg">
                              <a href="/dat-ve/deadpool-2">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <!--article.article-watchmovie(style='background-image: url(#{item.imagePortrait})')--><!--  figure--><!--    figcaption.overlay--><!--      .movies-content--><!--        i(class='#{getIcon(item.age)}')--><!--        .group--><!--          a.btn.secondary-white(href='#{getUrlMovieDetail(item.slug)}') #{i18n('Mua vé')}-->
                           <div class="title-watchmovie">
                              <h4>DEADPOOL 2</h4>
                              <h4 class="vn"></h4>
                           </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2018/1/16/a_1516092694568.jpg">
                              <a href="/dat-ve/the-gioi-khung-long-vuong-quoc-sup-do">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <!--article.article-watchmovie(style='background-image: url(#{item.imagePortrait})')--><!--  figure--><!--    figcaption.overlay--><!--      .movies-content--><!--        i(class='#{getIcon(item.age)}')--><!--        .group--><!--          a.btn.secondary-white(href='#{getUrlMovieDetail(item.slug)}') #{i18n('Mua vé')}-->
                           <div class="title-watchmovie">
                              <h4>JURASSIC WORLD: FALLEN KINGDOM</h4>
                              <h4 class="vn">THẾ GIỚI KHỦNG LONG: VƯƠNG QUỐC SỤP ĐỔ</h4>
                           </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2018/1/16/i2_1516092946164.jpg">
                              <a href="/dat-ve/incredible-2">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <!--article.article-watchmovie(style='background-image: url(#{item.imagePortrait})')--><!--  figure--><!--    figcaption.overlay--><!--      .movies-content--><!--        i(class='#{getIcon(item.age)}')--><!--        .group--><!--          a.btn.secondary-white(href='#{getUrlMovieDetail(item.slug)}') #{i18n('Mua vé')}-->
                           <div class="title-watchmovie">
                              <h4>INCREDIBLE 2</h4>
                              <h4 class="vn"></h4>
                           </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/m/v/mv5bnwm4mwexotutndk1ms00ymrhlwi0nzitzmy3mde2zjzkogiwxkeyxkfqcgdeqxvyntayodkwoq@@.jpg">
                              <a href="/dat-ve/ant-man-and-the-wasp">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <!--article.article-watchmovie(style='background-image: url(#{item.imagePortrait})')--><!--  figure--><!--    figcaption.overlay--><!--      .movies-content--><!--        i(class='#{getIcon(item.age)}')--><!--        .group--><!--          a.btn.secondary-white(href='#{getUrlMovieDetail(item.slug)}') #{i18n('Mua vé')}-->
                           <div class="title-watchmovie">
                              <h4>ANT-MAN AND THE WASP</h4>
                              <h4 class="vn"></h4>
                           </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2018/3/22/ht-3---teaser-poster---vietnam1_1521687151846.jpg">
                              <a href="/dat-ve/hotel-transylvania-3">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <!--article.article-watchmovie(style='background-image: url(#{item.imagePortrait})')--><!--  figure--><!--    figcaption.overlay--><!--      .movies-content--><!--        i(class='#{getIcon(item.age)}')--><!--        .group--><!--          a.btn.secondary-white(href='#{getUrlMovieDetail(item.slug)}') #{i18n('Mua vé')}-->
                           <div class="title-watchmovie">
                              <h4>HOTEL TRANSYLVANIA 3: SUMMER VACATION</h4>
                              <h4 class="vn">KHÁCH SẠN HUYỀN BÍ 3: KỲ NGHỈ MA CÀ RỒNG</h4>
                           </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2018/2/5/300_1517827517048.jpg">
                              <a href="/dat-ve/mission-impossible-fallout">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <!--article.article-watchmovie(style='background-image: url(#{item.imagePortrait})')--><!--  figure--><!--    figcaption.overlay--><!--      .movies-content--><!--        i(class='#{getIcon(item.age)}')--><!--        .group--><!--          a.btn.secondary-white(href='#{getUrlMovieDetail(item.slug)}') #{i18n('Mua vé')}-->
                           <div class="title-watchmovie">
                              <h4>MISSION: IMPOSSIBLE - FALLOUT</h4>
                              <h4 class="vn"></h4>
                           </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2018/3/14/christopherrobin3_1521003377952.jpg">
                              <a href="/dat-ve/christopher-robin">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <!--article.article-watchmovie(style='background-image: url(#{item.imagePortrait})')--><!--  figure--><!--    figcaption.overlay--><!--      .movies-content--><!--        i(class='#{getIcon(item.age)}')--><!--        .group--><!--          a.btn.secondary-white(href='#{getUrlMovieDetail(item.slug)}') #{i18n('Mua vé')}-->
                           <div class="title-watchmovie">
                              <h4>CHRISTOPHER ROBIN</h4>
                              <h4 class="vn"></h4>
                           </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2018/2/27/predpost2018-large_1519700415232.jpg">
                              <a href="/dat-ve/the-predator">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <!--article.article-watchmovie(style='background-image: url(#{item.imagePortrait})')--><!--  figure--><!--    figcaption.overlay--><!--      .movies-content--><!--        i(class='#{getIcon(item.age)}')--><!--        .group--><!--          a.btn.secondary-white(href='#{getUrlMovieDetail(item.slug)}') #{i18n('Mua vé')}-->
                           <div class="title-watchmovie">
                              <h4>THE PREDATOR</h4>
                              <h4 class="vn"></h4>
                           </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2018/2/27/xmen_1519696633757.jpg">
                              <a href="/dat-ve/xmen-dark-phoenix">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <!--article.article-watchmovie(style='background-image: url(#{item.imagePortrait})')--><!--  figure--><!--    figcaption.overlay--><!--      .movies-content--><!--        i(class='#{getIcon(item.age)}')--><!--        .group--><!--          a.btn.secondary-white(href='#{getUrlMovieDetail(item.slug)}') #{i18n('Mua vé')}-->
                           <div class="title-watchmovie">
                              <h4>X-MEN: DARK PHOENIX</h4>
                              <h4 class="vn"></h4>
                           </div>
                        </div>

                        <div class="col-md-3 col-sm-3 col-xs-6 watchmovie-item">
                           <div class="article-watchmovie">
                              <img src="resources/media/2018/1/16/the-new-mutants_1516097970691.jpg">
                              <a href="/dat-ve/the-new-mutants">
                                 <div class="decription-hover overlay">
                                    <div class="movies-content">
                                       <i></i>
                                       <div class="group">
                                          <div class="btn secondary-white">mua vé</div>
                                       </div>
                                    </div>
                                 </div>
                              </a>
                           </div>
                           <!--article.article-watchmovie(style='background-image: url(#{item.imagePortrait})')--><!--  figure--><!--    figcaption.overlay--><!--      .movies-content--><!--        i(class='#{getIcon(item.age)}')--><!--        .group--><!--          a.btn.secondary-white(href='#{getUrlMovieDetail(item.slug)}') #{i18n('Mua vé')}-->
                           <div class="title-watchmovie">
                              <h4>THE NEW MUTANTS</h4>
                              <h4 class="vn">DỊ NHÂN THẾ HỆ MỚI</h4>
                           </div>
                        </div>

                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>

   <div class="row">
      <div class="col-md-12 col-xs-12">
         <section id="content-seo">
            <h3>Galaxy Cinema</h3>
            <div class="row content-seo">
               <div class="col-md-12">
                  <div class="content-text">
                     <p><a href="https://www.galaxycine.vn/"><strong>Galaxy Cinema</strong></a> luôn cập nhật các <strong><a href="https://www.galaxycine.vn/phim-dang-chieu">phim hay nhất</a>, <a href="https://www.galaxycine.vn/phim-dang-chieu">phim mới nhất</a>, <a href="https://www.galaxycine.vn/phim-dang-chieu">phim bom tấn</a></strong> đủ các thể loại. <a href="https://www.galaxycine.vn/phim-dang-chieu"><strong>Phim đang chiếu</strong></a> tại <strong><a href="https://www.galaxycine.vn/">Galaxy Cinema</a> </strong>luôn đủ các thể loại hành động kinh dị tình cảm, hài hước… và phù hợp mọi lứa tuổi.</p>
                     <p>Ngoài ra, để giúp cho cho những bạn yêu điện ảnh có thêm được nhiều thông tin về những yêu thích. <a href="https://www.galaxycine.vn/"><strong>Galaxy Cinema</strong></a> sở hữu một <a href="https://www.galaxycine.vn/dien-anh">kho dữ liệu điện ảnh</a> khổng lồ bao gồm hơn 10,000 tựa phim nổi tiếng. Trong đó có những bài bình luận đặc sắc từ những nhà bình phim chuyên nghiệp, thông tin diễn viên và đạo diễn cùng với những thông tin bên lề vô cùng hấp dẫn. Những <strong><a href="https://www.galaxycine.vn/phim-dang-chieu">phim đang chiếu</a> </strong>hoặc <a href="https://www.galaxycine.vn/phimsapchieu"><strong>phim</strong> <strong>sắp chiếu</strong> </a>đều được liên kết với kho dữ liệu này giúp bạn<a href="https://www.galaxycine.vn/phim-dang-chieu"> <strong>xem phim hay</strong> </a>một cách trọn vẹn và đầy đủ nhất mà tại Việt Nam chưa có một website <a href="https://www.galaxycine.vn/"><em>rạp chiếu phim</em></a> nào làm&nbsp;được.</p>
                     <p><i style="font-family: Calibri, sans-serif; font-size: 11pt; text-align: justify;"><span style="font-size:12.0pt"><span style="line-height:115%"><span style="font-family:&quot;Cambria&quot;,&quot;serif&quot;">Với hàng loạt bom tấn được tung ra, các thế lực anh hùng mới đang chực chờ đánh chiếm màn ảnh rộng trong tháng 3 này.</span></span></span></i></p>
                     <p style="text-align:justify; margin:0in 0in 10pt; margin-right:0in; margin-left:0in"><span style="font-size:11pt"><span style="line-height:115%"><span style="font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><i><span style="font-size:12.0pt"><span style="line-height:115%"><span style="font-family:&quot;Cambria&quot;,&quot;serif&quot;">Bom tấn hành động <a href="https://www.galaxycine.vn/dat-ve/pacific-rim-uprising">Pacific Rim</a> quay trở lại với những người hùng mới -&nbsp; trẻ tuổi và nhiệt huyết hơn. </span></span></span></i></span></span></span></p>
                     <p style="text-align:justify; margin:0in 0in 10pt; margin-right:0in; margin-left:0in"><span style="font-size:11pt"><span style="line-height:115%"><span style="font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><span style="font-size:12.0pt"><span style="line-height:115%"><span style="font-family:&quot;Cambria&quot;,&quot;serif&quot;">Mười năm sau trận chiến sinh tử ở phần trước, lũ Kaiju ẩn nấp nơi chiều không gian khác, âm mưu phá hoại trái đất lần nữa. Cùng lúc đó, loài người không hề ngủ quên trên chiến thắng, vẫn tích cực phát triển các công nghệ mới để quyết tâm diệt sạch lũ quái vật. Tuy những chiến binh tham gia đại chiến lần này đa phần là những người trẻ nhưng sự non kém về kinh nghiệm sẽ được bù đắp bằng nhiệt huyết thanh xuân. Cuộc chiến mới <a href="https://www.galaxycine.vn/dat-ve/pacific-rim-uprising"><strong>Pacific Rim Uprising </strong></a>chắc chắn sẽ còn khốc liệt và hoành tráng hơn phần đầu gấp nhiều lần. </span></span></span></span></span></span></p>
                     <p style="text-align:justify; margin:0in 0in 10pt; margin-right:0in; margin-left:0in"><span style="font-size:11pt"><span style="line-height:115%"><span style="font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><span style="font-size:12.0pt"><span style="line-height:115%"><span style="font-family:&quot;Cambria&quot;,&quot;serif&quot;">Người chỉ huy trận chiến khốc liệt mới là Jake Pentecost - con trai anh hùng Stacker Pentecost đã hy sinh ở phần trước. Vai diễn do ngôi sao loạt <a href="https://www.galaxycine.vn/phim-dang-chieu/"><i>phim mới</i> </a>Star Wars – John Boyega thể hiện. Tạm biệt trai đẹp Charlie Hunnam nhưng trong phần mới khán giả sẽ được đền bù bằng mỹ nam Scott Eastwood. </span></span></span></span></span></span></p>
                     <p style="text-align:justify; margin:0in 0in 10pt; margin-right:0in; margin-left:0in"><span style="font-size:11pt"><span style="line-height:115%"><span style="font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><i><span style="font-size:12.0pt"><span style="line-height:115%"><span style="font-family:&quot;Cambria&quot;,&quot;serif&quot;">Nếu như năm ngoái, Disney quét sạch phòng vé toàn cầu bằng live action bộ phim hoạt hình kinh điển Beauty And The Beast thì năm nay, nhà Chuột lại mang đến câu chuyện mang màu sắc thần thoại – <a href="https://www.galaxycine.vn/dat-ve/nep-gap-thoi-gian"><b>A Wrinkle In Time</b></a>.</span></span></span></i></span></span></span></p>
                     <p style="text-align:justify; margin:0in 0in 10pt; margin-right:0in; margin-left:0in"><span style="font-size:11pt"><span style="line-height:115%"><span style="font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><span style="font-size:12.0pt"><span style="line-height:115%"><span style="font-family:&quot;Cambria&quot;,&quot;serif&quot;">Một nhà vật lý học thiên tài đột ngột biến mất sau luận điểm gây chấn động thế giới “Hãy tưởng tượng 91 tỷ năm ánh sáng chỉ thoáng qua trong chớp mắt”. Chuyện gì đã xảy ra với ông? Để tìm kiếm cha mình, cô bé Meg Murry cùng những người bạn tham gia vào một hành trình ngoài sức tưởng tượng, phiêu lưu giữa không gian và thời gian. </span></span></span></span></span></span></p>
                     <p style="text-align:justify; margin:0in 0in 10pt; margin-right:0in; margin-left:0in"><span style="font-size:11pt"><span style="line-height:115%"><span style="font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><span style="font-size:12.0pt"><span style="line-height:115%"><span style="font-family:&quot;Cambria&quot;,&quot;serif&quot;"><a href="https://www.galaxycine.vn/dat-ve/nep-gap-thoi-gian"><strong>A Wrinkle In Time</strong></a> có sự tham gia của các ngôi sao hàng đầu Hollywood Reese Witherspoon, Chris Pine và MC quyền lực Oprah Winfrey. Đảm nhận vai chính cho siêu phẩm này là diễn viên trẻ Storm Reid. Chỉ mới 15 tuổi nhưng cô bé đã có bảng thành tích hùng hậu, tham gia 20 tác phẩm, trong đó có kiệt tác đoạt Oscar <i>12 Years A Slave</i>. </span></span></span></span></span></span></p>
                     <p style="text-align:justify; margin:0in 0in 10pt; margin-right:0in; margin-left:0in"><span style="font-size:11pt"><span style="line-height:115%"><span style="font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><i><span style="font-size:12.0pt"><span style="line-height:115%"><span style="font-family:&quot;Cambria&quot;,&quot;serif&quot;">Mạnh mẽ và khốc liệt hơn cả phần trước, <a href="https://www.galaxycine.vn/dat-ve/tomb-raider"><strong>Tomb Raider</strong></a> đưa trải nghiệm mới mẻ về bộ phim&nbsp; từng là làm nên tên tuổi nữ minh tinh Angelina Joile. &nbsp;</span></span></span></i></span></span></span></p>
                     <p style="text-align:justify; margin:0in 0in 10pt; margin-right:0in; margin-left:0in"><span style="font-size:11pt"><span style="line-height:115%"><span style="font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><a href="https://www.galaxycine.vn/dat-ve/tomb-raider"><b><span style="font-size:12.0pt"><span style="line-height:115%"><span style="font-family:&quot;Cambria&quot;,&quot;serif&quot;">Tomb Raider</span></span></span></b></a><span style="font-size:12.0pt"><span style="line-height:115%"><span style="font-family:&quot;Cambria&quot;,&quot;serif&quot;"> kể về hành trình nàng chiến binh Lara Croft tìm kiếm bí mật xung quanh cái chết người cha. Phải đơn độc đối mặt với kẻ thù nguy hiểm, nàng phải làm thế nào để viết nên huyền thoại mới cho chính bản thân mình? Xinh đẹp, thông minh và dũng cảm, nàng Lara Croft biểu tượng nữ quyềnthập niên trước sẽ trở lại qua diễn xuất của ngôi sao đoạt giải Oscar – Alicia Vikander. &nbsp;</span></span></span></span></span></span></p>
                     <p style="text-align:justify; margin:0in 0in 10pt; margin-right:0in; margin-left:0in"><span style="font-size:11pt"><span style="line-height:115%"><span style="font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><span style="font-size:12.0pt"><span style="line-height:115%"><span style="font-family:&quot;Cambria&quot;,&quot;serif&quot;">Chỉ cao 1m66, nữ diễn viên người Thụy Điển đã tích cực luyện tập, tăng đến 5kg cơ bắp để thể hiện nhân vật sao cho hoàn hảo nhất. Với kinh phí gần 100 triệu $, khán giả sẽ choáng ngợp bởi những cảnh quay hành động vô cùng mãn nhãn và hệt như game. </span></span></span></span></span></span></p>
                     <p style="text-align:justify; margin:0in 0in 10pt; margin-right:0in; margin-left:0in"><span style="font-size:11pt"><span style="line-height:115%"><span style="font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><i><span style="font-size:12.0pt"><span style="line-height:115%"><span style="font-family:&quot;Cambria&quot;,&quot;serif&quot;">Ngoài ra, tháng 3 còn dành tặng cho các mọt phim một tác phẩm hoạt hình vô cùng thú vị về các tí hon giữ vườn – <a href="https://www.galaxycine.vn/dat-ve/sherlock-gnomes"><b>Sherlock Gnomes</b></a>.</span></span></span></i></span></span></span></p>
                     <p style="text-align:justify; margin:0in 0in 10pt; margin-right:0in; margin-left:0in"><span style="font-size:11pt"><span style="line-height:115%"><span style="font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><span style="font-size:12.0pt"><span style="line-height:115%"><span style="font-family:&quot;Cambria&quot;,&quot;serif&quot;">Năm 2011, bộ phim hoạt hình độc đáo về các tí hon giữ vườn Gnomeo và Juliet đã thu được gần 200 triệu $, chỉ với 36 triệu $ kinh phí đầu tư. Giờ đây, bộ đôi ngày xưa lùi bước về tuyến 2 để nhường đất diễn cho một tí hon mới – thám tử Sherlock Gnomes. </span></span></span></span></span></span></p>
                     <p style="text-align:justify; margin:0in 0in 10pt; margin-right:0in; margin-left:0in"><span style="font-size:11pt"><span style="line-height:115%"><span style="font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><span style="font-size:12.0pt"><span style="line-height:115%"><span style="font-family:&quot;Cambria&quot;,&quot;serif&quot;">Chuyển tới nơi ở mới, cặp đôi tí hon Gnomeo và Juliet tưởng rằng sẽ có cuộc sống hạnh phúc bên cạnh những người bạn tí hon giữ vườn. Không may, khi con người xuất hiện, sự yên bình chấm dứt. Những vụ mất tích liên tiếp xảy ra buộc cặp đôi phải nhờ tới vị thám tử Sherlock Gnomes tài ba bậc nhất thế giới tí hon. </span></span></span></span></span></span></p>
                     <p style="text-align:justify; margin:0in 0in 10pt; margin-right:0in; margin-left:0in"><span style="font-size:11pt"><span style="line-height:115%"><span style="font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><i><span style="font-size:12.0pt"><span style="line-height:115%"><span style="font-family:&quot;Cambria&quot;,&quot;serif&quot;">Remake bộ phim thanh xuân nổi tiếng của Hàn Quốc – Sunny, <a href="https://www.galaxycine.vn/dat-ve/thang-nam-ruc-ro"><b>Tháng Năm Rực Rỡ</b> </a>được dự đoán sẽ tạo nên cơn sốt không kém tác phẩm Em Là Bà Nội Của Anh năm nào. </span></span></span></i></span></span></span></p>
                     <p style="margin-top:0in; margin-right:0in; margin-bottom:8.0pt; margin-left:0in; text-align:justify"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="font-family:&quot;Cambria&quot;,&quot;serif&quot;">Kể về cô bé Hiểu Phương chuyển trường lên thành phố Đà Lạt phồn hoa, gặp gỡ những người bạn mới và lập nên nhóm Ngựa Hoang. <a href="https://www.galaxycine.vn/dat-ve/thang-nam-ruc-ro"><b>Tháng Năm Rực Rỡ</b> </a>lồng ghép hoàn hảo những mẩu chuyện nghịch ngợm tuổi học trò cùng những biến cố thời cuộc. </span><span style="font-family:&quot;Cambria&quot;,&quot;serif&quot;">Sau hơn hai mươi năm mỗi người mỗi ngả, những cô bạn ngày xưa tìm lại nhau, vỡ òa trong niềm vui đoàn tụ. </span></span></span></p>
                     <p style="text-align:justify; margin:0in 0in 10pt; margin-right:0in; margin-left:0in"><span style="font-size:11pt"><span style="line-height:115%"><span style="font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><span style="font-size:12.0pt"><span style="line-height:115%"><span style="font-family:&quot;Cambria&quot;,&quot;serif&quot;"><a href="https://www.galaxycine.vn/dat-ve/thang-nam-ruc-ro"><strong>Tháng Năm Rực Rỡ</strong></a> quy tụ dàn diễn viên hùng hậu mà ít phim Việt nào có được. Họ là những bóng hồng đã khẳng định được tên tuổi trong lòng công chúng như Hồng Ánh, Mỹ Duyên, Mỹ Uyên, Thanh Hằng, Tuyền mập, Lan Phương và thế hệ diễn viên trẻ tài năng như Hoàng Yến Chibi, Jun Vũ, Hoàng Oanh, Khổng Tú Quỳnh, Minh Thảo, Trịnh Thảo… </span></span></span></span></span></span></p>
                     <p style="text-align:justify; margin:0in 0in 10pt; margin-right:0in; margin-left:0in"><span style="font-size:11pt"><span style="line-height:115%"><span style="font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><i><span style="font-size:12.0pt"><span style="line-height:115%"><span style="font-family:&quot;Cambria&quot;,&quot;serif&quot;">Tiếp nối thành công của <a href="https://www.galaxycine.vn/dat-ve/thang-nam-ruc-ro"><b>Tháng Năm Rực Rỡ</b></a>, một tác phẩm remake từ Hàn Quốc sẽ ra mắt khán giả Việt Nam vào cuối tháng. </span></span></span></i></span></span></span></p>
                     <p style="text-align:justify; margin:0in 0in 10pt; margin-right:0in; margin-left:0in"><span style="font-size:11pt"><span style="line-height:115%"><span style="font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><span style="font-size:12.0pt"><span style="line-height:115%"><span style="font-family:&quot;Cambria&quot;,&quot;serif&quot;">Cuộc sống của chàng phát thanh viên nổi tiếng Sơn Huy bỗng dưng đảo lộn khi một cô gái trẻ dắt theo một cậu bé đến nhận anh là cha và ông ngoại. Phút bồng bột tuổi mới lớn bỗng biến thành hậu quả không thể tin nổi, Sơn Huy chết điếng trước món quà từ trên trời rơi xuống. Chàng trai độc thân thích chơi bời sẽ ra sao khi phải sống cùng cô con gái mới lớn và đứa cháu ngoại? Một người nổi tiếng sẽ gặp những biến cố gì khi có scandal “khủng khiếp” như thế? </span></span></span></span></span></span></p>
                     <p style="margin: 0in 0in 10pt;"><span style="font-size:11pt"><span style="line-height:115%"><span style="font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><span style="font-size:12.0pt"><span style="line-height:115%"><span style="font-family:&quot;Cambria&quot;,&quot;serif&quot;">Nguyên tác <i>Scandal Makers</i> là phim tình cảm hài cực kỳ thành công, góp phần khẳng định vị thế minh tinh hạng A của Cha Tae Hyun và giới thiệu ngôi sao trẻ Park Bo Young. Nếu remake thành công bộ <a href="https://www.galaxycine.vn/phim-dang-chieu/"><i>phim hay</i></a> này, <a href="https://www.galaxycine.vn/dat-ve/ong-ngoai-tuoi-30"><b>Ông Ngoại Tuổi 30</b></a> chắc chắn trở thành <a href="https://www.galaxycine.vn/phim-dang-chieu/"><i>phim chiếu rạp&nbsp;</i></a>gây sốt khắp mọi nhà. </span></span></span></span></span></span></p>
                     <p>&nbsp;</p>
                  </div>
               </div>
            </div>
         </section>
      </div>
   </div>
</div>


      <!-- footer -->
      <footer class="footer-bg">
         <div class="container">
            <div class="row">
               <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                  <ul class="list-unstyled clear-margins">
                     <li class="widget-container widget_nav_menu">
                        <h1 class="title-widget">Giới thiệu</h1>
                        <ul>
                           <li><a href="/ve-chung-toi"><i class="fa fa-angle-double-right"></i> Về chúng tôi</a></li>
                           <li><a href="/thoa-thuan-su-dung"><i class="fa fa-angle-double-right"></i> Thoả thuận sử dụng</a></li>
                           <li><a href="/quy-che-hoat-dong"><i class="fa fa-angle-double-right"></i> Quy chế hoạt động</a></li>
                           <li><a href="/chinh-sach-bao-mat"><i class="fa fa-angle-double-right"></i> Chính sách bảo mật</a></li>
                        </ul>
                     </li>
                  </ul>
               </div>
               <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                  <ul class="list-unstyled clear-margins">
                     <li class="widget-container widget_nav_menu">
                        <h1 class="title-widget">Góc điện ảnh</h1>
                        <ul>
                           <li><a href="/dien-anh"><i class="fa fa-angle-double-right"></i> Thể loại phim</a></li>
                           <li><a href="/binh-luan-phim"><i class="fa fa-angle-double-right"></i> Bình luận phim</a></li>
                           <li><a href="/movie-blog"><i class="fa fa-angle-double-right"></i> Blog điện ảnh</a></li>
                           <li><a href="/phim-hay"><i class="fa fa-angle-double-right"></i> Phim hay tháng</a></li>
                        </ul>
                     </li>
                  </ul>
               </div>
               <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                  <ul class="list-unstyled clear-margins">
                     <li class="widget-container widget_nav_menu">
                        <h1 class="title-widget">Hỗ trợ</h1>
                        <ul>
                           <li><a href="/gop-y"><i class="fa fa-angle-double-right"></i> Góp ý</a></li>
                           <li><a href="/sale-and-service"><i class="fa fa-angle-double-right"></i> Sale &amp; Services</a></li>
                           <li><a href="/rap-gia-ve"><i class="fa fa-angle-double-right"></i> Rạp / giá vé</a></li>
                           <li><a href="/tuyen-dung"><i class="fa fa-angle-double-right"></i> Tuyển dụng</a></li>
                        </ul>
                     </li>
                  </ul>
               </div>
               <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                  <ul class="list-unstyled clear-margins">
                     <li class="widget-container widget_recent_news">
                        <h1 class="title-widget">Kết nối Galaxy cinema</h1>
                        <div class="social-icons">
                           <ul class="nomargin">
                              <a href="https://facebook.com/galaxycine.vn" target="_blank"><i id="social" class="icon-facebook-app-logo social-fb"></i></a><a href="https://www.youtube.com/user/galaxymovies" target="_blank"><i id="social" class="icon-youtube-logo social-youtube"></i></a><!--a(href='#{config.instagramUrl}' target="_blank")--><!--  i#social.icon-instagram-logo.social-inst--><a href="https://www.instagram.com/galaxycinema/" target="_blank"><i id="social" class="icon-instagram-logo social-inst"></i></a>
                           </ul>
                        </div>
                     </li>
                  </ul>
                  <div class="store">
                     <ul class="list-unstyled clear-margins">
                        <li class="widget-container widget_recent_news">
                           <h1 class="title-widget">Download app</h1>
                           <div class="social-icons">
                              <ul class="nomargin">
                                 <!--a(href='#{config.iosAppUrl}' target="_blank")--><a href="https://itunes.apple.com/vn/app/galaxy-cinema/id593312549?l=vi&amp;mt=8" target="_blank"><i id="social" class="icon-apple-store social-store"></i></a><!--a(href='#{config.androidAppUrl}' target="_blank")--><a href="https://play.google.com/store/apps/details?id=com.galaxy.cinema&amp;hl=vi" target="_blank"><i id="social" class="icon-google-play social-store"></i></a>
                              </ul>
                           </div>
                        </li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </footer>
   </body>
   <script type="text/javascript" src="
   <c:url value="/resources/js/bootstrap.min.js" />
   "></script>
   <script type="text/javascript" src="
   <c:url value="/resources/js/app.js" />
   "></script>
</html>