<!doctype html>
<html>
<head>
	<!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>AMovie - Trailers</title>
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

        <!-- Mobile menu -->
        <link href="resources/css/gozha-nav.css" rel="stylesheet" />
        <!-- Select -->
        <link href="resources/css/external/jquery.selectbox.css" rel="stylesheet" />
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
            <div class="col-sm-12">
                <h2 class="page-heading">trailers</h2>

                <div class="tags-area wrap-select">
                    <div class="tags tags--unmarked">
                        <span class="tags__label">Sorted by:</span>
                            <ul>
                                <li class="item-wrap"><a href="#" class="tags__item">name</a></li>
                                <li class="item-wrap"><a href="#" class="tags__item item-active">popularity</a></li>
                                <li class="item-wrap"><a href="#" class="tags__item">date</a></li>
                            </ul>
                    </div>
                </div>

                <div class="trailer-wrapper">
                    <!-- Films trailers -->
                    <div class="trailer-block row">
                        <div class="col-sm-4 col-md-3">
                            <div class="trailer">
                                <p class="trailer__name">Thor: The Dark World</p>
                                <p class="trailer__number">12 trailers</p>
                            </div>
                        </div>

                        <div class="col-sm-4 col-md-3">
                            <a href='https://www.youtube.com/watch?v=Kb3ykVYvT4U' class="trailer-sample">
                                <img alt='' src="http://placehold.it/524x320">
                            </a>
                        </div>

                        <div class="col-sm-4 col-md-3">
                            <a href='https://www.youtube.com/watch?v=Y5AehBA3IsE' class="trailer-sample">
                                <img alt='' src="http://placehold.it/524x320">
                            </a>
                        </div>

                        <div class="col-md-3 hidden-sm">
                            <a href='https://www.youtube.com/watch?v=Kb3ykVYvT4U' class="trailer-sample">
                                <img  alt='' src="http://placehold.it/524x320">
                            </a>
                        </div>

                        <a href="#" class="trailer-btn">
                            <span class="btn-circled"></span>
                        </a>

                        <div class="hidden-content">
                            <div class="col-sm-4 col-md-3">
                                <a href='https://www.youtube.com/watch?v=Kb3ykVYvT4U' class="trailer-sample">
                                    <img alt='' src="http://placehold.it/524x320">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-3">
                                <a href='https://www.youtube.com/watch?v=Y5AehBA3IsE' class="trailer-sample">
                                    <img alt='' src="http://placehold.it/524x320">
                                </a>
                            </div>

                            <div class="col-md-3 hidden-sm">
                                <a href='https://www.youtube.com/watch?v=Y5AehBA3IsE' class="trailer-sample">
                                    <img  alt='' src="http://placehold.it/524x320">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-3">
                                <a href='https://www.youtube.com/watch?v=Kb3ykVYvT4U' class="trailer-sample">
                                    <img alt='' src="http://placehold.it/524x320">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-3">
                                <a href='https://www.youtube.com/watch?v=Kb3ykVYvT4U' class="trailer-sample">
                                    <img alt='' src="http://placehold.it/524x320">
                                </a>
                            </div>
                        </div>

                    </div>
                    <!--end films trailers-->


                    <!-- Films trailers -->
                    <div class="trailer-block row">
                        <div class="col-sm-4 col-md-3">
                            <div class="trailer">
                                <p class="trailer__name">The Book Thief</p>
                                <p class="trailer__number">4 trailers</p>
                            </div>
                        </div>

                        <div class="col-sm-4 col-md-3">
                            <a href='https://www.youtube.com/watch?v=Kb3ykVYvT4U' class="trailer-sample">
                                <img alt='' src="http://placehold.it/524x320">
                            </a>
                        </div>

                        <div class="col-sm-4 col-md-3">
                            <a href='https://www.youtube.com/watch?v=Kb3ykVYvT4U' class="trailer-sample">
                                <img alt='' src="http://placehold.it/524x320">
                            </a>
                        </div>

                        <div class="col-md-3 hidden-sm">
                            <a href='https://www.youtube.com/watch?v=Y5AehBA3IsE' class="trailer-sample">
                                <img  alt='' src="http://placehold.it/524x320">
                            </a>
                        </div>

                        <a href="#" class="trailer-btn">
                            <span class="btn-circled"></span>
                        </a>

                        <div class="hidden-content">
                            <div class="col-sm-4 col-md-3">
                                <a href='https://www.youtube.com/watch?v=Y5AehBA3IsE' class="trailer-sample">
                                    <img alt='' src="http://placehold.it/524x320">
                                </a>
                            </div>
                        </div>
                    </div>

                    <!--end films trailers-->

                    <!-- Films trailers -->
                    <div class="trailer-block trailer-block--short row">
                        <div class="col-sm-4 col-md-3">
                            <div class="trailer">
                                <p class="trailer__name">How I Live Now</p>
                                <p class="trailer__number">2 trailers</p>
                            </div>
                        </div>

                        <div class="col-sm-4 col-md-3">
                            <a href='https://www.youtube.com/watch?v=Y5AehBA3IsE' class="trailer-sample">
                                <img alt='' src="http://placehold.it/524x320">
                            </a>
                        </div>

                        <div class="col-sm-4 col-md-3">
                            <a href='https://www.youtube.com/watch?v=Kb3ykVYvT4U' class="trailer-sample">
                                <img alt='' src="http://placehold.it/524x320">
                            </a>
                        </div>
                    
                    </div>

                    <!--end films trailers-->

                    <!-- Films trailers -->
                    <div class="trailer-block row">
                        <div class="col-sm-4 col-md-3">
                            <div class="trailer">
                                <p class="trailer__name">Ender's Game</p>
                                <p class="trailer__number">9 trailers</p>
                            </div>
                        </div>

                        <div class="col-sm-4 col-md-3">
                            <a href='https://www.youtube.com/watch?v=Kb3ykVYvT4U' class="trailer-sample">
                                <img alt='' src="http://placehold.it/524x320">
                            </a>
                        </div>

                        <div class="col-sm-4 col-md-3">
                            <a href='https://www.youtube.com/watch?v=Y5AehBA3IsE' class="trailer-sample">
                                <img alt='' src="http://placehold.it/524x320">
                            </a>
                        </div>

                        <div class="col-md-3 hidden-sm">
                            <a href='https://www.youtube.com/watch?v=Y5AehBA3IsE' class="trailer-sample">
                                <img  alt='' src="http://placehold.it/524x320">
                            </a>
                        </div>

                        <a href="#" class="trailer-btn">
                            <span class="btn-circled"></span>
                        </a>

                        <div class="hidden-content">
                            <div class="col-sm-4 col-md-3">
                                <a href='https://www.youtube.com/watch?v=Kb3ykVYvT4U' class="trailer-sample">
                                    <img alt='' src="http://placehold.it/524x320">
                                </a>
                            </div>

                            <div class="col-sm-4 col-md-3">
                                <a href='https://www.youtube.com/watch?v=Kb3ykVYvT4U' class="trailer-sample">
                                    <img alt='' src="http://placehold.it/524x320">
                                </a>
                            </div>

                            <div class="col-md-3 hidden-sm">
                                <a href='https://www.youtube.com/watch?v=Y5AehBA3IsE' class="trailer-sample">
                                    <img  alt='' src="http://placehold.it/524x320">
                                </a>
                            </div>
                        </div>
                    </div>

                    <!--end films trailers-->

                    <!-- Films trailers -->
                    <div class="trailer-block row">
                        <div class="col-sm-4 col-md-3">
                            <div class="trailer">
                                <p class="trailer__name">Last Vegas</p>
                                <p class="trailer__number">4 trailers</p>
                            </div>
                        </div>

                        <div class="col-sm-4 col-md-3">
                            <a href='https://www.youtube.com/watch?v=Y5AehBA3IsE' class="trailer-sample">
                                <img alt='' src="http://placehold.it/524x320">
                            </a>
                        </div>

                        <div class="col-sm-4 col-md-3">
                            <a href='https://www.youtube.com/watch?v=Kb3ykVYvT4U' class="trailer-sample">
                                <img alt='' src="http://placehold.it/524x320">
                            </a>
                        </div>

                        <div class="col-md-3 hidden-sm">
                            <a href='https://www.youtube.com/watch?v=Kb3ykVYvT4U' class="trailer-sample">
                                <img  alt='' src="http://placehold.it/524x320">
                            </a>
                        </div>

                        <a href="#" class="trailer-btn">
                            <span class="btn-circled"></span>
                        </a>

                        <div class="hidden-content">
                            <div class="col-sm-4 col-md-3">
                                <a href='https://www.youtube.com/watch?v=Kb3ykVYvT4U' class="trailer-sample">
                                    <img alt='' src="http://placehold.it/524x320">
                                </a>
                            </div>
                        </div>
                    </div>

                    <!--end films trailers-->

                </div>

                <div class="pagination paginatioon--full">
                        <a href='#' class="pagination__prev">prev</a>
                        <a href='#' class="pagination__next">next</a>
                </div>

            </div>
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
        <!-- Bootstrap 3--> 
        <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js"></script>

        <!-- Mobile menu -->
        <script src="resources/js/jquery.mobile.menu.js"></script>
         <!-- Select -->
        <script src="resources/js/external/jquery.selectbox-0.2.min.js"></script>
        <!-- Magnific-popup -->
        <script src="resources/js/external/jquery.magnific-popup.min.js"></script>

        <!-- Form element -->
        <script src="resources/js/external/form-element.js"></script>
        <!-- Form validation -->
        <script src="resources/js/form.js"></script>

        <!-- Custom -->
        <script src="resources/js/custom.js"></script> 
		
		<script type="text/javascript">
            $(document).ready(function() {
                init_Trailer();
            });
		</script>

</body>
</html>
