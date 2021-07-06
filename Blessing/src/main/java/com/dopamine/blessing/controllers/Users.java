package com.dopamine.blessing.controllers;

import java.security.Principal;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dopamine.blessing.mail.MimeMessage2;
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
	public String registration(@Valid @ModelAttribute("user") User user, BindingResult result, Model model) {
		// NEW
		userValidator.validate(user, result);
		if (result.hasErrors()) {
			model.addAttribute("cities",City.Cities);
			return "loginRegistration.jsp";
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
			@RequestParam(value = "logout", required = false) String logout, Model model,@ModelAttribute("user") User user) {
		if (error != null) {
			model.addAttribute("cities",City.Cities);
			model.addAttribute("errorMessage", "Invalid Credentials, Please try again.");
		}
		if (logout != null) {
			model.addAttribute("cities",City.Cities);
			model.addAttribute("logoutMessage", "Logout Successful!");
		}
		return "loginRegistration.jsp";
	}

	@RequestMapping(value = { "/", "/home" })
	public String home(Principal principal, Model model) {
		String username = principal.getName();
		System.out.println(username + "bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb");
		
		model.addAttribute("currentUser", userService.findByUsername(username));
		model.addAttribute("allOrg",userService.findAllOrg());
		//System.out.println(userService.findAllOrg().get(0));
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
	
	
	@RequestMapping("/list")
	public String list(Model model, Principal principal, @ModelAttribute("Donate") Donations donate){
		model.addAttribute("Donatins", userService.findAllDonations());
		String username= principal.getName();
		System.out.println(username);
		model.addAttribute("user", userService.findByUsername(username));
        return "DonationList.jsp";		
	}
	
//	@RequestMapping("/accept/{id}")
//	public String reg( @PathVariable Long id , @Valid @ModelAttribute("user") User user) {
//		userService.findByid(id);
////		String to = user.getEmail();
////		String to = "rahaf.hussari@axsos.me";
//		MimeMessage2 message = new MimeMessage2();
//		message.send(user.getEmail());
//		return "redirect:/home";
//	}
//	
	@RequestMapping("/accept/{id}")
	public String reg( @PathVariable Long id , @Valid @ModelAttribute("user") User user, Principal principal, @ModelAttribute("Donate") Donations donate) {
		userService.findByid(id);
		String username= principal.getName();
		User organization = userService.findByUsername(username);
		
		
//		String to = user.getEmail();
//		String to = "rahaf.hussari@axsos.me";
		MimeMessage2 message = new MimeMessage2();
		message.send(user.getEmail());
		return "redirect:/home";
	}
	


}