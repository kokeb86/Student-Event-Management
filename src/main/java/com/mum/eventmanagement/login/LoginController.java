package com.mum.eventmanagement.login;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(@RequestParam(required = false) String error, @RequestParam(required = false) String logout,
			Model model) {
		System.out.println("hallow ");

		if (error != null){
			model.addAttribute("error", "Your user name and password is invalid.");
			//all data must be eriased or removed 
			return "/user/loginReset";
		}
		if (logout != null)
			model.addAttribute("message", "You have been logged out successfully.");

		return "/login";
	}

	@RequestMapping("/logout")
	public String showLoggedout() {
		return "logout";
	}
}
