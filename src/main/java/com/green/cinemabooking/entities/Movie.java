package com.green.cinemabooking.entities;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "movie")
public class Movie {
	

	@Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name = "movie_id", nullable = false)
	private String movieId;

    @Column(name = "movie_name", nullable = false)
	private String movieName;
	
	 @Column(name = "movie_status")
	private String movieStatus;
	 
	 @Column(name = "movie_views")
	private Double movieViews;

	



	public String getMovieStatus() {
		return movieStatus;
	}


	public void setMovieStatus(String movieStatus) {
		this.movieStatus = movieStatus;
	}


	public Double getMovieViews() {
		return movieViews;
	}


	public void setMovieViews(Double movieViews) {
		this.movieViews = movieViews;
	}


	public String getMovie_id() {
		return movieId;
	}


	public void setMovie_id(String movie_id) {
		movieId = movie_id;
	}


	public String getMovie_name() {
		return movieName;
	}


	public void setMovie_name(String movie_name) {
		movieName = movie_name;
	}


	public Movie(String movie_id, String movie_name) {
		movieId = movie_id;
		movieName = movie_name;
		
	}


	public Movie() {
		
	}


	

}
