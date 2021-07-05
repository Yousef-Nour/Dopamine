package com.dopamine.blessing.controllers;

import java.security.Principal;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dopamine.blessing.models.City;
import com.dopamine.blessing.models.User;
import com.dopamine.blessing.services.UserService;
import com.dopamine.blessing.validator.UserValidator;

@Controller
public class Users {
	private UserService userService;
	private UserValidator userValidator;

	public Users(UserService userService, UserValidator userValidator) {
		this.userService = userService;
		this.userValidator = userValidator;
	}

	@RequestMapping("/registration")
	public String registerForm(@Valid @ModelAttribute("user") User user) {
		return "registrationPage.jsp";
	}

	@PostMapping("/registration")
	public String registration(@Valid @ModelAttribute("user") User user, BindingResult result, Model model) {
		// NEW
		userValidator.validate(user, result);
		if (result.hasErrors()) {
			return "registrationPage.jsp";
		}
//		userService.saveUserWithAdminRole(user);

		User currentUser = userService.saveWithUserRole(user);
		model.addAttribute("currentUser",currentUser);
		return "homePage.jsp";
	}

	@RequestMapping("/admin")
	public String adminPage(Principal principal, Model model) {
		String username = principal.getName();
		model.addAttribute("currentUser", userService.findByUsername(username));
		return "redirect:/createOrgenization";
	}

	@RequestMapping("/login")
	public String login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, Model model) {
		if (error != null) {
			model.addAttribute("errorMessage", "Invalid Credentials, Please try again.");
		}
		if (logout != null) {
			model.addAttribute("logoutMessage", "Logout Successful!");
		}
		return "loginPage.jsp";
	}

	@RequestMapping(value = { "/", "/home" })
	public String home(Principal principal, Model model) {
		String username = principal.getName();
		model.addAttribute("currentUser", userService.findByUsername(username));
		model.addAttribute("allOrg",userService.findAllOrg());
		System.out.println(userService.findAllOrg().get(0));
		return "homePage.jsp";
	}
	//logOUT
	@RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/"; 
    }
	//create organaization from admin
	@RequestMapping("/createOrgenization")
	public String adminPage(@Valid @ModelAttribute("organization") User organization,Model model) {
		model.addAttribute("cities", City.Cities);
		return "createOrganization.jsp";
	}

	@PostMapping("/createOrgenization")
	public String OrgRegistration(@Valid @ModelAttribute("organization") User organization, BindingResult result, Model model) {
		// NEW
		System.out.println("IAM HERE");
		userValidator.validate(organization, result);
		if (result.hasErrors()) {
			return "createOrganization.jsp";
		}
//		userService.saveUserWithAdminRole(user);
//
		userService.saveUserWithOrganizationRole(organization);
		return "homePage.jsp";
	}

}