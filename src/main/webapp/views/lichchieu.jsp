
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
            <div class="search hidden-lg hidden-md">
               <galaxy-search-bar class="ng-isolate-scope">
                  <form id="search-form" ng-submit="submit()" class="ng-pristine ng-valid">
                     <div class="input-append">
                        <input id="btn-search-header" placeholder="Tìm tên phim, diễn viên..." class="search-box ng-pristine ng-untouched ng-valid ng-empty" type="text" autocomplete="off" ng-model="searchKey" ng-model-options="{ updateOn: &quot;default blur&quot;, debounce: { default: 500, blur: 0 } }" ,="" ng-change="search(searchKey)">
                        <button type="submit" class="search-btn"><i class="icon-search"></i></button>
                        <!-- ngIf: dataSearch && dataSearch.items && dataSearch.items.length>0 -->
                     </div>
                  </form>
               </galaxy-search-bar>
            </div>
            <nav>
               <ul class="primary-nav">
                  <li>
                     <!-- ngIf: isMobile == false -->
                     <a href="lichchieu" ng-if="isMobile == false" class="ng-scope">Mua vé</a><!-- end ngIf: isMobile == false --><!-- ngIf: isMobile == true -->
                  </li>
                  <li class="sub-nav">
                     <!-- ngIf: isMobile == false -->
                     <a href="javascript:;" ng-if="isMobile == false" class="ng-scope dropdown1">Phim <i class="fa fa-caret-down"></i></a>
                     <!-- end ngIf: isMobile == false --><!-- ngIf: isMobile == true -->
                     <div id="sub-menu">
                        <ul class="undefined">
                           <li>
                              <a href="phim-dang-chieu">Phim đang chiếu</a>
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
                                 <h3><a href="phim-dang-chieu">Phim đang chiếu</a></h3>
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






      <div ng-controller="bookingPageController" class="container ng-scope">
   <div class="row">
      <div class="col-md-12">
         <div class="tab-movies">
            <div class="tab-movies-line">
               <ul class="nav nav-tabs">
                  <li class="active"><a href="#tab_showmovie" data-toggle="tab" ng-click="changeTab(&quot;byMovie&quot;)" aria-expanded="true">Theo phim</a></li>
                  <li class=""><a href="#tab_showcinema" data-toggle="tab" ng-click="changeTab(&quot;byCinema&quot;)" aria-expanded="false">Theo rạp</a></li>
                  <li><a href="#tab_showdate" data-toggle="tab" ng-click="changeTab(&quot;byDate&quot;)">Theo ngày</a></li>
               </ul>
               <div class="tab-content">
                  <div id="tab_showmovie" class="tab-pane active">
                     <div class="row showtimes-group animated fadeInUp">
                        <div class="col-md-4">
                           <div class="panel panel-default">
                              <div class="panel-heading">
                                 <h4 class="panel-title">Chọn phim</h4>
                              </div>
                              <galaxy-loading ng-show="!items.movies" class="ng-hide">
                                 <p class="loading-content"><i class="fa fa-pulse fa-spinner"></i></p>
                              </galaxy-loading>
                              <ul class="list-group">
                                 <!-- ngRepeat: movie in items.movies -->
                                 <li ng-repeat="movie in items.movies" ng-click="getCinemaByMovie(movie,$index)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentMovie==$index}" class="list-group-item movie active">
                                       <div class="showtimes-row">
                                          <img src="resources/media/2017/12/22/thang5rucro_1513914094543.jpg"><i class="icon-c16"></i>
                                          <div class="title-movie">
                                             <p class="ng-binding">THÁNG NĂM RỰC RỠ</p>
                                             <p class="vn ng-binding"></p>
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: movie in items.movies -->
                                 <li ng-repeat="movie in items.movies" ng-click="getCinemaByMovie(movie,$index)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentMovie==$index}" class="list-group-item movie">
                                       <div class="showtimes-row">
                                          <img src="resources/media/2018/2/5/450_1517808107383.jpg"><i class=""></i>
                                          <div class="title-movie">
                                             <p class="ng-binding">GOODBYE CHRISTOPHER ROBIN</p>
                                             <p class="vn ng-binding">TẠM BIỆT CHRISTOPHER ROBIN</p>
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: movie in items.movies -->
                                 <li ng-repeat="movie in items.movies" ng-click="getCinemaByMovie(movie,$index)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentMovie==$index}" class="list-group-item movie">
                                       <div class="showtimes-row">
                                          <img src="resources/media/2018/2/21/tomb-r2_1519191376263.jpg"><i class="icon-c16"></i>
                                          <div class="title-movie">
                                             <p class="ng-binding">TOMB RAIDER</p>
                                             <p class="vn ng-binding">TOMB RAIDER: HUYỀN THOẠI BẮT ĐẦU</p>
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: movie in items.movies -->
                                 <li ng-repeat="movie in items.movies" ng-click="getCinemaByMovie(movie,$index)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentMovie==$index}" class="list-group-item movie">
                                       <div class="showtimes-row">
                                          <img src="resources/media/2018/1/16/awt-_1516092287588.jpg"><i class=""></i>
                                          <div class="title-movie">
                                             <p class="ng-binding">A WRINKLE IN TIME</p>
                                             <p class="vn ng-binding">NẾP GẤP THỜI GIAN</p>
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: movie in items.movies -->
                                 <li ng-repeat="movie in items.movies" ng-click="getCinemaByMovie(movie,$index)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentMovie==$index}" class="list-group-item movie">
                                       <div class="showtimes-row">
                                          <img src="resources/media/2018/1/30/bd450_1517308848293.jpg"><i class="icon-c16"></i>
                                          <div class="title-movie">
                                             <p class="ng-binding">BLACK PANTHER</p>
                                             <p class="vn ng-binding">CHIẾN BINH BÁO ĐEN</p>
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: movie in items.movies -->
                                 <li ng-repeat="movie in items.movies" ng-click="getCinemaByMovie(movie,$index)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentMovie==$index}" class="list-group-item movie">
                                       <div class="showtimes-row">
                                          <img src="resources/media/2018/3/12/07-talltales-la-2_1520834077955.jpg"><i class=""></i>
                                          <div class="title-movie">
                                             <p class="ng-binding">TALL TALES</p>
                                             <p class="vn ng-binding">DẾ APOLLO VÀ NỮ HOÀNG</p>
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: movie in items.movies -->
                                 <li ng-repeat="movie in items.movies" ng-click="getCinemaByMovie(movie,$index)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentMovie==$index}" class="list-group-item movie">
                                       <div class="showtimes-row">
                                          <img src="resources/media/2018/2/22/l450_1519284822863.jpg"><i class="icon-c18"></i>
                                          <div class="title-movie">
                                             <p class="ng-binding">THE LODGERS</p>
                                             <p class="vn ng-binding">LUẬT QUỶ</p>
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: movie in items.movies -->
                                 <li ng-repeat="movie in items.movies" ng-click="getCinemaByMovie(movie,$index)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentMovie==$index}" class="list-group-item movie">
                                       <div class="showtimes-row">
                                          <img src="resources/media/2018/3/12/girl3_1520837777974.jpg"><i class="icon-c16"></i>
                                          <div class="title-movie">
                                             <p class="ng-binding">GIRL 2</p>
                                             <p class="vn ng-binding">NHỮNG CÔ GÁI VÀ GĂNG TƠ</p>
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: movie in items.movies -->
                                 <li ng-repeat="movie in items.movies" ng-click="getCinemaByMovie(movie,$index)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentMovie==$index}" class="list-group-item movie">
                                       <div class="showtimes-row">
                                          <img src="resources/media/2018/3/7/354_1520396384749.jpg"><i class="icon-c18"></i>
                                          <div class="title-movie">
                                             <p class="ng-binding">OPERATION RED SEA</p>
                                             <p class="vn ng-binding">ĐIỆP VỤ BIỂN ĐỎ</p>
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: movie in items.movies -->
                                 <li ng-repeat="movie in items.movies" ng-click="getCinemaByMovie(movie,$index)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentMovie==$index}" class="list-group-item movie">
                                       <div class="showtimes-row">
                                          <img src="resources/media/2018/3/6/55_1520306367586.jpg"><i class="icon-c16"></i>
                                          <div class="title-movie">
                                             <p class="ng-binding">WINCHESTER</p>
                                             <p class="vn ng-binding">DINH THỰ WINCHESTER</p>
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: movie in items.movies -->
                                 <li ng-repeat="movie in items.movies" ng-click="getCinemaByMovie(movie,$index)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentMovie==$index}" class="list-group-item movie">
                                       <div class="showtimes-row">
                                          <img src="resources/media/2018/2/5/450_1517804806339.jpg"><i class="icon-c16"></i>
                                          <div class="title-movie">
                                             <p class="ng-binding">THREE BILLBOARDS OUTSIDE EBBING, MISSOURI</p>
                                             <p class="vn ng-binding">THREE BILLBOARDS: TRUY TÌM CÔNG LÝ</p>
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: movie in items.movies -->
                                 <li ng-repeat="movie in items.movies" ng-click="getCinemaByMovie(movie,$index)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentMovie==$index}" class="list-group-item movie">
                                       <div class="showtimes-row">
                                          <img src="resources/media/2018/3/2/detective-k34_1519975450042.jpg"><i class="icon-c16"></i>
                                          <div class="title-movie">
                                             <p class="ng-binding">DETECTIVE K: SECRET OF THE LIVING DEAD</p>
                                             <p class="vn ng-binding">THÁM TỬ K: MA CÀ RỒNG BÁO THÙ</p>
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: movie in items.movies -->
                                 <li ng-repeat="movie in items.movies" ng-click="getCinemaByMovie(movie,$index)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentMovie==$index}" class="list-group-item movie">
                                       <div class="showtimes-row">
                                          <img src="resources/media/2018/3/6/43543_1520328878766.jpg"><i class="icon-c18"></i>
                                          <div class="title-movie">
                                             <p class="ng-binding">GAME NIGHT</p>
                                             <p class="vn ng-binding">ĐÊM CHƠI NHỚ ĐỜI</p>
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: movie in items.movies -->
                                 <li ng-repeat="movie in items.movies" ng-click="getCinemaByMovie(movie,$index)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentMovie==$index}" class="list-group-item movie">
                                       <div class="showtimes-row">
                                          <img src="resources/media/2018/1/23/ho-nhat-duy-2_1516676326357.jpg"><i class="icon-c16"></i>
                                          <div class="title-movie">
                                             <p class="ng-binding">798MƯỜI</p>
                                             <p class="vn ng-binding"></p>
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: movie in items.movies -->
                                 <li ng-repeat="movie in items.movies" ng-click="getCinemaByMovie(movie,$index)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentMovie==$index}" class="list-group-item movie">
                                       <div class="showtimes-row">
                                          <img src="resources/media/2018/1/16/sssn_1516069937317.jpg"><i class="icon-c13"></i>
                                          <div class="title-movie">
                                             <p class="ng-binding">SIÊU SAO SIÊU NGỐ</p>
                                             <p class="vn ng-binding"></p>
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: movie in items.movies -->
                                 <li ng-repeat="movie in items.movies" ng-click="getCinemaByMovie(movie,$index)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentMovie==$index}" class="list-group-item movie">
                                       <div class="showtimes-row">
                                          <img src="resources/media/2018/1/17/250x175_1516162983452.jpg"><i class=""></i>
                                          <div class="title-movie">
                                             <p class="ng-binding">PETER RABBIT</p>
                                             <p class="vn ng-binding">THỎ PETER</p>
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: movie in items.movies -->
                              </ul>
                           </div>
                        </div>
                        <div class="col-md-4">
                           <div class="panel panel-default">
                              <div class="panel-heading">
                                 <h4 class="panel-title">Chọn rạp</h4>
                              </div>
                              <galaxy-loading ng-show="onLoadItem" class="ng-hide">
                                 <p class="loading-content"><i class="fa fa-pulse fa-spinner"></i></p>
                              </galaxy-loading>
                              <ul class="list-group">
                                 <!-- ngIf: cinemas.length == 0 && !onLoadItem --><!-- ngRepeat: cinema in cinemas |orderBy:"km" -->
                                 <li ng-repeat="cinema in cinemas |orderBy:&quot;km&quot;" ng-click="setDates(cinema.dates,$index,&quot;cinema&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentCinema==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Galaxy Nguyễn Du</p>
                                             <!-- ngIf: cinema.km -->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: cinema in cinemas |orderBy:"km" -->
                                 <li ng-repeat="cinema in cinemas |orderBy:&quot;km&quot;" ng-click="setDates(cinema.dates,$index,&quot;cinema&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentCinema==$index}" class="list-group-item active">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Galaxy Tân Bình</p>
                                             <!-- ngIf: cinema.km -->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: cinema in cinemas |orderBy:"km" -->
                                 <li ng-repeat="cinema in cinemas |orderBy:&quot;km&quot;" ng-click="setDates(cinema.dates,$index,&quot;cinema&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentCinema==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Galaxy Kinh Dương Vương</p>
                                             <!-- ngIf: cinema.km -->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: cinema in cinemas |orderBy:"km" -->
                                 <li ng-repeat="cinema in cinemas |orderBy:&quot;km&quot;" ng-click="setDates(cinema.dates,$index,&quot;cinema&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentCinema==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Galaxy Quang Trung</p>
                                             <!-- ngIf: cinema.km -->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: cinema in cinemas |orderBy:"km" -->
                                 <li ng-repeat="cinema in cinemas |orderBy:&quot;km&quot;" ng-click="setDates(cinema.dates,$index,&quot;cinema&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentCinema==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Galaxy Bến Tre</p>
                                             <!-- ngIf: cinema.km -->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: cinema in cinemas |orderBy:"km" -->
                                 <li ng-repeat="cinema in cinemas |orderBy:&quot;km&quot;" ng-click="setDates(cinema.dates,$index,&quot;cinema&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentCinema==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Galaxy Mipec Long Biên</p>
                                             <!-- ngIf: cinema.km -->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: cinema in cinemas |orderBy:"km" -->
                                 <li ng-repeat="cinema in cinemas |orderBy:&quot;km&quot;" ng-click="setDates(cinema.dates,$index,&quot;cinema&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentCinema==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Galaxy Đà Nẵng</p>
                                             <!-- ngIf: cinema.km -->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: cinema in cinemas |orderBy:"km" -->
                                 <li ng-repeat="cinema in cinemas |orderBy:&quot;km&quot;" ng-click="setDates(cinema.dates,$index,&quot;cinema&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentCinema==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Galaxy Cà Mau</p>
                                             <!-- ngIf: cinema.km -->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: cinema in cinemas |orderBy:"km" -->
                                 <li ng-repeat="cinema in cinemas |orderBy:&quot;km&quot;" ng-click="setDates(cinema.dates,$index,&quot;cinema&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentCinema==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Galaxy Phạm Văn Chí</p>
                                             <!-- ngIf: cinema.km -->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: cinema in cinemas |orderBy:"km" -->
                                 <li ng-repeat="cinema in cinemas |orderBy:&quot;km&quot;" ng-click="setDates(cinema.dates,$index,&quot;cinema&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentCinema==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Galaxy Trung Chánh</p>
                                             <!-- ngIf: cinema.km -->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: cinema in cinemas |orderBy:"km" -->
                                 <li ng-repeat="cinema in cinemas |orderBy:&quot;km&quot;" ng-click="setDates(cinema.dates,$index,&quot;cinema&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentCinema==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Galaxy Huỳnh Tấn Phát</p>
                                             <!-- ngIf: cinema.km -->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: cinema in cinemas |orderBy:"km" -->
                                 <li ng-repeat="cinema in cinemas |orderBy:&quot;km&quot;" ng-click="setDates(cinema.dates,$index,&quot;cinema&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentCinema==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Galaxy Hải Phòng</p>
                                             <!-- ngIf: cinema.km -->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: cinema in cinemas |orderBy:"km" -->
                              </ul>
                           </div>
                        </div>
                        <div class="col-md-4">
                           <div class="panel panel-default">
                              <div class="panel-heading">
                                 <h4 class="panel-title">Chọn suất</h4>
                              </div>
                              <ul class="list-group">
                                 <!-- ngIf: dates.length == 0  --><!-- ngRepeat: date in dates -->
                                 <li ng-repeat="date in dates" class="list-group-item ng-scope">
                                    <div class="showtimes-row">
                                       <p class="ng-binding">Thứ năm, 22/03/2018</p>
                                       <!-- ngRepeat: bundle in date.bundles -->
                                       <div ng-repeat="bundle in date.bundles" class="showtimes-item ng-scope">
                                          <label class="ng-binding">2D -&nbsp;
                                          Phụ đề</label>
                                          <div class="showtimes-list-wrapper">
                                             <!-- ngRepeat: show in bundle.sessions -->
                                             <galaxy-buy-ticket ng-repeat="show in bundle.sessions" ng-model="show" ng-movie-slug="movies[currentMovie].slug" class="ng-pristine ng-untouched ng-valid ng-scope ng-isolate-scope ng-not-empty"><a href="/book-ticket/thang-nam-ruc-ro?cinemaId=1003&amp;sessionId=257089" class="showtimes-list ng-binding">09:00</a></galaxy-buy-ticket>
                                             <!-- end ngRepeat: show in bundle.sessions -->
                                             <galaxy-buy-ticket ng-repeat="show in bundle.sessions" ng-model="show" ng-movie-slug="movies[currentMovie].slug" class="ng-pristine ng-untouched ng-valid ng-scope ng-isolate-scope ng-not-empty"><a href="/book-ticket/thang-nam-ruc-ro?cinemaId=1003&amp;sessionId=257026" class="showtimes-list ng-binding">10:15</a></galaxy-buy-ticket>
                                             <!-- end ngRepeat: show in bundle.sessions -->
                                             <galaxy-buy-ticket ng-repeat="show in bundle.sessions" ng-model="show" ng-movie-slug="movies[currentMovie].slug" class="ng-pristine ng-untouched ng-valid ng-scope ng-isolate-scope ng-not-empty"><a href="/book-ticket/thang-nam-ruc-ro?cinemaId=1003&amp;sessionId=257090" class="showtimes-list ng-binding">11:10</a></galaxy-buy-ticket>
                                             <!-- end ngRepeat: show in bundle.sessions -->
                                             <galaxy-buy-ticket ng-repeat="show in bundle.sessions" ng-model="show" ng-movie-slug="movies[currentMovie].slug" class="ng-pristine ng-untouched ng-valid ng-scope ng-isolate-scope ng-not-empty"><a href="/book-ticket/thang-nam-ruc-ro?cinemaId=1003&amp;sessionId=257019" class="showtimes-list ng-binding">12:25</a></galaxy-buy-ticket>
                                             <!-- end ngRepeat: show in bundle.sessions -->
                                             <galaxy-buy-ticket ng-repeat="show in bundle.sessions" ng-model="show" ng-movie-slug="movies[currentMovie].slug" class="ng-pristine ng-untouched ng-valid ng-scope ng-isolate-scope ng-not-empty"><a href="/book-ticket/thang-nam-ruc-ro?cinemaId=1003&amp;sessionId=257091" class="showtimes-list ng-binding">13:20</a></galaxy-buy-ticket>
                                             <!-- end ngRepeat: show in bundle.sessions -->
                                             <galaxy-buy-ticket ng-repeat="show in bundle.sessions" ng-model="show" ng-movie-slug="movies[currentMovie].slug" class="ng-pristine ng-untouched ng-valid ng-scope ng-isolate-scope ng-not-empty"><a href="/book-ticket/thang-nam-ruc-ro?cinemaId=1003&amp;sessionId=257042" class="showtimes-list ng-binding">14:35</a></galaxy-buy-ticket>
                                             <!-- end ngRepeat: show in bundle.sessions -->
                                             <galaxy-buy-ticket ng-repeat="show in bundle.sessions" ng-model="show" ng-movie-slug="movies[currentMovie].slug" class="ng-pristine ng-untouched ng-valid ng-scope ng-isolate-scope ng-not-empty"><a href="/book-ticket/thang-nam-ruc-ro?cinemaId=1003&amp;sessionId=257092" class="showtimes-list ng-binding">15:30</a></galaxy-buy-ticket>
                                             <!-- end ngRepeat: show in bundle.sessions -->
                                             <galaxy-buy-ticket ng-repeat="show in bundle.sessions" ng-model="show" ng-movie-slug="movies[currentMovie].slug" class="ng-pristine ng-untouched ng-valid ng-scope ng-isolate-scope ng-not-empty"><a href="/book-ticket/thang-nam-ruc-ro?cinemaId=1003&amp;sessionId=257020" class="showtimes-list ng-binding">16:45</a></galaxy-buy-ticket>
                                             <!-- end ngRepeat: show in bundle.sessions -->
                                             <galaxy-buy-ticket ng-repeat="show in bundle.sessions" ng-model="show" ng-movie-slug="movies[currentMovie].slug" class="ng-pristine ng-untouched ng-valid ng-scope ng-isolate-scope ng-not-empty"><a href="/book-ticket/thang-nam-ruc-ro?cinemaId=1003&amp;sessionId=257093" class="showtimes-list ng-binding">17:40</a></galaxy-buy-ticket>
                                             <!-- end ngRepeat: show in bundle.sessions -->
                                             <galaxy-buy-ticket ng-repeat="show in bundle.sessions" ng-model="show" ng-movie-slug="movies[currentMovie].slug" class="ng-pristine ng-untouched ng-valid ng-scope ng-isolate-scope ng-not-empty"><a href="/book-ticket/thang-nam-ruc-ro?cinemaId=1003&amp;sessionId=257100" class="showtimes-list ng-binding">19:00</a></galaxy-buy-ticket>
                                             <!-- end ngRepeat: show in bundle.sessions -->
                                             <galaxy-buy-ticket ng-repeat="show in bundle.sessions" ng-model="show" ng-movie-slug="movies[currentMovie].slug" class="ng-pristine ng-untouched ng-valid ng-scope ng-isolate-scope ng-not-empty"><a href="/book-ticket/thang-nam-ruc-ro?cinemaId=1003&amp;sessionId=257094" class="showtimes-list ng-binding">19:50</a></galaxy-buy-ticket>
                                             <!-- end ngRepeat: show in bundle.sessions -->
                                             <galaxy-buy-ticket ng-repeat="show in bundle.sessions" ng-model="show" ng-movie-slug="movies[currentMovie].slug" class="ng-pristine ng-untouched ng-valid ng-scope ng-isolate-scope ng-not-empty"><a href="/book-ticket/thang-nam-ruc-ro?cinemaId=1003&amp;sessionId=257115" class="showtimes-list ng-binding">21:30</a></galaxy-buy-ticket>
                                             <!-- end ngRepeat: show in bundle.sessions -->
                                          </div>
                                       </div>
                                       <!-- end ngRepeat: bundle in date.bundles -->
                                    </div>
                                 </li>
                                 <!-- end ngRepeat: date in dates -->
                                 <li ng-repeat="date in dates" class="list-group-item ng-scope">
                                    <div class="showtimes-row">
                                       <p class="ng-binding">Thứ sáu, 23/03/2018</p>
                                       <!-- ngRepeat: bundle in date.bundles -->
                                       <div ng-repeat="bundle in date.bundles" class="showtimes-item ng-scope">
                                          <label class="ng-binding">2D -&nbsp;
                                          Phụ đề</label>
                                          <div class="showtimes-list-wrapper">
                                             <!-- ngRepeat: show in bundle.sessions -->
                                             <galaxy-buy-ticket ng-repeat="show in bundle.sessions" ng-model="show" ng-movie-slug="movies[currentMovie].slug" class="ng-pristine ng-untouched ng-valid ng-scope ng-isolate-scope ng-not-empty"><a href="/book-ticket/thang-nam-ruc-ro?cinemaId=1003&amp;sessionId=257147" class="showtimes-list ng-binding">09:15</a></galaxy-buy-ticket>
                                             <!-- end ngRepeat: show in bundle.sessions -->
                                             <galaxy-buy-ticket ng-repeat="show in bundle.sessions" ng-model="show" ng-movie-slug="movies[currentMovie].slug" class="ng-pristine ng-untouched ng-valid ng-scope ng-isolate-scope ng-not-empty"><a href="/book-ticket/thang-nam-ruc-ro?cinemaId=1003&amp;sessionId=257133" class="showtimes-list ng-binding">11:00</a></galaxy-buy-ticket>
                                             <!-- end ngRepeat: show in bundle.sessions -->
                                             <galaxy-buy-ticket ng-repeat="show in bundle.sessions" ng-model="show" ng-movie-slug="movies[currentMovie].slug" class="ng-pristine ng-untouched ng-valid ng-scope ng-isolate-scope ng-not-empty"><a href="/book-ticket/thang-nam-ruc-ro?cinemaId=1003&amp;sessionId=257132" class="showtimes-list ng-binding">13:10</a></galaxy-buy-ticket>
                                             <!-- end ngRepeat: show in bundle.sessions -->
                                             <galaxy-buy-ticket ng-repeat="show in bundle.sessions" ng-model="show" ng-movie-slug="movies[currentMovie].slug" class="ng-pristine ng-untouched ng-valid ng-scope ng-isolate-scope ng-not-empty"><a href="/book-ticket/thang-nam-ruc-ro?cinemaId=1003&amp;sessionId=257131" class="showtimes-list ng-binding">15:20</a></galaxy-buy-ticket>
                                             <!-- end ngRepeat: show in bundle.sessions -->
                                             <galaxy-buy-ticket ng-repeat="show in bundle.sessions" ng-model="show" ng-movie-slug="movies[currentMovie].slug" class="ng-pristine ng-untouched ng-valid ng-scope ng-isolate-scope ng-not-empty"><a href="/book-ticket/thang-nam-ruc-ro?cinemaId=1003&amp;sessionId=257130" class="showtimes-list ng-binding">17:30</a></galaxy-buy-ticket>
                                             <!-- end ngRepeat: show in bundle.sessions -->
                                             <galaxy-buy-ticket ng-repeat="show in bundle.sessions" ng-model="show" ng-movie-slug="movies[currentMovie].slug" class="ng-pristine ng-untouched ng-valid ng-scope ng-isolate-scope ng-not-empty"><a href="/book-ticket/thang-nam-ruc-ro?cinemaId=1003&amp;sessionId=257129" class="showtimes-list ng-binding">19:40</a></galaxy-buy-ticket>
                                             <!-- end ngRepeat: show in bundle.sessions -->
                                             <galaxy-buy-ticket ng-repeat="show in bundle.sessions" ng-model="show" ng-movie-slug="movies[currentMovie].slug" class="ng-pristine ng-untouched ng-valid ng-scope ng-isolate-scope ng-not-empty"><a href="/book-ticket/thang-nam-ruc-ro?cinemaId=1003&amp;sessionId=257121" class="showtimes-list ng-binding">21:10</a></galaxy-buy-ticket>
                                             <!-- end ngRepeat: show in bundle.sessions -->
                                          </div>
                                       </div>
                                       <!-- end ngRepeat: bundle in date.bundles -->
                                    </div>
                                 </li>
                                 <!-- end ngRepeat: date in dates -->
                              </ul>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div id="tab_showcinema" class="tab-pane showtimes">
                     <div class="row showtimes-group animated fadeInUp">
                        <div class="col-md-4">
                           <div class="panel panel-default">
                              <div class="panel-heading">
                                 <h4 class="panel-title">Chọn rạp</h4>
                              </div>
                              <galaxy-loading ng-show="!items.cinemas" class="ng-hide">
                                 <p class="loading-content"><i class="fa fa-pulse fa-spinner"></i></p>
                              </galaxy-loading>
                              <ul class="list-group">
                                 <!-- ngRepeat: cinema in items.cinemas |orderBy:"km" -->
                                 <li ng-repeat="cinema in items.cinemas |orderBy:&quot;km&quot;" ng-click="getMovieByCinema(cinema,$index)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentCinema==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Galaxy Nguyễn Du</p>
                                             <!-- ngIf: cinema.km -->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: cinema in items.cinemas |orderBy:"km" -->
                                 <li ng-repeat="cinema in items.cinemas |orderBy:&quot;km&quot;" ng-click="getMovieByCinema(cinema,$index)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentCinema==$index}" class="list-group-item active">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Galaxy Tân Bình</p>
                                             <!-- ngIf: cinema.km -->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: cinema in items.cinemas |orderBy:"km" -->
                                 <li ng-repeat="cinema in items.cinemas |orderBy:&quot;km&quot;" ng-click="getMovieByCinema(cinema,$index)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentCinema==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Galaxy Kinh Dương Vương</p>
                                             <!-- ngIf: cinema.km -->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: cinema in items.cinemas |orderBy:"km" -->
                                 <li ng-repeat="cinema in items.cinemas |orderBy:&quot;km&quot;" ng-click="getMovieByCinema(cinema,$index)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentCinema==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Galaxy Quang Trung</p>
                                             <!-- ngIf: cinema.km -->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: cinema in items.cinemas |orderBy:"km" -->
                                 <li ng-repeat="cinema in items.cinemas |orderBy:&quot;km&quot;" ng-click="getMovieByCinema(cinema,$index)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentCinema==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Galaxy Bến Tre</p>
                                             <!-- ngIf: cinema.km -->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: cinema in items.cinemas |orderBy:"km" -->
                                 <li ng-repeat="cinema in items.cinemas |orderBy:&quot;km&quot;" ng-click="getMovieByCinema(cinema,$index)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentCinema==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Galaxy Mipec Long Biên</p>
                                             <!-- ngIf: cinema.km -->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: cinema in items.cinemas |orderBy:"km" -->
                                 <li ng-repeat="cinema in items.cinemas |orderBy:&quot;km&quot;" ng-click="getMovieByCinema(cinema,$index)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentCinema==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Galaxy Đà Nẵng</p>
                                             <!-- ngIf: cinema.km -->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: cinema in items.cinemas |orderBy:"km" -->
                                 <li ng-repeat="cinema in items.cinemas |orderBy:&quot;km&quot;" ng-click="getMovieByCinema(cinema,$index)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentCinema==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Galaxy Cà Mau</p>
                                             <!-- ngIf: cinema.km -->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: cinema in items.cinemas |orderBy:"km" -->
                                 <li ng-repeat="cinema in items.cinemas |orderBy:&quot;km&quot;" ng-click="getMovieByCinema(cinema,$index)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentCinema==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Galaxy Phạm Văn Chí</p>
                                             <!-- ngIf: cinema.km -->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: cinema in items.cinemas |orderBy:"km" -->
                                 <li ng-repeat="cinema in items.cinemas |orderBy:&quot;km&quot;" ng-click="getMovieByCinema(cinema,$index)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentCinema==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Galaxy Trung Chánh</p>
                                             <!-- ngIf: cinema.km -->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: cinema in items.cinemas |orderBy:"km" -->
                                 <li ng-repeat="cinema in items.cinemas |orderBy:&quot;km&quot;" ng-click="getMovieByCinema(cinema,$index)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentCinema==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Galaxy Huỳnh Tấn Phát</p>
                                             <!-- ngIf: cinema.km -->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: cinema in items.cinemas |orderBy:"km" -->
                                 <li ng-repeat="cinema in items.cinemas |orderBy:&quot;km&quot;" ng-click="getMovieByCinema(cinema,$index)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentCinema==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Galaxy Vinh</p>
                                             <!-- ngIf: cinema.km -->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: cinema in items.cinemas |orderBy:"km" -->
                                 <li ng-repeat="cinema in items.cinemas |orderBy:&quot;km&quot;" ng-click="getMovieByCinema(cinema,$index)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentCinema==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Galaxy Hải Phòng</p>
                                             <!-- ngIf: cinema.km -->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: cinema in items.cinemas |orderBy:"km" -->
                              </ul>
                           </div>
                        </div>
                        <div class="col-md-4">
                           <div class="panel panel-default">
                              <div class="panel-heading">
                                 <h4 class="panel-title">Chọn phim</h4>
                              </div>
                              <galaxy-loading ng-show="onLoadItem" class="ng-hide">
                                 <p class="loading-content"><i class="fa fa-pulse fa-spinner"></i></p>
                              </galaxy-loading>
                              <ul class="list-group">
                                 <!-- ngIf: movies.length == 0 && !onLoadItem --><!-- ngRepeat: movie in movies -->
                                 <li ng-repeat="movie in movies" ng-click="setDates(movie.dates,$index,&quot;movie&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentMovie==$index}" class="list-group-item movie active">
                                       <div class="showtimes-row">
                                          <img src="resources/media/2017/12/22/thang5rucro_1513914094543.jpg"><i class="icon-c16"></i>
                                          <div class="title-movie">
                                             <p class="ng-binding">THÁNG NĂM RỰC RỠ</p>
                                             <!--p.vn 5 anh em siêu nhân-->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: movie in movies -->
                                 <li ng-repeat="movie in movies" ng-click="setDates(movie.dates,$index,&quot;movie&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentMovie==$index}" class="list-group-item movie">
                                       <div class="showtimes-row">
                                          <img src="resources/media/2018/2/5/450_1517808107383.jpg"><i class=""></i>
                                          <div class="title-movie">
                                             <p class="ng-binding">GOODBYE CHRISTOPHER ROBIN</p>
                                             <!--p.vn 5 anh em siêu nhân-->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: movie in movies -->
                                 <li ng-repeat="movie in movies" ng-click="setDates(movie.dates,$index,&quot;movie&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentMovie==$index}" class="list-group-item movie">
                                       <div class="showtimes-row">
                                          <img src="resources/media/2018/2/21/tomb-r2_1519191376263.jpg"><i class="icon-c16"></i>
                                          <div class="title-movie">
                                             <p class="ng-binding">TOMB RAIDER</p>
                                             <!--p.vn 5 anh em siêu nhân-->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: movie in movies -->
                                 <li ng-repeat="movie in movies" ng-click="setDates(movie.dates,$index,&quot;movie&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentMovie==$index}" class="list-group-item movie">
                                       <div class="showtimes-row">
                                          <img src="resources/media/2018/1/16/awt-_1516092287588.jpg"><i class=""></i>
                                          <div class="title-movie">
                                             <p class="ng-binding">A WRINKLE IN TIME</p>
                                             <!--p.vn 5 anh em siêu nhân-->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: movie in movies -->
                                 <li ng-repeat="movie in movies" ng-click="setDates(movie.dates,$index,&quot;movie&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentMovie==$index}" class="list-group-item movie">
                                       <div class="showtimes-row">
                                          <img src="resources/media/2018/1/30/bd450_1517308848293.jpg"><i class="icon-c16"></i>
                                          <div class="title-movie">
                                             <p class="ng-binding">BLACK PANTHER</p>
                                             <!--p.vn 5 anh em siêu nhân-->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: movie in movies -->
                                 <li ng-repeat="movie in movies" ng-click="setDates(movie.dates,$index,&quot;movie&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentMovie==$index}" class="list-group-item movie">
                                       <div class="showtimes-row">
                                          <img src="resources/media/2018/3/12/07-talltales-la-2_1520834077955.jpg"><i class=""></i>
                                          <div class="title-movie">
                                             <p class="ng-binding">TALL TALES</p>
                                             <!--p.vn 5 anh em siêu nhân-->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: movie in movies -->
                                 <li ng-repeat="movie in movies" ng-click="setDates(movie.dates,$index,&quot;movie&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentMovie==$index}" class="list-group-item movie">
                                       <div class="showtimes-row">
                                          <img src="resources/media/2018/2/22/l450_1519284822863.jpg"><i class="icon-c18"></i>
                                          <div class="title-movie">
                                             <p class="ng-binding">THE LODGERS</p>
                                             <!--p.vn 5 anh em siêu nhân-->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: movie in movies -->
                                 <li ng-repeat="movie in movies" ng-click="setDates(movie.dates,$index,&quot;movie&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentMovie==$index}" class="list-group-item movie">
                                       <div class="showtimes-row">
                                          <img src="resources/media/2018/3/12/girl3_1520837777974.jpg"><i class="icon-c16"></i>
                                          <div class="title-movie">
                                             <p class="ng-binding">GIRL 2</p>
                                             <!--p.vn 5 anh em siêu nhân-->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: movie in movies -->
                                 <li ng-repeat="movie in movies" ng-click="setDates(movie.dates,$index,&quot;movie&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentMovie==$index}" class="list-group-item movie">
                                       <div class="showtimes-row">
                                          <img src="resources/media/2018/3/7/354_1520396384749.jpg"><i class="icon-c18"></i>
                                          <div class="title-movie">
                                             <p class="ng-binding">OPERATION RED SEA</p>
                                             <!--p.vn 5 anh em siêu nhân-->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: movie in movies -->
                                 <li ng-repeat="movie in movies" ng-click="setDates(movie.dates,$index,&quot;movie&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentMovie==$index}" class="list-group-item movie">
                                       <div class="showtimes-row">
                                          <img src="resources/media/2018/3/6/55_1520306367586.jpg"><i class="icon-c16"></i>
                                          <div class="title-movie">
                                             <p class="ng-binding">WINCHESTER</p>
                                             <!--p.vn 5 anh em siêu nhân-->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: movie in movies -->
                                 <li ng-repeat="movie in movies" ng-click="setDates(movie.dates,$index,&quot;movie&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentMovie==$index}" class="list-group-item movie">
                                       <div class="showtimes-row">
                                          <img src="resources/media/2018/2/5/450_1517804806339.jpg"><i class="icon-c16"></i>
                                          <div class="title-movie">
                                             <p class="ng-binding">THREE BILLBOARDS OUTSIDE EBBING, MISSOURI</p>
                                             <!--p.vn 5 anh em siêu nhân-->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: movie in movies -->
                                 <li ng-repeat="movie in movies" ng-click="setDates(movie.dates,$index,&quot;movie&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentMovie==$index}" class="list-group-item movie">
                                       <div class="showtimes-row">
                                          <img src="resources/media/2018/3/2/detective-k34_1519975450042.jpg"><i class="icon-c16"></i>
                                          <div class="title-movie">
                                             <p class="ng-binding">DETECTIVE K: SECRET OF THE LIVING DEAD</p>
                                             <!--p.vn 5 anh em siêu nhân-->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: movie in movies -->
                                 <li ng-repeat="movie in movies" ng-click="setDates(movie.dates,$index,&quot;movie&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentMovie==$index}" class="list-group-item movie">
                                       <div class="showtimes-row">
                                          <img src="resources/media/2018/3/6/43543_1520328878766.jpg"><i class="icon-c18"></i>
                                          <div class="title-movie">
                                             <p class="ng-binding">GAME NIGHT</p>
                                             <!--p.vn 5 anh em siêu nhân-->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: movie in movies -->
                                 <li ng-repeat="movie in movies" ng-click="setDates(movie.dates,$index,&quot;movie&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentMovie==$index}" class="list-group-item movie">
                                       <div class="showtimes-row">
                                          <img src="resources/media/2018/1/23/ho-nhat-duy-2_1516676326357.jpg"><i class="icon-c16"></i>
                                          <div class="title-movie">
                                             <p class="ng-binding">798MƯỜI</p>
                                             <!--p.vn 5 anh em siêu nhân-->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: movie in movies -->
                                 <li ng-repeat="movie in movies" ng-click="setDates(movie.dates,$index,&quot;movie&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentMovie==$index}" class="list-group-item movie">
                                       <div class="showtimes-row">
                                          <img src="resources/media/2018/1/16/sssn_1516069937317.jpg"><i class="icon-c13"></i>
                                          <div class="title-movie">
                                             <p class="ng-binding">SIÊU SAO SIÊU NGỐ</p>
                                             <!--p.vn 5 anh em siêu nhân-->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: movie in movies -->
                                 <li ng-repeat="movie in movies" ng-click="setDates(movie.dates,$index,&quot;movie&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentMovie==$index}" class="list-group-item movie">
                                       <div class="showtimes-row">
                                          <img src="resources/media/2018/1/17/250x175_1516162983452.jpg"><i class=""></i>
                                          <div class="title-movie">
                                             <p class="ng-binding">PETER RABBIT</p>
                                             <!--p.vn 5 anh em siêu nhân-->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: movie in movies -->
                              </ul>
                           </div>
                        </div>
                        <div class="col-md-4">
                           <div class="panel panel-default">
                              <div class="panel-heading">
                                 <h4 class="panel-title">Chọn suất</h4>
                              </div>
                              <ul class="list-group">
                                 <!-- ngIf: dates.length == 0  --><!-- ngRepeat: date in dates -->
                                 <li ng-repeat="date in dates" class="list-group-item ng-scope">
                                    <div class="showtimes-row">
                                       <p class="ng-binding">Thứ năm, 22/03/2018</p>
                                       <!-- ngRepeat: bundle in date.bundles -->
                                       <div ng-repeat="bundle in date.bundles" class="showtimes-item ng-scope">
                                          <label class="ng-binding">2D -&nbsp;
                                          Phụ đề</label>
                                          <div class="showtimes-list-wrapper">
                                             <!-- ngRepeat: show in bundle.sessions -->
                                             <galaxy-buy-ticket ng-repeat="show in bundle.sessions" ng-model="show" ng-movie-slug="movies[currentMovie].slug" class="ng-pristine ng-untouched ng-valid ng-scope ng-isolate-scope ng-not-empty"><a href="/book-ticket/thang-nam-ruc-ro?cinemaId=1003&amp;sessionId=257089" class="showtimes-list ng-binding">09:00</a></galaxy-buy-ticket>
                                             <!-- end ngRepeat: show in bundle.sessions -->
                                             <galaxy-buy-ticket ng-repeat="show in bundle.sessions" ng-model="show" ng-movie-slug="movies[currentMovie].slug" class="ng-pristine ng-untouched ng-valid ng-scope ng-isolate-scope ng-not-empty"><a href="/book-ticket/thang-nam-ruc-ro?cinemaId=1003&amp;sessionId=257026" class="showtimes-list ng-binding">10:15</a></galaxy-buy-ticket>
                                             <!-- end ngRepeat: show in bundle.sessions -->
                                             <galaxy-buy-ticket ng-repeat="show in bundle.sessions" ng-model="show" ng-movie-slug="movies[currentMovie].slug" class="ng-pristine ng-untouched ng-valid ng-scope ng-isolate-scope ng-not-empty"><a href="/book-ticket/thang-nam-ruc-ro?cinemaId=1003&amp;sessionId=257090" class="showtimes-list ng-binding">11:10</a></galaxy-buy-ticket>
                                             <!-- end ngRepeat: show in bundle.sessions -->
                                             <galaxy-buy-ticket ng-repeat="show in bundle.sessions" ng-model="show" ng-movie-slug="movies[currentMovie].slug" class="ng-pristine ng-untouched ng-valid ng-scope ng-isolate-scope ng-not-empty"><a href="/book-ticket/thang-nam-ruc-ro?cinemaId=1003&amp;sessionId=257019" class="showtimes-list ng-binding">12:25</a></galaxy-buy-ticket>
                                             <!-- end ngRepeat: show in bundle.sessions -->
                                             <galaxy-buy-ticket ng-repeat="show in bundle.sessions" ng-model="show" ng-movie-slug="movies[currentMovie].slug" class="ng-pristine ng-untouched ng-valid ng-scope ng-isolate-scope ng-not-empty"><a href="/book-ticket/thang-nam-ruc-ro?cinemaId=1003&amp;sessionId=257091" class="showtimes-list ng-binding">13:20</a></galaxy-buy-ticket>
                                             <!-- end ngRepeat: show in bundle.sessions -->
                                             <galaxy-buy-ticket ng-repeat="show in bundle.sessions" ng-model="show" ng-movie-slug="movies[currentMovie].slug" class="ng-pristine ng-untouched ng-valid ng-scope ng-isolate-scope ng-not-empty"><a href="/book-ticket/thang-nam-ruc-ro?cinemaId=1003&amp;sessionId=257042" class="showtimes-list ng-binding">14:35</a></galaxy-buy-ticket>
                                             <!-- end ngRepeat: show in bundle.sessions -->
                                             <galaxy-buy-ticket ng-repeat="show in bundle.sessions" ng-model="show" ng-movie-slug="movies[currentMovie].slug" class="ng-pristine ng-untouched ng-valid ng-scope ng-isolate-scope ng-not-empty"><a href="/book-ticket/thang-nam-ruc-ro?cinemaId=1003&amp;sessionId=257092" class="showtimes-list ng-binding">15:30</a></galaxy-buy-ticket>
                                             <!-- end ngRepeat: show in bundle.sessions -->
                                             <galaxy-buy-ticket ng-repeat="show in bundle.sessions" ng-model="show" ng-movie-slug="movies[currentMovie].slug" class="ng-pristine ng-untouched ng-valid ng-scope ng-isolate-scope ng-not-empty"><a href="/book-ticket/thang-nam-ruc-ro?cinemaId=1003&amp;sessionId=257020" class="showtimes-list ng-binding">16:45</a></galaxy-buy-ticket>
                                             <!-- end ngRepeat: show in bundle.sessions -->
                                             <galaxy-buy-ticket ng-repeat="show in bundle.sessions" ng-model="show" ng-movie-slug="movies[currentMovie].slug" class="ng-pristine ng-untouched ng-valid ng-scope ng-isolate-scope ng-not-empty"><a href="/book-ticket/thang-nam-ruc-ro?cinemaId=1003&amp;sessionId=257093" class="showtimes-list ng-binding">17:40</a></galaxy-buy-ticket>
                                             <!-- end ngRepeat: show in bundle.sessions -->
                                             <galaxy-buy-ticket ng-repeat="show in bundle.sessions" ng-model="show" ng-movie-slug="movies[currentMovie].slug" class="ng-pristine ng-untouched ng-valid ng-scope ng-isolate-scope ng-not-empty"><a href="/book-ticket/thang-nam-ruc-ro?cinemaId=1003&amp;sessionId=257100" class="showtimes-list ng-binding">19:00</a></galaxy-buy-ticket>
                                             <!-- end ngRepeat: show in bundle.sessions -->
                                             <galaxy-buy-ticket ng-repeat="show in bundle.sessions" ng-model="show" ng-movie-slug="movies[currentMovie].slug" class="ng-pristine ng-untouched ng-valid ng-scope ng-isolate-scope ng-not-empty"><a href="/book-ticket/thang-nam-ruc-ro?cinemaId=1003&amp;sessionId=257094" class="showtimes-list ng-binding">19:50</a></galaxy-buy-ticket>
                                             <!-- end ngRepeat: show in bundle.sessions -->
                                             <galaxy-buy-ticket ng-repeat="show in bundle.sessions" ng-model="show" ng-movie-slug="movies[currentMovie].slug" class="ng-pristine ng-untouched ng-valid ng-scope ng-isolate-scope ng-not-empty"><a href="/book-ticket/thang-nam-ruc-ro?cinemaId=1003&amp;sessionId=257115" class="showtimes-list ng-binding">21:30</a></galaxy-buy-ticket>
                                             <!-- end ngRepeat: show in bundle.sessions -->
                                          </div>
                                       </div>
                                       <!-- end ngRepeat: bundle in date.bundles -->
                                    </div>
                                 </li>
                                 <!-- end ngRepeat: date in dates -->
                                 <li ng-repeat="date in dates" class="list-group-item ng-scope">
                                    <div class="showtimes-row">
                                       <p class="ng-binding">Thứ sáu, 23/03/2018</p>
                                       <!-- ngRepeat: bundle in date.bundles -->
                                       <div ng-repeat="bundle in date.bundles" class="showtimes-item ng-scope">
                                          <label class="ng-binding">2D -&nbsp;
                                          Phụ đề</label>
                                          <div class="showtimes-list-wrapper">
                                             <!-- ngRepeat: show in bundle.sessions -->
                                             <galaxy-buy-ticket ng-repeat="show in bundle.sessions" ng-model="show" ng-movie-slug="movies[currentMovie].slug" class="ng-pristine ng-untouched ng-valid ng-scope ng-isolate-scope ng-not-empty"><a href="/book-ticket/thang-nam-ruc-ro?cinemaId=1003&amp;sessionId=257147" class="showtimes-list ng-binding">09:15</a></galaxy-buy-ticket>
                                             <!-- end ngRepeat: show in bundle.sessions -->
                                             <galaxy-buy-ticket ng-repeat="show in bundle.sessions" ng-model="show" ng-movie-slug="movies[currentMovie].slug" class="ng-pristine ng-untouched ng-valid ng-scope ng-isolate-scope ng-not-empty"><a href="/book-ticket/thang-nam-ruc-ro?cinemaId=1003&amp;sessionId=257133" class="showtimes-list ng-binding">11:00</a></galaxy-buy-ticket>
                                             <!-- end ngRepeat: show in bundle.sessions -->
                                             <galaxy-buy-ticket ng-repeat="show in bundle.sessions" ng-model="show" ng-movie-slug="movies[currentMovie].slug" class="ng-pristine ng-untouched ng-valid ng-scope ng-isolate-scope ng-not-empty"><a href="/book-ticket/thang-nam-ruc-ro?cinemaId=1003&amp;sessionId=257132" class="showtimes-list ng-binding">13:10</a></galaxy-buy-ticket>
                                             <!-- end ngRepeat: show in bundle.sessions -->
                                             <galaxy-buy-ticket ng-repeat="show in bundle.sessions" ng-model="show" ng-movie-slug="movies[currentMovie].slug" class="ng-pristine ng-untouched ng-valid ng-scope ng-isolate-scope ng-not-empty"><a href="/book-ticket/thang-nam-ruc-ro?cinemaId=1003&amp;sessionId=257131" class="showtimes-list ng-binding">15:20</a></galaxy-buy-ticket>
                                             <!-- end ngRepeat: show in bundle.sessions -->
                                             <galaxy-buy-ticket ng-repeat="show in bundle.sessions" ng-model="show" ng-movie-slug="movies[currentMovie].slug" class="ng-pristine ng-untouched ng-valid ng-scope ng-isolate-scope ng-not-empty"><a href="/book-ticket/thang-nam-ruc-ro?cinemaId=1003&amp;sessionId=257130" class="showtimes-list ng-binding">17:30</a></galaxy-buy-ticket>
                                             <!-- end ngRepeat: show in bundle.sessions -->
                                             <galaxy-buy-ticket ng-repeat="show in bundle.sessions" ng-model="show" ng-movie-slug="movies[currentMovie].slug" class="ng-pristine ng-untouched ng-valid ng-scope ng-isolate-scope ng-not-empty"><a href="/book-ticket/thang-nam-ruc-ro?cinemaId=1003&amp;sessionId=257129" class="showtimes-list ng-binding">19:40</a></galaxy-buy-ticket>
                                             <!-- end ngRepeat: show in bundle.sessions -->
                                             <galaxy-buy-ticket ng-repeat="show in bundle.sessions" ng-model="show" ng-movie-slug="movies[currentMovie].slug" class="ng-pristine ng-untouched ng-valid ng-scope ng-isolate-scope ng-not-empty"><a href="/book-ticket/thang-nam-ruc-ro?cinemaId=1003&amp;sessionId=257121" class="showtimes-list ng-binding">21:10</a></galaxy-buy-ticket>
                                             <!-- end ngRepeat: show in bundle.sessions -->
                                          </div>
                                       </div>
                                       <!-- end ngRepeat: bundle in date.bundles -->
                                    </div>
                                 </li>
                                 <!-- end ngRepeat: date in dates -->
                              </ul>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div id="tab_showdate" class="tab-pane showtimes">
                     <div class="row showtimes-group animated fadeInUp">
                        <div class="col-md-4">
                           <div class="panel panel-default">
                              <div class="panel-heading">
                                 <h4 class="panel-title">Chọn ngày</h4>
                              </div>
                              <galaxy-loading ng-show="!items.dates" class="ng-hide">
                                 <p class="loading-content"><i class="fa fa-pulse fa-spinner"></i></p>
                              </galaxy-loading>
                              <ul class="list-group">
                                 <!-- ngRepeat: date in items.dates -->
                                 <li ng-repeat="date in items.dates" ng-click="getCinemaByDate(date,$index)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentDate==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Thứ năm, 22/03/2018</p>
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: date in items.dates -->
                                 <li ng-repeat="date in items.dates" ng-click="getCinemaByDate(date,$index)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentDate==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Thứ sáu, 23/03/2018</p>
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: date in items.dates -->
                                 <li ng-repeat="date in items.dates" ng-click="getCinemaByDate(date,$index)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentDate==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Thứ bảy, 24/03/2018</p>
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: date in items.dates -->
                                 <li ng-repeat="date in items.dates" ng-click="getCinemaByDate(date,$index)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentDate==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Chủ nhật, 25/03/2018</p>
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: date in items.dates -->
                                 <li ng-repeat="date in items.dates" ng-click="getCinemaByDate(date,$index)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentDate==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Thứ hai, 26/03/2018</p>
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: date in items.dates -->
                              </ul>
                           </div>
                        </div>
                        <div class="col-md-4">
                           <div class="panel panel-default">
                              <div class="panel-heading">
                                 <h4 class="panel-title">Chọn rạp</h4>
                              </div>
                              <galaxy-loading ng-show="onLoadItem" class="ng-hide">
                                 <p class="loading-content"><i class="fa fa-pulse fa-spinner"></i></p>
                              </galaxy-loading>
                              <ul class="list-group">
                                 <!-- ngIf: cinemas.length == 0 && !onLoadItem --><!-- ngRepeat: cinema in cinemas |orderBy:"km" -->
                                 <li ng-repeat="cinema in cinemas |orderBy:&quot;km&quot;" ng-click="setDates(cinema.movies,$index,&quot;cinema&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentCinema==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Galaxy Nguyễn Du</p>
                                             <!-- ngIf: cinema.km -->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: cinema in cinemas |orderBy:"km" -->
                                 <li ng-repeat="cinema in cinemas |orderBy:&quot;km&quot;" ng-click="setDates(cinema.movies,$index,&quot;cinema&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentCinema==$index}" class="list-group-item active">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Galaxy Tân Bình</p>
                                             <!-- ngIf: cinema.km -->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: cinema in cinemas |orderBy:"km" -->
                                 <li ng-repeat="cinema in cinemas |orderBy:&quot;km&quot;" ng-click="setDates(cinema.movies,$index,&quot;cinema&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentCinema==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Galaxy Kinh Dương Vương</p>
                                             <!-- ngIf: cinema.km -->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: cinema in cinemas |orderBy:"km" -->
                                 <li ng-repeat="cinema in cinemas |orderBy:&quot;km&quot;" ng-click="setDates(cinema.movies,$index,&quot;cinema&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentCinema==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Galaxy Quang Trung</p>
                                             <!-- ngIf: cinema.km -->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: cinema in cinemas |orderBy:"km" -->
                                 <li ng-repeat="cinema in cinemas |orderBy:&quot;km&quot;" ng-click="setDates(cinema.movies,$index,&quot;cinema&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentCinema==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Galaxy Bến Tre</p>
                                             <!-- ngIf: cinema.km -->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: cinema in cinemas |orderBy:"km" -->
                                 <li ng-repeat="cinema in cinemas |orderBy:&quot;km&quot;" ng-click="setDates(cinema.movies,$index,&quot;cinema&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentCinema==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Galaxy Mipec Long Biên</p>
                                             <!-- ngIf: cinema.km -->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: cinema in cinemas |orderBy:"km" -->
                                 <li ng-repeat="cinema in cinemas |orderBy:&quot;km&quot;" ng-click="setDates(cinema.movies,$index,&quot;cinema&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentCinema==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Galaxy Đà Nẵng</p>
                                             <!-- ngIf: cinema.km -->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: cinema in cinemas |orderBy:"km" -->
                                 <li ng-repeat="cinema in cinemas |orderBy:&quot;km&quot;" ng-click="setDates(cinema.movies,$index,&quot;cinema&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentCinema==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Galaxy Cà Mau</p>
                                             <!-- ngIf: cinema.km -->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: cinema in cinemas |orderBy:"km" -->
                                 <li ng-repeat="cinema in cinemas |orderBy:&quot;km&quot;" ng-click="setDates(cinema.movies,$index,&quot;cinema&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentCinema==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Galaxy Phạm Văn Chí</p>
                                             <!-- ngIf: cinema.km -->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: cinema in cinemas |orderBy:"km" -->
                                 <li ng-repeat="cinema in cinemas |orderBy:&quot;km&quot;" ng-click="setDates(cinema.movies,$index,&quot;cinema&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentCinema==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Galaxy Trung Chánh</p>
                                             <!-- ngIf: cinema.km -->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: cinema in cinemas |orderBy:"km" -->
                                 <li ng-repeat="cinema in cinemas |orderBy:&quot;km&quot;" ng-click="setDates(cinema.movies,$index,&quot;cinema&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentCinema==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Galaxy Huỳnh Tấn Phát</p>
                                             <!-- ngIf: cinema.km -->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: cinema in cinemas |orderBy:"km" -->
                                 <li ng-repeat="cinema in cinemas |orderBy:&quot;km&quot;" ng-click="setDates(cinema.movies,$index,&quot;cinema&quot;)" class="ng-scope">
                                    <a href="javascript:;" ng-class="{&quot;active&quot;:currentCinema==$index}" class="list-group-item">
                                       <div class="showtimes-row">
                                          <div class="title-movie">
                                             <p class="ng-binding">Galaxy Hải Phòng</p>
                                             <!-- ngIf: cinema.km -->
                                          </div>
                                       </div>
                                    </a>
                                 </li>
                                 <!-- end ngRepeat: cinema in cinemas |orderBy:"km" -->
                              </ul>
                           </div>
                        </div>
                        <div class="col-md-4">
                           <div class="panel panel-default">
                              <div class="panel-heading">
                                 <h4 class="panel-title">Chọn suất</h4>
                              </div>
                              <ul class="list-group">
                                 <!-- ngIf: dates.length == 0  --><!-- ngRepeat: movie in dates --><!-- ngIf: movie.dates.length>0 --><!-- end ngRepeat: movie in dates --><!-- ngIf: movie.dates.length>0 --><!-- end ngRepeat: movie in dates -->
                              </ul>
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