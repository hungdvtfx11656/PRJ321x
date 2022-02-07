package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

	@RequestMapping(value="/login.html")
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response) {
		String action = request.getParameter("action");
		if (action != null && action.equals("formsubmit")) {
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			if (username != null && password != null) {
				if (username.equalsIgnoreCase("admin") && password.equals("admin")) {
					return new ModelAndView("home", "username", username);
				} else {
					return new ModelAndView("login", "alert_warning", "Username or password is invalid");
				}
			}
			return new ModelAndView("login", "alert_warning", "Please enter username and password");
		}
		return new ModelAndView("login");
	}
	
	@RequestMapping(value="/logout.html")
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) {
		return new ModelAndView("home", "username", null);
	}
	
	@RequestMapping(value="/home.html")
	public ModelAndView home(HttpServletRequest request, HttpServletResponse response) {
		return new ModelAndView("home");
	}
	
}
