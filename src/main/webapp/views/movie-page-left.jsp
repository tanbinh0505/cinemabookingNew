<!doctype html>
<html>
<head>
	<!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>AMovie - Movie page</title>
        <meta name="description" content="A Template by Gozha.net">
        <meta name="keywords" content="HTML, CSS, JavaScript">
        <meta name="author" content="Gozha.net">
    
    <!-- Mobile Specific Metas-->
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="telephone=no" name="format-detection">
    
    <!-- Fonts -->
        <!-- Font awesome - icon font -->
        <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
        <!-- Roboto -->
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,700' rel='stylesheet' type='text/css'>
    
    <!-- Stylesheets -->
        <!-- jQuery UI --> 
        <link href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css" rel="stylesheet">

        <!-- Mobile menu -->
        <link href="resources/css/gozha-nav.css" rel="stylesheet" />
        <!-- Select -->
        <link href="resources/css/external/jquery.selectbox.css" rel="stylesheet" />
        <!-- Swiper slider -->
        <link href="resources/css/external/idangerous.swiper.css" rel="stylesheet" />
        <!-- Magnific-popup -->
        <link href="resources/css/external/magnific-popup.css" rel="stylesheet" />

    
        <!-- Custom -->
        <link href="resources/css/style.css?v=1" rel="stylesheet" />

        <!-- Modernizr --> 
        <script src="resources/js/external/modernizr.custom.js"></script>  
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries --> 
    <!--[if lt IE 9]> 
    	<script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script> 
		<script src="http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.3.0/respond.js"></script>		
    <![endif]-->
</head> 

<body>
    <div class="wrapper">
        <!-- Banner -->
          <div class="banner-top">
            <img alt='top banner' src="resources/images/banners/bg-404.png">
        </div>

       <c:url var="userUrl" value="/user"/>
        <jsp:include page="./templates/header.jsp"></jsp:include>
        
        <!-- Search bar -->
        <div class="search-wrapper">
            <div class="container container--add">
                <form id='search-form' method='get' class="search">
                    <input type="text" class="search__field" placeholder="Search">
                    <select name="sorting_item" id="search-sort" class="search__sort" tabindex="0">
                        <option value="1" selected='selected'>By title</option>
                        <option value="2">By year</option>
                        <option value="3">By producer</option>
                        <option value="4">By title</option>
                        <option value="5">By year</option>
                    </select>
                    <button type='submit' class="btn btn-md btn--danger search__button">search a movie</button>
                </form>
            </div>
        </div>
        
        <!-- Main content -->
        <section class="container">
            <div class="col-sm-8 col-md-9">
                <div class="movie">
                    <h2 class="page-heading">The Hobbit: An Unexpected Journey</h2>
                    
                    <div class="movie__info">
                        <div class="col-sm-6 col-md-4 movie-mobile">
                            <div class="movie__images">
                                <span class="movie__rating">5.0</span>
                                <img alt='' src="http://placehold.it/526x773">
                            </div>
                            <div class="movie__rate">Your vote: <div id='score' class="score"></div></div>
                        </div>

                        <div class="col-sm-6 col-md-8">
                            <p class="movie__time">169 min</p>

                            <p class="movie__option"><strong>Country: </strong><a href="#">New Zeland</a>, <a href="#">USA</a></p>
                            <p class="movie__option"><strong>Year: </strong><a href="#">2012</a></p>
                            <p class="movie__option"><strong>Category: </strong><a href="#">Adventure</a>, <a href="#">Fantazy</a></p>
                            <p class="movie__option"><strong>Release date: </strong>December 12, 2012</p>
                            <p class="movie__option"><strong>Director: </strong><a href="#">Peter Jackson</a></p>
                            <p class="movie__option"><strong>Actors: </strong><a href="#">Martin Freeman</a>, <a href="#">Ian McKellen</a>, <a href="#">Richard Armitage</a>, <a href="#">Ken Stott</a>, <a href="#">Graham McTavish</a>, <a href="#">Cate Blanchett</a>, <a href="#">Hugo Weaving</a>, <a href="#">Ian Holm</a>, <a href="#">Elijah Wood</a> <a href="#">...</a></p>
                            <p class="movie__option"><strong>Age restriction: </strong><a href="#">13</a></p>
                            <p class="movie__option"><strong>Box office: </strong><a href="#">$1 017 003 568</a></p>

                            <a href="#" class="comment-link">Comments:  15</a>

                            <div class="movie__btns">
                                <a href="#" class="btn btn-md btn--warning">book a ticket for this movie</a>
                                <a href="#" class="watchlist">Add to watchlist</a>
                            </div>

                            <div class="share">
                                <span class="share__marker">Share: </span>
                                <div class="addthis_toolbox addthis_default_style ">
                                    <a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>
                                    <a class="addthis_button_tweet"></a>
                                    <a class="addthis_button_google_plusone" g:plusone:size="medium"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="clearfix"></div>
                    
                    <h2 class="page-heading">The plot</h2>

                    <p class="movie__describe">Bilbo Baggins is swept into a quest to reclaim the lost Dwarf Kingdom of Erebor from the fearsome dragon Smaug. Approached out of the blue by the wizard Gandalf the Grey, Bilbo finds himself joining a company of thirteen dwarves led by the legendary warrior, Thorin Oakenshield. Their journey will take them into the Wild; through treacherous lands swarming with Goblins and Orcs, deadly Wargs and Giant Spiders, Shapeshifters and Sorcerers. Although their goal lies to the East and the wastelands of the Lonely Mountain first they must escape the goblin tunnels, where Bilbo meets the creature that will change his life forever ... Gollum. Here, alone with Gollum, on the shores of an underground lake, the unassuming Bilbo Baggins not only discovers depths of guile and courage that surprise even him, he also gains possession of Gollum's "precious" ring that holds unexpected and useful qualities ... A simple, gold ring that is tied to the fate of all Middle-earth in ways Bilbo cannot begin to ... </p>

                    <h2 class="page-heading">photos &amp; videos</h2>
                    
                    <div class="movie__media">
                        <div class="movie__media-switch">
                            <a href="#" class="watchlist list--photo" data-filter='media-photo'>234 photos</a>
                            <a href="#" class="watchlist list--video" data-filter='media-video'>10 videos</a>
                        </div>

                        <div class="swiper-container">
                          <div class="swiper-wrapper">
                              <!--First Slide-->
                              <div class="swiper-slide media-video">
                                <a href='https://www.youtube.com/watch?v=Y5AehBA3IsE' class="movie__media-item ">
                                     <img alt='' src="http://placehold.it/400x240">
                                </a>
                              </div>
                              
                              <!--Second Slide-->
                              <div class="swiper-slide media-video">
                                <a href='https://www.youtube.com/watch?v=Kb3ykVYvT4U' class="movie__media-item">
                                    <img alt='' src="http://placehold.it/400x240">
                                </a>
                              </div>
                              
                              <!--Third Slide-->
                              <div class="swiper-slide media-photo"> 
                                    <a href='http://placehold.it/2100x1250' class="movie__media-item">
                                        <img alt='' src="http://placehold.it/400x240">
                                     </a>
                              </div>

                              <!--Four Slide-->
                              <div class="swiper-slide media-photo"> 
                                    <a href='http://placehold.it/2100x1250' class="movie__media-item">
                                        <img alt='' src="http://placehold.it/400x240">
                                     </a>
                              </div>

                              <!--Slide-->
                              <div class="swiper-slide media-photo"> 
                                    <a href='http://placehold.it/2100x1250' class="movie__media-item">
                                        <img alt='' src="http://placehold.it/400x240">
                                     </a>
                              </div>

                              <!--Slide-->
                              <div class="swiper-slide media-photo"> 
                                    <a href='http://placehold.it/2100x1250' class="movie__media-item">
                                        <img alt='' src="http://placehold.it/400x240">
                                     </a>
                              </div>

                              <!--First Slide-->
                              <div class="swiper-slide media-video">
                                <a href='https://www.youtube.com/watch?v=Y5AehBA3IsE' class="movie__media-item ">
                                     <img alt='' src="http://placehold.it/400x240">
                                </a>
                              </div>
                              
                              <!--Second Slide-->
                              <div class="swiper-slide media-video">
                                <a href='https://www.youtube.com/watch?v=Kb3ykVYvT4U' class="movie__media-item">
                                    <img alt='' src="http://placehold.it/400x240">
                                </a>
                              </div>

                              <!--Slide-->
                              <div class="swiper-slide media-photo"> 
                                    <a href='http://placehold.it/2100x1250' class="movie__media-item">
                                        <img alt='' src="http://placehold.it/400x240">
                                     </a>
                              </div>

                              <!--Slide-->
                              <div class="swiper-slide media-photo"> 
                                    <a href='http://placehold.it/2100x1250' class="movie__media-item">
                                        <img alt='' src="http://placehold.it/400x240">
                                     </a>
                              </div>
                        
                          </div>
                        </div>

                    </div>

                </div>

                <h2 class="page-heading">showtime &amp; tickets</h2>
                <div class="choose-container">
                    <form id='select' class="select" method='get'>
                          <select name="select_item" id="select-sort" class="select__sort" tabindex="0">
                            <option value="1" selected='selected'>London</option>
                            <option value="2">New York</option>
                            <option value="3">Paris</option>
                            <option value="4">Berlin</option>
                            <option value="5">Moscow</option>
                            <option value="3">Minsk</option>
                            <option value="4">Warsawa</option>
                            <option value="5">Kiev</option>
                        </select>
                    </form>

                    <div class="datepicker">
                      <span class="datepicker__marker"><i class="fa fa-calendar"></i>Date</span>
                      <input type="text" id="datepicker" value='03/10/2014' class="datepicker__input">
                    </div>

                    <a href="#" id="map-switch" class="watchlist watchlist--map"><span class="show-map">Show cinemas on map</span><span  class="show-time">Show cinema time table</span></a>
                    
                    <div class="clearfix"></div>

                    <div class="time-select">
                        <div class="time-select__group group--first">
                            <div class="col-sm-4">
                                <p class="time-select__place">Cineworld</p>
                            </div>
                            <ul class="col-sm-8 items-wrap">
                                <li class="time-select__item" data-time='09:40'>09:40</li>
                                <li class="time-select__item" data-time='13:45'>13:45</li>
                                <li class="time-select__item active" data-time='15:45'>15:45</li>
                                <li class="time-select__item" data-time='19:50'>19:50</li>
                                <li class="time-select__item" data-time='21:50'>21:50</li>
                            </ul>
                        </div>

                        <div class="time-select__group">
                            <div class="col-sm-4">
                                <p class="time-select__place">Empire</p>
                            </div>
                            <ul class="col-sm-8 items-wrap">
                                <li class="time-select__item" data-time='10:45'>10:45</li>
                                <li class="time-select__item" data-time='16:00'>16:00</li>
                                <li class="time-select__item" data-time='19:00'>19:00</li>
                                <li class="time-select__item" data-time='21:15'>21:15</li>
                                <li class="time-select__item" data-time='23:00'>23:00</li>
                            </ul>
                        </div>

                        <div class="time-select__group">
                            <div class="col-sm-4">
                                <p class="time-select__place">Curzon</p>
                            </div>
                            <ul class="col-sm-8 items-wrap">
                                <li class="time-select__item" data-time='09:00'>09:00</li>
                                <li class="time-select__item" data-time='11:00'>11:00</li>
                                <li class="time-select__item" data-time='13:00'>13:00</li>
                                <li class="time-select__item" data-time='15:00'>15:00</li>
                                <li class="time-select__item" data-time='17:00'>17:00</li>
                                <li class="time-select__item" data-time='19:0'>19:00</li>
                                <li class="time-select__item" data-time='21:0'>21:00</li>
                                <li class="time-select__item" data-time='23:0'>23:00</li>
                                <li class="time-select__item" data-time='01:0'>01:00</li>
                            </ul>
                        </div>

                        <div class="time-select__group">
                            <div class="col-sm-4">
                                <p class="time-select__place">Odeon</p>
                            </div>
                            <ul class="col-sm-8 items-wrap">
                                <li class="time-select__item" data-time='10:45'>10:45</li>
                                <li class="time-select__item" data-time='16:00'>16:00</li>
                                <li class="time-select__item" data-time='19:00'>19:00</li>
                                <li class="time-select__item" data-time='21:15'>21:15</li>
                                <li class="time-select__item" data-time='23:00'>23:00</li>
                            </ul>
                        </div>

                        <div class="time-select__group group--last">
                            <div class="col-sm-4">
                                <p class="time-select__place">Picturehouse</p>
                            </div>
                            <ul class="col-sm-8 items-wrap">
                                <li class="time-select__item" data-time='17:45'>17:45</li>
                                <li class="time-select__item" data-time='21:30'>21:30</li>
                                <li class="time-select__item" data-time='02:20'>02:20</li>
                            </ul>
                        </div>
                    </div>
                    
                    <!-- hiden maps with multiple locator-->
                    <div  class="map">
                        <div id='cimenas-map'></div> 
                    </div>

                    <h2 class="page-heading">comments (15)</h2>

                    <div class="comment-wrapper">
                        <form id="comment-form" class="comment-form" method='post'>
                            <textarea class="comment-form__text" placeholder='Add you comment here'></textarea>
                            <label class="comment-form__info">250 characters left</label>
                            <button type='submit' class="btn btn-md btn--danger comment-form__btn">add comment</button>
                        </form>

                        <div class="comment-sets">

                        <div class="comment">
                            <div class="comment__images">
                                <img alt='' src="http://placehold.it/50x50">
                            </div>

                            <a href='#' class="comment__author"><span class="social-used fa fa-facebook"></span>Roberta Inetti</a>
                            <p class="comment__date">today | 03:04</p>
                            <p class="comment__message">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae enim sollicitudin, euismod erat id, fringilla lacus. Cras ut rutrum lectus. Etiam ante justo, volutpat at viverra a, mattis in velit. Morbi molestie rhoncus enim, vitae sagittis dolor tristique et.</p>
                            <a href='#' class="comment__reply">Reply</a>
                        </div>

                        <div class="comment">
                            <div class="comment__images">
                                <img alt='' src="http://placehold.it/50x50">
                            </div>

                            <a href='#' class="comment__author"><span class="social-used fa fa-vk"></span>Olia Gozha</a>
                            <p class="comment__date">22.10.2013 | 14:40</p>
                            <p class="comment__message">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae enim sollicitudin, euismod erat id, fringilla lacus. Cras ut rutrum lectus. Etiam ante justo, volutpat at viverra a, mattis in velit. Morbi molestie rhoncus enim, vitae sagittis dolor tristique et.</p>
                            <a href='#' class="comment__reply">Reply</a>
                        </div>

                        <div class="comment comment--answer">
                            <div class="comment__images">
                                <img alt='' src="http://placehold.it/50x50">
                            </div>

                            <a href='#' class="comment__author"><span class="social-used fa fa-vk"></span>Dmitriy Pustovalov</a>
                            <p class="comment__date">today | 10:19</p>
                            <p class="comment__message">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae enim sollicitudin, euismod erat id, fringilla lacus. Cras ut rutrum lectus. Etiam ante justo, volutpat at viverra a, mattis in velit. Morbi molestie rhoncus enim, vitae sagittis dolor tristique et.</p>
                            <a href='#' class="comment__reply">Reply</a>
                        </div>

                        <div class="comment comment--last">
                            <div class="comment__images">
                                <img alt='' src="http://placehold.it/50x50">
                            </div>

                            <a href='#' class="comment__author"><span class="social-used fa fa-facebook"></span>Sia Andrews</a>
                            <p class="comment__date"> 22.10.2013 | 12:31 </p>
                            <p class="comment__message">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae enim sollicitudin, euismod erat id, fringilla lacus. Cras ut rutrum lectus. Etiam ante justo, volutpat at viverra a, mattis in velit. Morbi molestie rhoncus enim, vitae sagittis dolor tristique et.</p>
                            <a href='#' class="comment__reply">Reply</a>
                        </div>

                        <div id='hide-comments' class="hide-comments">
                            <div class="comment">
                                <div class="comment__images">
                                    <img alt='' src="http://placehold.it/50x50">
                                </div>

                                <a href='#' class="comment__author"><span class="social-used fa fa-facebook"></span>Roberta Inetti</a>
                                <p class="comment__date">today | 03:04</p>
                                <p class="comment__message">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae enim sollicitudin, euismod erat id, fringilla lacus. Cras ut rutrum lectus. Etiam ante justo, volutpat at viverra a, mattis in velit. Morbi molestie rhoncus enim, vitae sagittis dolor tristique et.</p>
                                <a href='#' class="comment__reply">Reply</a>
                            </div>

                            <div class="comment">
                                <div class="comment__images">
                                    <img alt='' src="http://placehold.it/50x50">
                                </div>

                                <a href='#' class="comment__author"><span class="social-used fa fa-vk"></span>Olia Gozha</a>
                                <p class="comment__date">22.10.2013 | 14:40</p>
                                <p class="comment__message">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae enim sollicitudin, euismod erat id, fringilla lacus. Cras ut rutrum lectus. Etiam ante justo, volutpat at viverra a, mattis in velit. Morbi molestie rhoncus enim, vitae sagittis dolor tristique et.</p>
                                <a href='#' class="comment__reply">Reply</a>
                            </div>
                        </div>

                        <div class="comment-more">
                            <a href="#" class="watchlist">Show more comments</a>
                        </div>

                    </div>
                    </div>
                </div>
            </div>

            <aside class="col-sm-4 col-md-3">
                <div class="sitebar">
                    <div class="banner-wrap">
                        <img alt='banner' src="http://placehold.it/500x500">
                    </div>

                     <div class="banner-wrap">
                        <img alt='banner' src="http://placehold.it/500x500">
                    </div>

                     <div class="banner-wrap banner-wrap--last">
                        <img alt='banner' src="http://placehold.it/500x500">
                    </div>

                    <div class="promo marginb-sm">
                      <div class="promo__head">A.Movie app</div>
                      <div class="promo__describe">for all smartphones<br> and tablets</div>
                      <div class="promo__content">
                          <ul>
                              <li class="store-variant"><a href="#"><img alt='' src="resources/images/apple-store.svg"></a></li>
                              <li class="store-variant"><a href="#"><img alt='' src="resources/images/google-play.svg"></a></li>
                              <li class="store-variant"><a href="#"><img alt='' src="resources/images/windows-store.svg"></a></li>
                          </ul>
                      </div>
                  </div>

                    <div class="category category--discuss category--count marginb-sm mobile-category ls-cat">
                        <h3 class="category__title">the Most <br><span class="title-edition">discussed posts</span></h3>
                        <ol>
                            <li><a href="#" class="category__item">Gravity</a></li>
                            <li><a href="#" class="category__item">The Counselor</a></li>
                            <li><a href="#" class="category__item">Bad Grandpa</a></li>
                            <li><a href="#" class="category__item">Blue Is the Warmest Color</a></li>
                            <li><a href="#" class="category__item">Rush</a></li>
                            <li><a href="#" class="category__item">Captain Phillips</a></li>
                            <li><a href="#" class="category__item">Escape Plan</a></li>
                            <li><a href="#" class="category__item">Cloudy with a Chance of Meatballs 2</a></li>
                            <li><a href="#" class="category__item">Prisoners</a></li>
                            <li><a href="#" class="category__item">The Fifth Estate</a></li>
                        </ol>
                    </div>

                    <div class="category category--cooming category--count marginb-sm mobile-category rs-cat">
                        <h3 class="category__title">coming soon<br><span class="title-edition">movies</span></h3>
                        <ol>
                            <li><a href="#" class="category__item">Ender's Game</a></li>
                            <li><a href="#" class="category__item">About Time</a></li>
                            <li><a href="#" class="category__item">Last Vegas</a></li>
                            <li><a href="#" class="category__item">Free Birds</a></li>
                            <li><a href="#" class="category__item">The Wolf of Wall Street</a></li>
                            <li><a href="#" class="category__item">The Best Man Holiday</a></li>
                            <li><a href="#" class="category__item">The Book Thief</a></li>
                            <li><a href="#" class="category__item">The Hunger Games: Catching Fire</a></li>
                            <li><a href="#" class="category__item">Delivery Man</a></li>
                            <li><a href="#" class="category__item">Nebraska</a></li>
                        </ol>
                    </div>
                    
                   

                </div>
            </aside>

        </section>
        
        <div class="clearfix"></div>

         <jsp:include page="./templates/footer.jsp"></jsp:include>
    </div>

    <!-- open/close -->
        <div class="overlay overlay-hugeinc">
            
            <section class="container">

                <div class="col-sm-4 col-sm-offset-4">
                    <button type="button" class="overlay-close">Close</button>
                    <form id="login-form" class="login" method='get' novalidate=''>
                        <p class="login__title">sign in <br><span class="login-edition">welcome to A.Movie</span></p>

                        <div class="social social--colored">
                                <a href='#' class="social__variant fa fa-facebook"></a>
                                <a href='#' class="social__variant fa fa-twitter"></a>
                                <a href='#' class="social__variant fa fa-tumblr"></a>
                        </div>

                        <p class="login__tracker">or</p>
                        
                        <div class="field-wrap">
                        <input type='email' placeholder='Email' name='user-email' class="login__input">
                        <input type='password' placeholder='Password' name='user-password' class="login__input">

                        <input type='checkbox' id='#informed' class='login__check styled'>
                        <label for='#informed' class='login__check-info'>remember me</label>
                         </div>
                        
                        <div class="login__control">
                            <button type='submit' class="btn btn-md btn--warning btn--wider">sign in</button>
                            <a href="#" class="login__tracker form__tracker">Forgot password?</a>
                        </div>
                    </form>
                </div>

            </section>
        </div>

	<!-- JavaScript-->
        <!-- jQuery 1.9.1--> 
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="resources/js/external/jquery-1.10.1.min.js"><\/script>')</script>
        <!-- Migrate --> 
        <script src="resources/js/external/jquery-migrate-1.2.1.min.js"></script>
        <!-- jQuery UI -->
        <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
        <!-- Bootstrap 3--> 
        <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js"></script>

        <!-- Mobile menu -->
        <script src="resources/js/jquery.mobile.menu.js"></script>
         <!-- Select -->
        <script src="resources/js/external/jquery.selectbox-0.2.min.js"></script>

        <!-- Stars rate -->
        <script src="resources/js/external/jquery.raty.js"></script>
        <!-- Swiper slider -->
        <script src="resources/js/external/idangerous.swiper.min.js"></script>
        <!-- Magnific-popup -->
        <script src="resources/js/external/jquery.magnific-popup.min.js"></script>  

        <!--*** Google map  ***-->
        <script src="resources/https://maps.google.com/maps/api/js?sensor=true"></script> 
        <!--*** Google map infobox  ***-->
        <script src="resources/js/external/infobox.js"></script> 

        <!-- Share buttons -->
        <script type="text/javascript">var addthis_config = {"data_track_addressbar":true};</script>
        <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-525fd5e9061e7ef0"></script>

        <!-- Form element -->
        <script src="resources/js/external/form-element.js"></script>
        <!-- Form validation -->
        <script src="resources/js/form.js"></script>

        <!-- Custom -->
        <script src="resources/js/custom.js"></script>
		
		<script type="text/javascript">
            $(document).ready(function() {
                init_MoviePage();
            });
		</script>

</body>
</html>
