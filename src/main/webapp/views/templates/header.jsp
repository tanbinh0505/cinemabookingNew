<%@page import="com.green.cinemabooking.util.SecurityUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>


        <!-- Header section -->
        <header class="header-wrapper">
            <div class="container">
                <!-- Logo link-->
               <a href='home' class="logo">
                    <img alt='logo' src="resources/images/logo.png">
                </a>
                
                <!-- Main website navigation-->
                <nav id="navigation-box">
                    <!-- Toggle for mobile menu mode -->
                    <a href="#" id="navigation-toggle">
                        <span class="menu-icon">
                            <span class="icon-toggle" role="button" aria-label="Toggle Navigation">
                              <span class="lines"></span>
                            </span>
                        </span>
                    </a>
                    
                    <!-- Link navigation -->
                    <ul id="navigation">
                        <li>
                            <span class="sub-nav-toggle plus"></span>
                            <a href="#">Pages</a>
                            <ul>
                                <li class="menu__nav-item"><a href="movie-page-left">Single movie (rigth sidebar)</a></li>
                               <!--  <li class="menu__nav-item"><a href="movie-page-right">Single movie (left sidebar)</a></li>
                                <li class="menu__nav-item"><a href="movie-page-full">Single movie (full widht)</a></li>
                                <li class="menu__nav-item"><a href="movie-list-left">Movies list (rigth sidebar)</a></li>
                                <li class="menu__nav-item"><a href="movie-list-right">Movies list (left sidebar)</a></li> -->
                                <li class="menu__nav-item"><a href="movie-list-full">Movies list (full widht)</a></li>
                             <!--    <li class="menu__nav-item"><a href="single-cinema">Single cinema</a></li> -->
                                <li class="menu__nav-item"><a href="cinema-list">Cinemas list</a></li>
                                <li class="menu__nav-item"><a href="trailer">Trailers</a></li>
                              <!--   <li class="menu__nav-item"><a href="rates-left">Rates (rigth sidebar)</a></li>
                                <li class="menu__nav-item"><a href="rates-right">Rates (left sidebar)</a></li>
                                <li class="menu__nav-item"><a href="rates-full">Rates (full widht)</a></li>
                                <li class="menu__nav-item"><a href="offers">Offers</a></li> -->
                                <li class="menu__nav-item"><a href="contact">Contact us</a></li>
                              <!--   <li class="menu__nav-item"><a href="404">404 error</a></li>
                                <li class="menu__nav-item"><a href="coming-soon">Coming soon</a></li> -->
                                <li class="menu__nav-item"><a href="login">Login/Registration</a></li>
                            </ul>
                        </li>
                        <li>
                            <span class="sub-nav-toggle plus"></span>
                            <a href="page-elements">Features</a>
                            <ul>
                             <!--    <li class="menu__nav-item"><a href="typography">Typography</a></li>
                                <li class="menu__nav-item"><a href="page-elements">Shortcodes</a></li>
                                <li class="menu__nav-item"><a href="column">Columns</a></li>
                                <li class="menu__nav-item"><a href="icon-font">Icons</a></li> -->
                            </ul>
                        </li>
                        <li>
                            <span class="sub-nav-toggle plus"></span>
                            <a href="page-elements">Booking steps</a>
                            <ul>
                                <li class="menu__nav-item"><a href="book1">Booking step 1</a></li>
                                <li class="menu__nav-item"><a href="book2">Booking step 2</a></li>
                                <li class="menu__nav-item"><a href="book3-buy">Booking step 3 (buy)</a></li>
                                <li class="menu__nav-item"><a href="book3-reserve">Booking step 3 (reserve)</a></li>
                                <li class="menu__nav-item"><a href="book-final">Final ticket view</a></li>
                            </ul>
                        </li>
                        <li>
                            <span class="sub-nav-toggle plus"></span>
                            <a href="gallery-four">Gallery</a>
                            <ul>
                              <!--   <li class="menu__nav-item"><a href="gallery-four">4 col gallery</a></li>
                                <li class="menu__nav-item"><a href="gallery-three">3 col gallery</a></li>
                                <li class="menu__nav-item"><a href="gallery-two">2 col gallery</a></li> -->
                            </ul>
                        </li>
                        <li>
                            <span class="sub-nav-toggle plus"></span>
                            <a href="news-left">News</a>
                            <ul>
                             <!--    <li class="menu__nav-item"><a href="news-left">News (rigth sidebar)</a></li>
                                <li class="menu__nav-item"><a href="news-right">News (left sidebar)</a></li>
                                <li class="menu__nav-item"><a href="news-full">News (full widht)</a></li>
                                <li class="menu__nav-item"><a href="single-page-left">Single post (rigth sidebar)</a></li>
                                <li class="menu__nav-item"><a href="single-page-right">Single post (left sidebar)</a></li>
                                <li class="menu__nav-item"><a href="single-page-full">Single post (full widht)</a></li> -->
                            </ul>
                        </li>
                        <li>
                            <span class="sub-nav-toggle plus"></span>
                            <a href="#">Mega menu</a>
                               <ul class="mega-menu container">
                                    <li class="col-md-3 mega-menu__coloum">
                                        <h4 class="mega-menu__heading">Now in the cinema</h4>
                                         <ul class="mega-menu__list">
                                         <!--    <li class="mega-menu__nav-item"><a href="#">The Counselor</a></li>
                                            <li class="mega-menu__nav-item"><a href="#">Bad Grandpa</a></li>
                                            <li class="mega-menu__nav-item"><a href="#">Blue Is the Warmest Color</a></li>
                                            <li class="mega-menu__nav-item"><a href="#">Capital</a></li>
                                            <li class="mega-menu__nav-item"><a href="#">Spinning Plates</a></li>
                                            <li class="mega-menu__nav-item"><a href="#">Bastards</a></li> -->
                                          </ul>
                                      </li>
                                        
                                      <li class="col-md-3 mega-menu__coloum mega-menu__coloum--outheading">
                                          <ul class="mega-menu__list">
                                          <!--   <li class="mega-menu__nav-item"><a href="#">Gravity</a></li>
                                            <li class="mega-menu__nav-item"><a href="#">Captain Phillips</a></li>
                                            <li class="mega-menu__nav-item"><a href="#">Carrie</a></li>
                                            <li class="mega-menu__nav-item"><a href="#">Cloudy with a Chance of Meatballs 2</a></li> -->
                                          </ul>
                                      </li>
                                      
                                      <li class="col-md-3 mega-menu__coloum">
                                        <h4 class="mega-menu__heading">Ending soon</h4>
                                          <ul class="mega-menu__list">
                                       <!--      <li class="mega-menu__nav-item"><a href="#">Escape Plan</a></li>
                                            <li class="mega-menu__nav-item"><a href="#">Rush</a></li>
                                            <li class="mega-menu__nav-item"><a href="#">Prisoners</a></li>
                                            <li class="mega-menu__nav-item"><a href="#">Enough Said</a></li>
                                            <li class="mega-menu__nav-item"><a href="#">The Fifth Estate</a></li>
                                            <li class="mega-menu__nav-item"><a href="#">Runner Runner</a></li> -->
                                          </ul>
                                      </li>
                                    
                                      <li class="col-md-3 mega-menu__coloum mega-menu__coloum--outheading">
                                          <ul class="mega-menu__list">
                                            <li class="mega-menu__nav-item"><a href="#">Insidious: Chapter 2</a></li>
                                          </ul>
                                      </li>
                               </ul>
                        </li>
                    </ul>
                </nav>
                
                <!-- Additional header buttons / Auth and direct link to booking-->
                <div class="control-panel">
                    <a href="login" class="btn btn--sign login-window">Sign in</a>
                    <a href="" class="btn btn-md btn--warning btn--book login-window">Book a ticket</a>
                </div>

            </div>
        </header>