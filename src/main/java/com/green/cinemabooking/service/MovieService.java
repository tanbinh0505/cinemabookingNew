package com.green.cinemabooking.service;

import com.green.cinemabooking.dao.MovieDao;
import com.green.cinemabooking.dao.RoleDao;
import com.green.cinemabooking.entities.Movie;
import com.green.cinemabooking.entities.Role;
import com.green.cinemabooking.entities.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;

import javax.transaction.Transactional;

@Transactional
@Service
public class MovieService {
    @Autowired
    private MovieDao dao;
    
    @Autowired
    private RoleDao roleDao;

    @Autowired
    private PasswordEncoder passwordEncoder;

    public Movie findByMovieName(String movieName) {
        return findByMovieName(movieName);
    }
    

    public void updateMovie(String movieName, Movie mv) {
        Movie entity = dao.getByKey(movieName);
        if(entity!=null){
            entity.setMovie_name(mv.getMovie_name());
        }
    }

    public List<Movie> findAllMovies() {
        return dao.getAll();
    }

    public boolean isUserUnique(String movieName) {
        Movie mv = dao.getByKey(movieName);
        return mv == null;
    }

    public void deleteUser(String movieName) {
        Movie entity = dao.getByKey(movieName);
        if (entity != null) {
            dao.delete(entity);
        }
    }
    

}
