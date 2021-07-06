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
import com.dopamine.blessing.models.Donations;
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
	public String registerForm(@Valid @ModelAttribute("user") User user, Model model) {
		model.addAttribute("cities",City.Cities);	
		return "loginRegistration.jsp";
	}

	@PostMapping("/registration")
	public String registration(@Valid @ModelAttribute("user") User user, BindingResult result, Model model,HttpSession session) {
		// NEW
		userValidator.validate(user, result);
		if (result.hasErrors()) {
			model.addAttribute("cities",City.Cities);
			return "loginRegistration.jsp";
		}
//		userService.saveUserWithAdminRole(user);
		User currentUser = userService.saveWithUserRole(user);
		model.addAttribute("currentUser",currentUser);
		model.addAttribute("donationTypes",userService.findAllDonationTypes());
		session.setAttribute("userId", currentUser.getId());
		return "redirect:/";
	}

	@RequestMapping("/admin")
	public String adminPage(Principal principal, Model model) {
		String username = principal.getName();
		model.addAttribute("currentUser", userService.findByUsername(username));
		return "redirect:/createOrgenization";
	}

	@RequestMapping("/login")
	public String login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, Model model,@ModelAttribute("user") User user,HttpSession session) {
		if (error != null) {
			model.addAttribute("cities",City.Cities);
			model.addAttribute("errorMessage", "Invalid Credentials, Please try again.");
		}
		if (logout != null) {
			model.addAttribute("cities",City.Cities);
			model.addAttribute("logoutMessage", "Logout Successful!");
		}
		session.setAttribute("userId", user.getId());
		return "loginRegistration.jsp";

	}

	@RequestMapping(value = { "/", "/home" })
	public String home(Principal principal, Model model,@ModelAttribute("donation") Donations donation,HttpSession session) {
		String username = principal.getName();
		System.out.println(username);
		model.addAttribute("currentUserId", userService.findByUsername(username).getId());
//		model.addAttribute("allOrg",userService.findAllOrg());
//		System.out.println(userService.findAllOrg().get(0));
		model.addAttribute("donationTypes",userService.findAllDonationTypes());
//		System.out.println(userService.findByUsername(username).getId());
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
	
	@PostMapping("/donate")
	public String Donate(@Valid @ModelAttribute("donation") Donations donation, BindingResult result, Model model) {
		if (result.hasErrors()) {
			System.out.println(result.toString());
			return "homePage.jsp";
		}
		userService.createDonation(donation);
		return "homePage.jsp";
	}

}