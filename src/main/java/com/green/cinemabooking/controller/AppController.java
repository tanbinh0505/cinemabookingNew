package com.green.cinemabooking.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.rememberme.PersistentTokenBasedRememberMeServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.green.cinemabooking.util.SecurityUtil;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/")
//@SessionAttributes("roles")
public class AppController {
    @Autowired
    private PersistentTokenBasedRememberMeServices persistentTokenBasedRememberMeServices;

    @Autowired
    private AuthenticationTrustResolver authenticationTrustResolver;

    /**
     * This method handles Access-Denied redirect.
     */
    @RequestMapping(value = "/Access_Denied", method = RequestMethod.GET)
    public String accessDeniedPage(ModelMap model) {
        model.addAttribute("loggedinuser", SecurityUtil.getPrincipal());
        return "accessDenied";
    }

    /**
     * This method handles login GET requests.
     * If users is already logged-in and tries to goto login page again, will be redirected to list page.
     */
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginPage() {
        if (isCurrentAuthenticationAnonymous()) {
            return "login";
        } else {
            return "redirect:/home";
        }
    }
    
    @RequestMapping(value = "/movie-page-left", method = RequestMethod.GET)
    public String PageLeft() {
        if (isCurrentAuthenticationAnonymous()) {
            return "movie-page-left";
        } else {
            return "redirect:/home";
        }
    }
    @RequestMapping(value = "/movie-list-full", method = RequestMethod.GET)
    public String MovieFullPage() {
        if (isCurrentAuthenticationAnonymous()) {
            return "movie-list-full";
        } else {
            return "redirect:/home";
        }
    }
    @RequestMapping(value = "/book1", method = RequestMethod.GET)
    public String book1Page() {
        if (isCurrentAuthenticationAnonymous()) {
            return "book1";
        } else {
            return "redirect:/home";
        }
    }
    @RequestMapping(value = "/book2", method = RequestMethod.GET)
    public String book2Page() {
        if (isCurrentAuthenticationAnonymous()) {
            return "book2";
        } else {
            return "redirect:/home";
        }
    }
    @RequestMapping(value = "/book3", method = RequestMethod.GET)
    public String book3Page() {
        if (isCurrentAuthenticationAnonymous()) {
            return "book3";
        } else {
            return "redirect:/home";
        }
    }
    @RequestMapping(value = "/book3-buy", method = RequestMethod.GET)
    public String book3BuyPage() {
        if (isCurrentAuthenticationAnonymous()) {
            return "book3-buy";
        } else {
            return "redirect:/home";
        }
    }
    @RequestMapping(value = "/book3-reserve", method = RequestMethod.GET)
    public String book3ReservePage() {
        if (isCurrentAuthenticationAnonymous()) {
            return "book3-reserve";
        } else {
            return "redirect:/home";
        }
    }
    @RequestMapping(value = "/book-final", method = RequestMethod.GET)
    public String book3FinalPage() {
        if (isCurrentAuthenticationAnonymous()) {
            return "book-final";
        } else {
            return "redirect:/home";
        }
    }
    
    @RequestMapping(value = "/cinema-list", method = RequestMethod.GET)
    public String cinemalistPage() {
        if (isCurrentAuthenticationAnonymous()) {
            return "cinema-list";
        } else {
            return "redirect:/home";
        }
    }
    @RequestMapping(value = "/trailer", method = RequestMethod.GET)
    public String trailerPage() {
        if (isCurrentAuthenticationAnonymous()) {
            return "trailer";
        } else {
            return "redirect:/home";
        }
    }
    @RequestMapping(value = "/contact", method = RequestMethod.GET)
    public String contactPage() {
        if (isCurrentAuthenticationAnonymous()) {
            return "contact";
        } else {
            return "redirect:/home";
        }
    }
    

    /**
     * This method handles logout requests.
     * Toggle the handlers if you are RememberMe functionality is useless in your app.
     */
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null) {
            //new SecurityContextLogoutHandler().logout(request, response, auth);
            persistentTokenBasedRememberMeServices.logout(request, response, auth);
            SecurityContextHolder.getContext().setAuthentication(null);
        }
        return "redirect:/login?logout";
    }

    /**
     * This method returns true if users is already authenticated [logged-in], else false.
     */
    private boolean isCurrentAuthenticationAnonymous() {
        final Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        return authenticationTrustResolver.isAnonymous(authentication);
    }
}
