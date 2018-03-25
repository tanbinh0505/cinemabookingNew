package com.green.cinemabooking.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.green.cinemabooking.entities.User;
import com.green.cinemabooking.service.MovieService;
import com.green.cinemabooking.service.UserService;

@Controller
@RequestMapping("movie")
public class MovieController<Movie> {
	@Autowired
    ServletContext context;
	
	 @Autowired
	    private MovieService mvService;
	static final String IMG_FOLDER="D:\\ProjectGA\\ImageWeb";
	
	 @RequestMapping("/download/{fileName}")
	 public void downloader(HttpServletRequest request, HttpServletResponse response,
		        @PathVariable("fileName") String fileName) {
		        try {
		            File file = new File(IMG_FOLDER + File.separator + fileName);
		 
		            if (file.exists()) {
		                String mimeType = context.getMimeType(file.getPath());
		 
		                if (mimeType == null) {
		                    mimeType = "application/octet-stream";
		                }
		 
		                response.setContentType(mimeType);
		                response.setContentLength((int) file.length());
		 
		                OutputStream os = response.getOutputStream();
		                FileInputStream fis = new FileInputStream(file);
		                
		                FileCopyUtils.copy(fis, os);
		            } else {
		                System.out.println("Requested " + fileName + " file not found!!");
		            }
		        } catch (IOException e) {
		            System.out.println("Error:- " + e.getMessage());
		        }
		    }
	 
	 @RequestMapping(value = {"", "/list" }, method = RequestMethod.GET)
	    public ModelAndView listMovies() {
	        ModelAndView model = new ModelAndView();
	        model.setViewName("movie/list");

	        List<Movie> mv = (List<Movie>) mvService.findAllMovies();
	        model.addObject("movies", mv);
	        
	        return model;
	    }
	 
	 
}
